#!/usr/bin/env node

const fs = require('fs-extra');
const path = require('path');
const yaml = require('js-yaml');
const chalk = require('chalk');

/**
 * Initial Crowdin Upload Script
 * Uploads existing localization strings to Crowdin for the first time
 * After this, all editing should be done only in Crowdin
 */

class InitialCrowdinUpload {
  constructor() {
    this.resourcesDir = path.join(__dirname, '../../resources');
    this.projectRoot = path.join(__dirname, '../..');
  }

  async upload() {
    console.log(chalk.blue('🚀 Starting initial Crowdin upload...'));
    console.log(chalk.yellow('⚠️  This will upload existing strings to Crowdin.'));
    console.log(chalk.yellow('⚠️  After this, all editing should be done only in Crowdin!'));
    
    try {
      // Check if Crowdin CLI is installed
      await this.checkCrowdinCLI();
      
      // Upload source files
      await this.uploadSources();
      
      console.log(chalk.green('✅ Initial upload completed!'));
      console.log(chalk.blue('📝 Next steps:'));
      console.log(chalk.gray('1. Go to Crowdin and configure your project'));
      console.log(chalk.gray('2. Add translators and languages'));
      console.log(chalk.gray('3. Use "npm run crowdin:sync" for regular updates'));
      console.log(chalk.yellow('⚠️  Remember: Edit strings only in Crowdin from now on!'));
    } catch (error) {
      console.error(chalk.red('❌ Error during initial upload:'), error);
      process.exit(1);
    }
  }

  async checkCrowdinCLI() {
    const { exec } = require('child_process');
    const util = require('util');
    const execAsync = util.promisify(exec);
    
    try {
      await execAsync('crowdin --version');
      console.log(chalk.gray('✅ Crowdin CLI is installed'));
    } catch (error) {
      console.error(chalk.red('❌ Crowdin CLI is not installed. Please install it first:'));
      console.log(chalk.yellow('npm install -g @crowdin/cli'));
      process.exit(1);
    }
  }

  async uploadSources() {
    const { exec } = require('child_process');
    const util = require('util');
    const execAsync = util.promisify(exec);
    
    console.log(chalk.gray('📤 Uploading source files to Crowdin...'));
    
    try {
      const { stdout, stderr } = await execAsync('crowdin upload sources', {
        cwd: this.projectRoot
      });
      
      if (stdout) console.log(chalk.gray(stdout));
      if (stderr) console.warn(chalk.yellow(stderr));
      
      console.log(chalk.green('✅ Source files uploaded successfully'));
    } catch (error) {
      console.error(chalk.red('❌ Failed to upload source files:'), error.message);
      throw error;
    }
  }
}

// Run the upload if this file is executed directly
if (require.main === module) {
  const uploader = new InitialCrowdinUpload();
  uploader.upload().catch(console.error);
}

module.exports = InitialCrowdinUpload;
