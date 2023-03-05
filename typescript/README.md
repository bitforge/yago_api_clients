## yago-api-client

Client library to access [Yago REST API](https://yago.cloud/api/doc/).

Generated with `openapi-generator` using the [Fetch API](https://fetch.spec.whatwg.org/).

## Installation

Use your favorite package manager:

`npm install @bitforgehq/yago-api-client`

_OR_

`yarn add @bitforgehq/yago-api-client`

# Usage

```typescript
// Create auth token. Can be saved in local storage
const token = await new AuthApi().authCreate({
    tokenObtainRequest: {
        email: 'your@email.com',
        password: 'yourPa$$w0Rd',
    },
});

// Initialize API configuration with token
const apiConfig = new Configuration({
    basePath = 'https://yago.cloud',
    accessToken: token.access,
});

// Fetch projects and models
const projects = await new ProjectsApi(apiConfig).projectsList();
const models = await new ModelsApi(apiConfig).modelsList({ project: projects[0].id });
```

See [API Docs](https://yago.cloud/api/doc/) for a full list of all available endpoints.
