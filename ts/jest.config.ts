import type { Config } from 'jest';

const config: Config = {
  preset: 'ts-jest',
  rootDir: '.',
  setupFiles: ['<rootDir>/tests/mock.env.ts'],
  testMatch: ['**/*.spec.ts', '**/*.test.ts'],
  testEnvironment: 'node',
  moduleDirectories: ['src', 'node_modules'],
  moduleNameMapper: {
    '^@/(.*)$': '<rootDir>/src/$1',
  },
  roots: ['<rootDir>'],
  moduleFileExtensions: ['ts', 'tsx', 'js', 'json'],
  transform: {
    '^.+\\.(ts|tsx)$': [
      'ts-jest',
      {
        tsconfig: 'tsconfig.app.json',
        useESM: true,
      },
    ],
  },
};

export default config;
