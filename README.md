# graphql_server_base

A super basic GraphQL server implemented with Apollo Server. Meant to be used as a starting point for more complex stuff.

## Setup

I followed https://www.apollographql.com/docs/apollo-server/getting-started/ to set up the basics, and then added some extra stuff (e.g. TypeScript, eslint, ts-node-dev). I put most of those steps into a script so that a project exactly like this can be set up by following these steps:

### 1. Run the init script

```
./init_script.sh
```

This installs the necessary dependencies and creates some files (`package.json`, `src/index.js`).

### 2. Populate `package.json`

You need to add these scripts. You can use the `package.json` file in this repo as a reference.

```
"scripts": {
  "eslint": "eslint 'src/**/*.ts'",
  "start": "ts-node-dev --respawn src/index.ts",
  "tsc": "tsc"
}
```

### 3. Create and populate `tsconfig.json`

Use the `tsconfig.json` file in this repo as a reference.

### 4. Create and populate `.eslintrc.js`

Use the `.eslintrc.js` file in this repo as a reference. For more details about the TypeScript/eslint integration, see https://www.npmjs.com/package/@typescript-eslint/eslint-plugin.

### 5. Modify `jest.config.js`

This file gets created by `init_script.sh`. You just need to add

```
modulePathIgnorePatterns: ["./dist/"],
```

so duplicate tests in the generated directory don't run.

We're finally done! Now you're ready to start running the scripts listed below.

## Yarn scripts

### Running the code

Run the server with `yarn start`. Since we're using `ts-node-dev`, the server will be restarted when any relevant changes are made. Then go to http://localhost:4000/graphql to run queries.

### Typechecking the code

Run `yarn tsc`.

### Linting the code

Run `yarn eslint`.
