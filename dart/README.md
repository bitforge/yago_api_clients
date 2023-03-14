# yago_cloud

Augemented Reality Made Easy.

A generated Yago Cloud API Client for Flutter & Dart.

- More on Yago: https://yago.cloud
- API Docs: https://yago.cloud/api/doc/

## Requirements

Dart 2.12 or later

## Installation & Usage

Install via pub.dev:

```
flutter pub add yago_cloud
```

## Getting Started

Here's a small example how to list all projects:

```dart
import 'dart:io';
import 'dart:developer';
import 'package:yago_cloud/api.dart';

listProjects() async {
  try {
    final authApi = AuthApi();
    final loginResult = await authApi.authLoginCreate(
      TokenObtainRequest(
        email: '<YAGO-ACCOUNT-EMAIL>',
        password: '<YAGO-ACCOUNT-PASSWORD>',
      ),
    );

    final accessToken = loginResult!.access;
    print('Login successful!');

    final bearerAuth = HttpBearerAuth();
    bearerAuth.accessToken = accessToken;
    final apiClient = ApiClient(authentication: bearerAuth);

    final projectsApi = ProjectsApi(apiClient);
    final projectList = await projectsApi.projectsList();
    projectList!.sort((project, other) => project.modified.compareTo(other.modified));

    print('## Yago projects list');
    for (final project in projectList) {
      print('- ${project.name}');
    }

    print('## Yago models list');
    final modelsApi = ModelsApi(apiClient);
    final modelsList = await modelsApi.modelsList(project: projectList.first.id);
    for (final model in modelsList ?? []) {
      print('- ${model.name}');
    }

  } on ApiException catch (error) {
    log('Login Failed: ', error: error);
  }
}

Future<void> main() async {
  await listProjects();
  exit(0);
}
```

## API Authorization

There 2 major ways to authenticate with Yago API:

## jwtAuth

Login with email address and password.

- **Type**: HTTP Bearer authentication

## tokenAuth

Use a fixed API token pinned to a User.

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header
