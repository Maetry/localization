// This file will be generated from Crowdin translations
// Do not edit manually - use Crowdin instead

import { LocalizationKeys, LocalizationKey } from './types/localization';

const messages: LocalizationKeys = {
  actions: {
    save: 'Save',
    cancel: 'Cancel',
    delete: 'Delete',
    edit: 'Edit'
  },
  fields: {
    name: 'Name',
    email: 'Email',
    password: 'Password'
  },
  status: {
    loading: 'Loading...',
    success: 'Success',
    error: 'Error'
  }
};

export function useTranslations() {
  return (key: LocalizationKey): string => {
    const keys = key.split('.');
    let value: any = messages;
    
    for (const k of keys) {
      value = value[k];
    }
    
    return value || key;
  };
}

export default messages;
