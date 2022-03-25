/* tslint:disable */
/* eslint-disable */
/**
 * Yago API
 * Augemented Reality Made Easy.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: hello@genie-ar.ch
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import * as runtime from '../runtime';
import {
    FileUpload,
    FileUploadFromJSON,
    FileUploadToJSON,
    PatchedProjectUpdate,
    PatchedProjectUpdateFromJSON,
    PatchedProjectUpdateToJSON,
    Project,
    ProjectFromJSON,
    ProjectToJSON,
    ProjectCreate,
    ProjectCreateFromJSON,
    ProjectCreateToJSON,
    ProjectUpdate,
    ProjectUpdateFromJSON,
    ProjectUpdateToJSON,
} from '../models';

export interface ProjectsCreateRequest {
    projectCreate: ProjectCreate;
}

export interface ProjectsDestroyRequest {
    id: string;
}

export interface ProjectsImageDestroyRequest {
    id: string;
}

export interface ProjectsImageUpdateRequest {
    contentDisposition: string;
    id: string;
    body?: Blob;
}

export interface ProjectsPartialUpdateRequest {
    id: string;
    patchedProjectUpdate?: PatchedProjectUpdate;
}

export interface ProjectsRetrieveRequest {
    id: string;
}

export interface ProjectsUpdateRequest {
    id: string;
    projectUpdate: ProjectUpdate;
}

/**
 * 
 */
export class ProjectsApi extends runtime.BaseAPI {

    /**
     * Add a new project. Change details later via PUT or PATCH.
     */
    async projectsCreateRaw(requestParameters: ProjectsCreateRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<Project>> {
        if (requestParameters.projectCreate === null || requestParameters.projectCreate === undefined) {
            throw new runtime.RequiredError('projectCreate','Required parameter requestParameters.projectCreate was null or undefined when calling projectsCreate.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("jwtAuth", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters["Authorization"] = this.configuration.apiKey("Authorization"); // tokenAuth authentication
        }

        const response = await this.request({
            path: `/api/projects/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: ProjectCreateToJSON(requestParameters.projectCreate),
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => ProjectFromJSON(jsonValue));
    }

    /**
     * Add a new project. Change details later via PUT or PATCH.
     */
    async projectsCreate(requestParameters: ProjectsCreateRequest, initOverrides?: RequestInit): Promise<Project> {
        const response = await this.projectsCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Remove a project. Only members with role OWNER can do this.
     */
    async projectsDestroyRaw(requestParameters: ProjectsDestroyRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError('id','Required parameter requestParameters.id was null or undefined when calling projectsDestroy.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("jwtAuth", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters["Authorization"] = this.configuration.apiKey("Authorization"); // tokenAuth authentication
        }

        const response = await this.request({
            path: `/api/projects/{id}/`.replace(`{${"id"}}`, encodeURIComponent(String(requestParameters.id))),
            method: 'DELETE',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Remove a project. Only members with role OWNER can do this.
     */
    async projectsDestroy(requestParameters: ProjectsDestroyRequest, initOverrides?: RequestInit): Promise<void> {
        await this.projectsDestroyRaw(requestParameters, initOverrides);
    }

    /**
     * Delete an image.
     */
    async projectsImageDestroyRaw(requestParameters: ProjectsImageDestroyRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError('id','Required parameter requestParameters.id was null or undefined when calling projectsImageDestroy.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("jwtAuth", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters["Authorization"] = this.configuration.apiKey("Authorization"); // tokenAuth authentication
        }

        const response = await this.request({
            path: `/api/projects/{id}/image/`.replace(`{${"id"}}`, encodeURIComponent(String(requestParameters.id))),
            method: 'DELETE',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Delete an image.
     */
    async projectsImageDestroy(requestParameters: ProjectsImageDestroyRequest, initOverrides?: RequestInit): Promise<void> {
        await this.projectsImageDestroyRaw(requestParameters, initOverrides);
    }

    /**
     * Upload an image. Max size 30MB. Filename is required!
     */
    async projectsImageUpdateRaw(requestParameters: ProjectsImageUpdateRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<FileUpload>> {
        if (requestParameters.contentDisposition === null || requestParameters.contentDisposition === undefined) {
            throw new runtime.RequiredError('contentDisposition','Required parameter requestParameters.contentDisposition was null or undefined when calling projectsImageUpdate.');
        }

        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError('id','Required parameter requestParameters.id was null or undefined when calling projectsImageUpdate.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'image/_*';

        if (requestParameters.contentDisposition !== undefined && requestParameters.contentDisposition !== null) {
            headerParameters['Content-Disposition'] = String(requestParameters.contentDisposition);
        }

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("jwtAuth", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters["Authorization"] = this.configuration.apiKey("Authorization"); // tokenAuth authentication
        }

        const response = await this.request({
            path: `/api/projects/{id}/image/`.replace(`{${"id"}}`, encodeURIComponent(String(requestParameters.id))),
            method: 'PUT',
            headers: headerParameters,
            query: queryParameters,
            body: requestParameters.body as any,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => FileUploadFromJSON(jsonValue));
    }

    /**
     * Upload an image. Max size 30MB. Filename is required!
     */
    async projectsImageUpdate(requestParameters: ProjectsImageUpdateRequest, initOverrides?: RequestInit): Promise<FileUpload> {
        const response = await this.projectsImageUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Lists all projects the user is a member of.
     */
    async projectsListRaw(initOverrides?: RequestInit): Promise<runtime.ApiResponse<Array<Project>>> {
        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("jwtAuth", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters["Authorization"] = this.configuration.apiKey("Authorization"); // tokenAuth authentication
        }

        const response = await this.request({
            path: `/api/projects/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => jsonValue.map(ProjectFromJSON));
    }

    /**
     * Lists all projects the user is a member of.
     */
    async projectsList(initOverrides?: RequestInit): Promise<Array<Project>> {
        const response = await this.projectsListRaw(initOverrides);
        return await response.value();
    }

    /**
     * Change as subset of project details.
     */
    async projectsPartialUpdateRaw(requestParameters: ProjectsPartialUpdateRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<ProjectUpdate>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError('id','Required parameter requestParameters.id was null or undefined when calling projectsPartialUpdate.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("jwtAuth", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters["Authorization"] = this.configuration.apiKey("Authorization"); // tokenAuth authentication
        }

        const response = await this.request({
            path: `/api/projects/{id}/`.replace(`{${"id"}}`, encodeURIComponent(String(requestParameters.id))),
            method: 'PATCH',
            headers: headerParameters,
            query: queryParameters,
            body: PatchedProjectUpdateToJSON(requestParameters.patchedProjectUpdate),
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => ProjectUpdateFromJSON(jsonValue));
    }

    /**
     * Change as subset of project details.
     */
    async projectsPartialUpdate(requestParameters: ProjectsPartialUpdateRequest, initOverrides?: RequestInit): Promise<ProjectUpdate> {
        const response = await this.projectsPartialUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Details of a single project.
     */
    async projectsRetrieveRaw(requestParameters: ProjectsRetrieveRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<Project>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError('id','Required parameter requestParameters.id was null or undefined when calling projectsRetrieve.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("jwtAuth", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters["Authorization"] = this.configuration.apiKey("Authorization"); // tokenAuth authentication
        }

        const response = await this.request({
            path: `/api/projects/{id}/`.replace(`{${"id"}}`, encodeURIComponent(String(requestParameters.id))),
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => ProjectFromJSON(jsonValue));
    }

    /**
     * Details of a single project.
     */
    async projectsRetrieve(requestParameters: ProjectsRetrieveRequest, initOverrides?: RequestInit): Promise<Project> {
        const response = await this.projectsRetrieveRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Change project and settings.
     */
    async projectsUpdateRaw(requestParameters: ProjectsUpdateRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<ProjectUpdate>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError('id','Required parameter requestParameters.id was null or undefined when calling projectsUpdate.');
        }

        if (requestParameters.projectUpdate === null || requestParameters.projectUpdate === undefined) {
            throw new runtime.RequiredError('projectUpdate','Required parameter requestParameters.projectUpdate was null or undefined when calling projectsUpdate.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("jwtAuth", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters["Authorization"] = this.configuration.apiKey("Authorization"); // tokenAuth authentication
        }

        const response = await this.request({
            path: `/api/projects/{id}/`.replace(`{${"id"}}`, encodeURIComponent(String(requestParameters.id))),
            method: 'PUT',
            headers: headerParameters,
            query: queryParameters,
            body: ProjectUpdateToJSON(requestParameters.projectUpdate),
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => ProjectUpdateFromJSON(jsonValue));
    }

    /**
     * Change project and settings.
     */
    async projectsUpdate(requestParameters: ProjectsUpdateRequest, initOverrides?: RequestInit): Promise<ProjectUpdate> {
        const response = await this.projectsUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

}
