#!/usr/bin/env node

const fs = require('fs-extra');
const path = require('path');
const { exec } = require('child_process');
const util = require('util');
const chalk = require('chalk');

const execAsync = util.promisify(exec);

/**
 * Package Publisher
 * Automatically versions and publishes packages after localization updates
 */

class PackagePublisher {
  constructor() {
    this.projectRoot = path.join(__dirname, '../..');
  }

  async publish() {
    console.log(chalk.blue('🚀 Starting package publishing...'));
    
    try {
      // Check if there are changes
      const hasChanges = await this.checkForChanges();
      
      if (!hasChanges) {
        console.log(chalk.yellow('⚠️  No changes detected, skipping publish'));
        return;
      }
      
      // Update version
      const newVersion = await this.updateVersion();
      
      // Generate Swift code
      await this.generateSwiftCode();
      
      // Build packages
      await this.buildPackages();
      
      // Test packages
      await this.testPackages();
      
      // Commit changes
      await this.commitChanges(newVersion);
      
      // Create git tag
      await this.createTag(newVersion);
      
      // Push to repository
      await this.pushChanges();
      
      console.log(chalk.green('✅ Package publishing completed!'));
      console.log(chalk.blue(`📦 New version: ${newVersion}`));
      console.log(chalk.gray('📝 Packages are ready for distribution'));
    } catch (error) {
      console.error(chalk.red('❌ Error during publishing:'), error);
      process.exit(1);
    }
  }

  async checkForChanges() {
    try {
      const { stdout } = await execAsync('git status --porcelain', {
        cwd: this.projectRoot
      });
      return stdout.trim().length > 0;
    } catch (error) {
      return false;
    }
  }

  async updateVersion() {
    const packageJsonPath = path.join(this.projectRoot, 'package.json');
    const packageJson = await fs.readJson(packageJsonPath);
    
    // Increment patch version
    const versionParts = packageJson.version.split('.');
    versionParts[2] = (parseInt(versionParts[2]) + 1).toString();
    const newVersion = versionParts.join('.');
    
    packageJson.version = newVersion;
    await fs.writeJson(packageJsonPath, packageJson, { spaces: 2 });
    
    console.log(chalk.gray(`📝 Updated version to ${newVersion}`));
    return newVersion;
  }

  async generateSwiftCode() {
    console.log(chalk.gray('🔧 Generating Swift code...'));
    await execAsync('npm run swiftgen', { cwd: this.projectRoot });
  }

  async buildPackages() {
    console.log(chalk.gray('🔨 Building packages...'));
    await execAsync('npm run build', { cwd: this.projectRoot });
  }

  async testPackages() {
    console.log(chalk.gray('🧪 Testing packages...'));
    await execAsync('npm test', { cwd: this.projectRoot });
  }

  async commitChanges(version) {
    console.log(chalk.gray('📝 Committing changes...'));
    
    await execAsync('git add .', { cwd: this.projectRoot });
    await execAsync(`git commit -m "chore: update localization to v${version}"`, {
      cwd: this.projectRoot
    });
  }

  async createTag(version) {
    console.log(chalk.gray('🏷️  Creating git tag...'));
    await execAsync(`git tag -a v${version} -m "Release v${version}"`, {
      cwd: this.projectRoot
    });
  }

  async pushChanges() {
    console.log(chalk.gray('📤 Pushing changes...'));
    await execAsync('git push origin main --tags', { cwd: this.projectRoot });
  }
}

// Run the publisher if this file is executed directly
if (require.main === module) {
  const publisher = new PackagePublisher();
  publisher.publish().catch(console.error);
}

module.exports = PackagePublisher;
