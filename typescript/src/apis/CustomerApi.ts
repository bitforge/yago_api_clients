/* tslint:disable */
/* eslint-disable */
/**
 * Genie API
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
    Address,
    AddressFromJSON,
    AddressToJSON,
    Customer,
    CustomerFromJSON,
    CustomerToJSON,
    PatchedAddress,
    PatchedAddressFromJSON,
    PatchedAddressToJSON,
} from '../models';

export interface CustomerBillingAddressPartialUpdateRequest {
    patchedAddress?: PatchedAddress;
}

export interface CustomerBillingAddressUpdateRequest {
    address: Address;
}

/**
 * 
 */
export class CustomerApi extends runtime.BaseAPI {

    /**
     * Update customer billing address. Required prior to subscribing to Genie AR services
     */
    async customerBillingAddressPartialUpdateRaw(requestParameters: CustomerBillingAddressPartialUpdateRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<Address>> {
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
            path: `/api/customer/billing_address/`,
            method: 'PATCH',
            headers: headerParameters,
            query: queryParameters,
            body: PatchedAddressToJSON(requestParameters.patchedAddress),
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => AddressFromJSON(jsonValue));
    }

    /**
     * Update customer billing address. Required prior to subscribing to Genie AR services
     */
    async customerBillingAddressPartialUpdate(requestParameters: CustomerBillingAddressPartialUpdateRequest = {}, initOverrides?: RequestInit): Promise<Address> {
        const response = await this.customerBillingAddressPartialUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Update customer billing address. Required prior to subscribing to Genie AR services
     */
    async customerBillingAddressRetrieveRaw(initOverrides?: RequestInit): Promise<runtime.ApiResponse<Address>> {
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
            path: `/api/customer/billing_address/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => AddressFromJSON(jsonValue));
    }

    /**
     * Update customer billing address. Required prior to subscribing to Genie AR services
     */
    async customerBillingAddressRetrieve(initOverrides?: RequestInit): Promise<Address> {
        const response = await this.customerBillingAddressRetrieveRaw(initOverrides);
        return await response.value();
    }

    /**
     * Update customer billing address. Required prior to subscribing to Genie AR services
     */
    async customerBillingAddressUpdateRaw(requestParameters: CustomerBillingAddressUpdateRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<Address>> {
        if (requestParameters.address === null || requestParameters.address === undefined) {
            throw new runtime.RequiredError('address','Required parameter requestParameters.address was null or undefined when calling customerBillingAddressUpdate.');
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
            path: `/api/customer/billing_address/`,
            method: 'PUT',
            headers: headerParameters,
            query: queryParameters,
            body: AddressToJSON(requestParameters.address),
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => AddressFromJSON(jsonValue));
    }

    /**
     * Update customer billing address. Required prior to subscribing to Genie AR services
     */
    async customerBillingAddressUpdate(requestParameters: CustomerBillingAddressUpdateRequest, initOverrides?: RequestInit): Promise<Address> {
        const response = await this.customerBillingAddressUpdateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Returns the customer associated with the current user account
     */
    async customerRetrieveRaw(initOverrides?: RequestInit): Promise<runtime.ApiResponse<Customer>> {
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
            path: `/api/customer/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => CustomerFromJSON(jsonValue));
    }

    /**
     * Returns the customer associated with the current user account
     */
    async customerRetrieve(initOverrides?: RequestInit): Promise<Customer> {
        const response = await this.customerRetrieveRaw(initOverrides);
        return await response.value();
    }

}
