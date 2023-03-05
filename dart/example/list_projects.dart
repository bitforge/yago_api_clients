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

    print('# YAGO PROJECTS LIST');
    for (final project in projectList) {
      print('- ${project.name}');
    }
  } on ApiException catch (error) {
    log('Login Failed: ', error: error);
  }
}

Future<void> main() async {
  await listProjects();
  exit(0);
}
