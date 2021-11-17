## genie-api-client

Client library to access [Genie REST API](https://genie-ar.ch/api/doc/).

Generated with `openapi-generator` using the [Fetch API](https://fetch.spec.whatwg.org/).

##  Installation

Use your favorite package manager:

`npm install @bitforgehq/genie-api-client`

*OR*

`yarn add @bitforgehq/genie-api-client`

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
    basePath = "https://genie-ar.ch",
    accessToken: token.access
});

// Fetch projects and models
const projects = await new ProjectsApi(apiConfig).projectsList();
const models = await new ModelsApi(apiConfig).modelsList({ project: projects[0].id });

```

See [API Docs](https://genie-ar.ch/api/doc/) for a full list of all available endpoints.