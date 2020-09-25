#!/bin/bash

yarn
yarn add apollo-server graphql 
yarn add -D eslint jest ts-jest ts-node-dev typescript 
yarn add -D @types/jest @typescript-eslint/parser @typescript-eslint/eslint-plugin
yarn ts-jest config:init
mkdir src
touch src/index.ts
touch .gitignore
echo "node_modules" >> .gitignore
