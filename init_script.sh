#!/bin/bash

yarn
yarn add apollo-server graphql typescript
yarn add -D ts-node-dev
touch src/index.js
touch .gitignore
echo "node_modules" >> .gitignore
