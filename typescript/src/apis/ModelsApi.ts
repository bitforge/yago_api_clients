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
    Model,
    ModelFromJSON,
    ModelToJSON,
    ModelCreate,
    ModelCreateFromJSON,
    ModelCreateToJSON,
    ModelInfo,
    ModelInfoFromJSON,
    ModelInfoToJSON,
    ModelUpdate,
    ModelUpdateFromJSON,
    ModelUpdateToJSON,
    PatchedModelUpdate,
    PatchedModelUpdateFromJSON,
    PatchedModelUpdateToJSON,
} from '../models';

export interface ModelsCreateRequest {
    modelCreate: ModelCreate;
}

export interface ModelsDestroyRequest {
    id: string;
}

export interface ModelsEmbedOptionsRetrieveRequest {
    slug: string;
}

export interface ModelsGlbDestroyRequest {
    id: string;
}

export interface ModelsGlbUpdateRequest {
    contentDisposition: string;
    id: string;
    body?: Blob;
}

export interface ModelsImageDestroyRequest {
    id: string;
}

export interface ModelsImageUpdateRequest {
    contentDisposition: string;
    id: string;
    body?: Blob;
}

export interface ModelsListRequest {
    project?: string;
    status?: ModelsListStatusEnum;
}

export interface ModelsModelDestroyRequest {
    id: string;
}

export interface ModelsModelUpdateRequest {
    contentDisposition: string;
    id: string;
    body?: Blob;
}

export interface ModelsPartialUpdateRequest {
    id: string;
    patchedModelUpdate?: PatchedModelUpdate;
}

export interface ModelsRetrieveRequest {
    id: string;
}

export interface ModelsUpdateRequest {
    id: string;
    modelUpdate?: ModelUpdate;
}

export interface ModelsUsdzDestroyRequest {
    id: string;
}

export interface ModelsUsdzUpdateRequest {
    contentDisposition: string;
    id: string;
    body?: Blob;
}

/**
 *
 */
export class ModelsApi extends runtime.BaseAPI {
    /**
     * Add a new model. Change details and translations later via PUT or PATCH.
     */
    async modelsCreateRaw(
        requestParameters: ModelsCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<ModelCreate>> {
        if (requestParameters.modelCreate === null || requestParameters.modelCreate === undefined) {
            throw new runtime.RequiredError(
                'modelCreate',
                'Required parameter requestParameters.modelCreate was null or undefined when calling modelsCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: ModelCreateToJSON(requestParameters.modelCreate),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => ModelCreateFromJSON(jsonValue));
    }

    /**
     * Add a new model. Change details and translations later via PUT or PATCH.
     */
    async modelsCreate(requestParameters: ModelsCreateRequest, initOverrides?: RequestInit): Promise<ModelCreate> {
        const response = await this.modelsCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Remove a model. Be cautious, this is permanent!
     */
    async modelsDestroyRaw(
        requestParameters: ModelsDestroyRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsDestroy.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'DELETE',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Remove a model. Be cautious, this is permanent!
     */
    async modelsDestroy(requestParameters: ModelsDestroyRequest, initOverrides?: RequestInit): Promise<void> {
        await this.modelsDestroyRaw(requestParameters, initOverrides);
    }

    /**
     * Model infos for embedding. Loaded by <ar-button> web component.
     */
    async modelsEmbedOptionsRetrieveRaw(
        requestParameters: ModelsEmbedOptionsRetrieveRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<ModelInfo>> {
        if (requestParameters.slug === null || requestParameters.slug === undefined) {
            throw new runtime.RequiredError(
                'slug',
                'Required parameter requestParameters.slug was null or undefined when calling modelsEmbedOptionsRetrieve.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request(
            {
                path: `/api/models/{slug}/embed/options/`.replace(
                    `{${'slug'}}`,
                    encodeURIComponent(String(requestParameters.slug))
                ),
                method: 'GET',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => ModelInfoFromJSON(jsonValue));
    }

    /**
     * Model infos for embedding. Loaded by <ar-button> web component.
     */
    async modelsEmbedOptionsRetrieve(
        requestParameters: ModelsEmbedOptionsRetrieveRequest,
        initOverrides?: RequestInit
    ): Promise<ModelInfo> {
        const response = await this.modelsEmbedOptionsRetrieveRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Delete a file.
     */
    async modelsGlbDestroyRaw(
        requestParameters: ModelsGlbDestroyRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsGlbDestroy.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/glb/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'DELETE',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Delete a file.
     */
    async modelsGlbDestroy(requestParameters: ModelsGlbDestroyRequest, initOverrides?: RequestInit): Promise<void> {
        await this.modelsGlbDestroyRaw(requestParameters, initOverrides);
    }

    /**
     * Upload a file. Max size 30MB. Filename is required!
     */
    async modelsGlbUpdateRaw(
        requestParameters: ModelsGlbUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<FileUpload>> {
        if (requestParameters.contentDisposition === null || requestParameters.contentDisposition === undefined) {
            throw new runtime.RequiredError(
                'contentDisposition',
                'Required parameter requestParameters.contentDisposition was null or undefined when calling modelsGlbUpdate.'
            );
        }

        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsGlbUpdate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/octet-stream';

        if (requestParameters.contentDisposition !== undefined && requestParameters.contentDisposition !== null) {
            headerParameters['Content-Disposition'] = String(requestParameters.contentDisposition);
        }

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/glb/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'PUT',
                headers: headerParameters,
                query: queryParameters,
                body: requestParameters.body as any,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => FileUploadFromJSON(jsonValue));
    }

    /**
     * Upload a file. Max size 30MB. Filename is required!
     */
    async modelsGlbUpdate(requestParameters: ModelsGlbUpdateRequest, initOverrides?: RequestInit): Promise<FileUpload> {
        const response = await this.modelsGlbUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Delete an image.
     */
    async modelsImageDestroyRaw(
        requestParameters: ModelsImageDestroyRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsImageDestroy.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/image/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'DELETE',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Delete an image.
     */
    async modelsImageDestroy(requestParameters: ModelsImageDestroyRequest, initOverrides?: RequestInit): Promise<void> {
        await this.modelsImageDestroyRaw(requestParameters, initOverrides);
    }

    /**
     * Upload an image. Max size 30MB. Filename is required!
     */
    async modelsImageUpdateRaw(
        requestParameters: ModelsImageUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<FileUpload>> {
        if (requestParameters.contentDisposition === null || requestParameters.contentDisposition === undefined) {
            throw new runtime.RequiredError(
                'contentDisposition',
                'Required parameter requestParameters.contentDisposition was null or undefined when calling modelsImageUpdate.'
            );
        }

        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsImageUpdate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'image/_*';

        if (requestParameters.contentDisposition !== undefined && requestParameters.contentDisposition !== null) {
            headerParameters['Content-Disposition'] = String(requestParameters.contentDisposition);
        }

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/image/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'PUT',
                headers: headerParameters,
                query: queryParameters,
                body: requestParameters.body as any,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => FileUploadFromJSON(jsonValue));
    }

    /**
     * Upload an image. Max size 30MB. Filename is required!
     */
    async modelsImageUpdate(
        requestParameters: ModelsImageUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<FileUpload> {
        const response = await this.modelsImageUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Lists all models for all projects the user is a member of. Can be filtered by `project`.
     */
    async modelsListRaw(
        requestParameters: ModelsListRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<Array<Model>>> {
        const queryParameters: any = {};

        if (requestParameters.project !== undefined) {
            queryParameters['project'] = requestParameters.project;
        }

        if (requestParameters.status !== undefined) {
            queryParameters['status'] = requestParameters.status;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/`,
                method: 'GET',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => jsonValue.map(ModelFromJSON));
    }

    /**
     * Lists all models for all projects the user is a member of. Can be filtered by `project`.
     */
    async modelsList(requestParameters: ModelsListRequest = {}, initOverrides?: RequestInit): Promise<Array<Model>> {
        const response = await this.modelsListRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Delete a file.
     */
    async modelsModelDestroyRaw(
        requestParameters: ModelsModelDestroyRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsModelDestroy.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/model/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'DELETE',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Delete a file.
     */
    async modelsModelDestroy(requestParameters: ModelsModelDestroyRequest, initOverrides?: RequestInit): Promise<void> {
        await this.modelsModelDestroyRaw(requestParameters, initOverrides);
    }

    /**
     * Upload a file. Max size 30MB. Filename is required!
     */
    async modelsModelUpdateRaw(
        requestParameters: ModelsModelUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<FileUpload>> {
        if (requestParameters.contentDisposition === null || requestParameters.contentDisposition === undefined) {
            throw new runtime.RequiredError(
                'contentDisposition',
                'Required parameter requestParameters.contentDisposition was null or undefined when calling modelsModelUpdate.'
            );
        }

        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsModelUpdate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/octet-stream';

        if (requestParameters.contentDisposition !== undefined && requestParameters.contentDisposition !== null) {
            headerParameters['Content-Disposition'] = String(requestParameters.contentDisposition);
        }

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/model/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'PUT',
                headers: headerParameters,
                query: queryParameters,
                body: requestParameters.body as any,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => FileUploadFromJSON(jsonValue));
    }

    /**
     * Upload a file. Max size 30MB. Filename is required!
     */
    async modelsModelUpdate(
        requestParameters: ModelsModelUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<FileUpload> {
        const response = await this.modelsModelUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Change as subset of model details.
     */
    async modelsPartialUpdateRaw(
        requestParameters: ModelsPartialUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<ModelUpdate>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsPartialUpdate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'PATCH',
                headers: headerParameters,
                query: queryParameters,
                body: PatchedModelUpdateToJSON(requestParameters.patchedModelUpdate),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => ModelUpdateFromJSON(jsonValue));
    }

    /**
     * Change as subset of model details.
     */
    async modelsPartialUpdate(
        requestParameters: ModelsPartialUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<ModelUpdate> {
        const response = await this.modelsPartialUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Details of a single model.
     */
    async modelsRetrieveRaw(
        requestParameters: ModelsRetrieveRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<Model>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsRetrieve.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'GET',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => ModelFromJSON(jsonValue));
    }

    /**
     * Details of a single model.
     */
    async modelsRetrieve(requestParameters: ModelsRetrieveRequest, initOverrides?: RequestInit): Promise<Model> {
        const response = await this.modelsRetrieveRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Change model details. Translated field are all optional expcet for `name_de`.
     */
    async modelsUpdateRaw(
        requestParameters: ModelsUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<ModelUpdate>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsUpdate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'PUT',
                headers: headerParameters,
                query: queryParameters,
                body: ModelUpdateToJSON(requestParameters.modelUpdate),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => ModelUpdateFromJSON(jsonValue));
    }

    /**
     * Change model details. Translated field are all optional expcet for `name_de`.
     */
    async modelsUpdate(requestParameters: ModelsUpdateRequest, initOverrides?: RequestInit): Promise<ModelUpdate> {
        const response = await this.modelsUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Delete a file.
     */
    async modelsUsdzDestroyRaw(
        requestParameters: ModelsUsdzDestroyRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsUsdzDestroy.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/usdz/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'DELETE',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Delete a file.
     */
    async modelsUsdzDestroy(requestParameters: ModelsUsdzDestroyRequest, initOverrides?: RequestInit): Promise<void> {
        await this.modelsUsdzDestroyRaw(requestParameters, initOverrides);
    }

    /**
     * Upload a file. Max size 30MB. Filename is required!
     */
    async modelsUsdzUpdateRaw(
        requestParameters: ModelsUsdzUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<FileUpload>> {
        if (requestParameters.contentDisposition === null || requestParameters.contentDisposition === undefined) {
            throw new runtime.RequiredError(
                'contentDisposition',
                'Required parameter requestParameters.contentDisposition was null or undefined when calling modelsUsdzUpdate.'
            );
        }

        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling modelsUsdzUpdate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/octet-stream';

        if (requestParameters.contentDisposition !== undefined && requestParameters.contentDisposition !== null) {
            headerParameters['Content-Disposition'] = String(requestParameters.contentDisposition);
        }

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/models/{id}/usdz/`.replace(`{${'id'}}`, encodeURIComponent(String(requestParameters.id))),
                method: 'PUT',
                headers: headerParameters,
                query: queryParameters,
                body: requestParameters.body as any,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => FileUploadFromJSON(jsonValue));
    }

    /**
     * Upload a file. Max size 30MB. Filename is required!
     */
    async modelsUsdzUpdate(
        requestParameters: ModelsUsdzUpdateRequest,
        initOverrides?: RequestInit
    ): Promise<FileUpload> {
        const response = await this.modelsUsdzUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }
}

/**
 * @export
 * @enum {string}
 */
export enum ModelsListStatusEnum {
    Draft = 'DRAFT',
    Online = 'ONLINE',
    Ready = 'READY',
}
