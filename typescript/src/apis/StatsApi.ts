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
    ChronicStats,
    ChronicStatsFromJSON,
    ChronicStatsToJSON,
    GlobalStatistics,
    GlobalStatisticsFromJSON,
    GlobalStatisticsToJSON,
    ProjectStatistics,
    ProjectStatisticsFromJSON,
    ProjectStatisticsToJSON,
    SummaryStats,
    SummaryStatsFromJSON,
    SummaryStatsToJSON,
} from '../models';

export interface StatsGlobalChronicCreateRequest {
    globalStatistics: GlobalStatistics;
}

export interface StatsGlobalSummaryCreateRequest {
    globalStatistics: GlobalStatistics;
}

export interface StatsProjectChronicCreateRequest {
    id: string;
    projectStatistics: ProjectStatistics;
}

export interface StatsProjectSummaryCreateRequest {
    id: string;
    projectStatistics: ProjectStatistics;
}

/**
 *
 */
export class StatsApi extends runtime.BaseAPI {
    /**
     * Traffic analytics over all projects and models.
     */
    async statsGlobalChronicCreateRaw(
        requestParameters: StatsGlobalChronicCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<Array<ChronicStats>>> {
        if (requestParameters.globalStatistics === null || requestParameters.globalStatistics === undefined) {
            throw new runtime.RequiredError(
                'globalStatistics',
                'Required parameter requestParameters.globalStatistics was null or undefined when calling statsGlobalChronicCreate.'
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
                path: `/api/stats/global/chronic/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: GlobalStatisticsToJSON(requestParameters.globalStatistics),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => jsonValue.map(ChronicStatsFromJSON));
    }

    /**
     * Traffic analytics over all projects and models.
     */
    async statsGlobalChronicCreate(
        requestParameters: StatsGlobalChronicCreateRequest,
        initOverrides?: RequestInit
    ): Promise<Array<ChronicStats>> {
        const response = await this.statsGlobalChronicCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Traffic analytics over all projects and models.
     */
    async statsGlobalSummaryCreateRaw(
        requestParameters: StatsGlobalSummaryCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<SummaryStats>> {
        if (requestParameters.globalStatistics === null || requestParameters.globalStatistics === undefined) {
            throw new runtime.RequiredError(
                'globalStatistics',
                'Required parameter requestParameters.globalStatistics was null or undefined when calling statsGlobalSummaryCreate.'
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
                path: `/api/stats/global/summary/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: GlobalStatisticsToJSON(requestParameters.globalStatistics),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => SummaryStatsFromJSON(jsonValue));
    }

    /**
     * Traffic analytics over all projects and models.
     */
    async statsGlobalSummaryCreate(
        requestParameters: StatsGlobalSummaryCreateRequest,
        initOverrides?: RequestInit
    ): Promise<SummaryStats> {
        const response = await this.statsGlobalSummaryCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Chronic statistics for single project and all models of that project.
     */
    async statsProjectChronicCreateRaw(
        requestParameters: StatsProjectChronicCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<Array<ChronicStats>>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling statsProjectChronicCreate.'
            );
        }

        if (requestParameters.projectStatistics === null || requestParameters.projectStatistics === undefined) {
            throw new runtime.RequiredError(
                'projectStatistics',
                'Required parameter requestParameters.projectStatistics was null or undefined when calling statsProjectChronicCreate.'
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
                path: `/api/stats/project/{id}/chronic/`.replace(
                    `{${'id'}}`,
                    encodeURIComponent(String(requestParameters.id))
                ),
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: ProjectStatisticsToJSON(requestParameters.projectStatistics),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => jsonValue.map(ChronicStatsFromJSON));
    }

    /**
     * Chronic statistics for single project and all models of that project.
     */
    async statsProjectChronicCreate(
        requestParameters: StatsProjectChronicCreateRequest,
        initOverrides?: RequestInit
    ): Promise<Array<ChronicStats>> {
        const response = await this.statsProjectChronicCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Summary statistics for single project and all models of that project.
     */
    async statsProjectSummaryCreateRaw(
        requestParameters: StatsProjectSummaryCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<SummaryStats>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError(
                'id',
                'Required parameter requestParameters.id was null or undefined when calling statsProjectSummaryCreate.'
            );
        }

        if (requestParameters.projectStatistics === null || requestParameters.projectStatistics === undefined) {
            throw new runtime.RequiredError(
                'projectStatistics',
                'Required parameter requestParameters.projectStatistics was null or undefined when calling statsProjectSummaryCreate.'
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
                path: `/api/stats/project/{id}/summary/`.replace(
                    `{${'id'}}`,
                    encodeURIComponent(String(requestParameters.id))
                ),
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: ProjectStatisticsToJSON(requestParameters.projectStatistics),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => SummaryStatsFromJSON(jsonValue));
    }

    /**
     * Summary statistics for single project and all models of that project.
     */
    async statsProjectSummaryCreate(
        requestParameters: StatsProjectSummaryCreateRequest,
        initOverrides?: RequestInit
    ): Promise<SummaryStats> {
        const response = await this.statsProjectSummaryCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }
}
