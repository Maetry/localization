#!/usr/bin/env node

const { exec } = require('child_process');
const util = require('util');
const chalk = require('chalk');
const fs = require('fs-extra');
const path = require('path');

const execAsync = util.promisify(exec);

/**
 * Crowdin synchronization script
 * Handles uploading sources and downloading translations
 */

class CrowdinSync {
  constructor() {
    this.projectRoot = path.join(__dirname, '../..');
  }

  async sync() {
    console.log(chalk.blue('🔄 Starting Crowdin synchronization...'));
    console.log(chalk.yellow('⚠️  This will download translations from Crowdin'));
    console.log(chalk.yellow('⚠️  Make sure you have edited strings in Crowdin first!'));
    
    try {
      // Check if Crowdin CLI is installed
      await this.checkCrowdinCLI();
      
      // Download translations
      await this.downloadTranslations();
      
      // Generate Swift code
      await this.generateSwiftCode();
      
      console.log(chalk.green('✅ Crowdin synchronization completed!'));
      console.log(chalk.blue('📝 Next steps:'));
      console.log(chalk.gray('1. Review the generated files'));
      console.log(chalk.gray('2. Run "npm run publish" to version and publish packages'));
    } catch (error) {
      console.error(chalk.red('❌ Error during Crowdin sync:'), error);
      process.exit(1);
    }
  }

  async checkCrowdinCLI() {
    try {
      await execAsync('crowdin --version');
      console.log(chalk.gray('✅ Crowdin CLI is installed'));
    } catch (error) {
      console.error(chalk.red('❌ Crowdin CLI is not installed. Please install it first:'));
      console.log(chalk.yellow('npm install -g @crowdin/cli'));
      process.exit(1);
    }
  }

  async generateSwiftCode() {
    console.log(chalk.gray('🔧 Generating Swift code...'));
    
    try {
      await execAsync('npm run swiftgen', {
        cwd: this.projectRoot
      });
      
      console.log(chalk.green('✅ Swift code generated successfully'));
    } catch (error) {
      console.error(chalk.red('❌ Failed to generate Swift code:'), error.message);
      throw error;
    }
  }

  async downloadTranslations() {
    console.log(chalk.gray('📥 Downloading translations from Crowdin...'));
    
    try {
      const { stdout, stderr } = await execAsync('crowdin download', {
        cwd: this.projectRoot
      });
      
      if (stdout) console.log(chalk.gray(stdout));
      if (stderr) console.warn(chalk.yellow(stderr));
      
      console.log(chalk.green('✅ Translations downloaded successfully'));
    } catch (error) {
      console.error(chalk.red('❌ Failed to download translations:'), error.message);
      throw error;
    }
  }

}

// Run the sync if this file is executed directly
if (require.main === module) {
  const sync = new CrowdinSync();
  sync.sync().catch(console.error);
}

module.exports = CrowdinSync;
