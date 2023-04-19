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
import type { PricingPlan } from '../models';
import { PricingPlanFromJSON, PricingPlanToJSON } from '../models';

/**
 *
 */
export class PlansApi extends runtime.BaseAPI {
    /**
     * List all available pricing plans
     */
    async plansListRaw(
        initOverrides?: RequestInit | runtime.InitOverrideFunction
    ): Promise<runtime.ApiResponse<Array<PricingPlan>>> {
        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request(
            {
                path: `/api/plans/`,
                method: 'GET',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => jsonValue.map(PricingPlanFromJSON));
    }

    /**
     * List all available pricing plans
     */
    async plansList(initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<Array<PricingPlan>> {
        const response = await this.plansListRaw(initOverrides);
        return await response.value();
    }
}
