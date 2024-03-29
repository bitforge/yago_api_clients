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
import { HealthStatus, HealthStatusFromJSON, HealthStatusToJSON } from '../models';

/**
 *
 */
export class HealthApi extends runtime.BaseAPI {
    /**
     * Check health status of required subsystems.
     */
    async healthRetrieveRaw(initOverrides?: RequestInit): Promise<runtime.ApiResponse<HealthStatus>> {
        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request(
            {
                path: `/api/health/`,
                method: 'GET',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => HealthStatusFromJSON(jsonValue));
    }

    /**
     * Check health status of required subsystems.
     */
    async healthRetrieve(initOverrides?: RequestInit): Promise<HealthStatus> {
        const response = await this.healthRetrieveRaw(initOverrides);
        return await response.value();
    }
}
