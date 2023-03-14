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
