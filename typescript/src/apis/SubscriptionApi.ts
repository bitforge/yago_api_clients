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
import type { NewSubscription, NewSubscriptionCreate, Subscription } from '../models';
import {
    NewSubscriptionFromJSON,
    NewSubscriptionToJSON,
    NewSubscriptionCreateFromJSON,
    NewSubscriptionCreateToJSON,
    SubscriptionFromJSON,
    SubscriptionToJSON,
} from '../models';

export interface SubscriptionCreateRequest {
    newSubscriptionCreate: NewSubscriptionCreate;
}

/**
 *
 */
export class SubscriptionApi extends runtime.BaseAPI {
    /**
     * Create a new subscription for a Yago pricing plan.
     */
    async subscriptionCreateRaw(
        requestParameters: SubscriptionCreateRequest,
        initOverrides?: RequestInit | runtime.InitOverrideFunction
    ): Promise<runtime.ApiResponse<NewSubscription>> {
        if (requestParameters.newSubscriptionCreate === null || requestParameters.newSubscriptionCreate === undefined) {
            throw new runtime.RequiredError(
                'newSubscriptionCreate',
                'Required parameter requestParameters.newSubscriptionCreate was null or undefined when calling subscriptionCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        const response = await this.request(
            {
                path: `/api/subscription/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: NewSubscriptionCreateToJSON(requestParameters.newSubscriptionCreate),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => NewSubscriptionFromJSON(jsonValue));
    }

    /**
     * Create a new subscription for a Yago pricing plan.
     */
    async subscriptionCreate(
        requestParameters: SubscriptionCreateRequest,
        initOverrides?: RequestInit | runtime.InitOverrideFunction
    ): Promise<NewSubscription> {
        const response = await this.subscriptionCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Cancel current subscription.
     */
    async subscriptionDestroyRaw(
        initOverrides?: RequestInit | runtime.InitOverrideFunction
    ): Promise<runtime.ApiResponse<void>> {
        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        const response = await this.request(
            {
                path: `/api/subscription/`,
                method: 'DELETE',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Cancel current subscription.
     */
    async subscriptionDestroy(initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<void> {
        await this.subscriptionDestroyRaw(initOverrides);
    }

    /**
     * Get details of active subscription if customer is signed up.
     */
    async subscriptionRetrieveRaw(
        initOverrides?: RequestInit | runtime.InitOverrideFunction
    ): Promise<runtime.ApiResponse<Subscription>> {
        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        const response = await this.request(
            {
                path: `/api/subscription/`,
                method: 'GET',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => SubscriptionFromJSON(jsonValue));
    }

    /**
     * Get details of active subscription if customer is signed up.
     */
    async subscriptionRetrieve(initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<Subscription> {
        const response = await this.subscriptionRetrieveRaw(initOverrides);
        return await response.value();
    }
}
