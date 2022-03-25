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
    Membership,
    MembershipFromJSON,
    MembershipToJSON,
} from '../models';

export interface MembershipsCreateRequest {
    membership: Membership;
}

export interface MembershipsDestroyRequest {
    id: string;
}

export interface MembershipsListRequest {
    project?: string;
    user?: string;
}

/**
 * 
 */
export class MembershipsApi extends runtime.BaseAPI {

    /**
     * Add a new project membership.
     */
    async membershipsCreateRaw(requestParameters: MembershipsCreateRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<Membership>> {
        if (requestParameters.membership === null || requestParameters.membership === undefined) {
            throw new runtime.RequiredError('membership','Required parameter requestParameters.membership was null or undefined when calling membershipsCreate.');
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
            path: `/api/memberships/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: MembershipToJSON(requestParameters.membership),
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => MembershipFromJSON(jsonValue));
    }

    /**
     * Add a new project membership.
     */
    async membershipsCreate(requestParameters: MembershipsCreateRequest, initOverrides?: RequestInit): Promise<Membership> {
        const response = await this.membershipsCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Remove a project member. Only OWNERS can do this.
     */
    async membershipsDestroyRaw(requestParameters: MembershipsDestroyRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError('id','Required parameter requestParameters.id was null or undefined when calling membershipsDestroy.');
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
            path: `/api/memberships/{id}/`.replace(`{${"id"}}`, encodeURIComponent(String(requestParameters.id))),
            method: 'DELETE',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Remove a project member. Only OWNERS can do this.
     */
    async membershipsDestroy(requestParameters: MembershipsDestroyRequest, initOverrides?: RequestInit): Promise<void> {
        await this.membershipsDestroyRaw(requestParameters, initOverrides);
    }

    /**
     * All project memberships of projects the user is also a member of. Can be filtered by `project` and `user`.
     */
    async membershipsListRaw(requestParameters: MembershipsListRequest, initOverrides?: RequestInit): Promise<runtime.ApiResponse<Array<Membership>>> {
        const queryParameters: any = {};

        if (requestParameters.project !== undefined) {
            queryParameters['project'] = requestParameters.project;
        }

        if (requestParameters.user !== undefined) {
            queryParameters['user'] = requestParameters.user;
        }

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
            path: `/api/memberships/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => jsonValue.map(MembershipFromJSON));
    }

    /**
     * All project memberships of projects the user is also a member of. Can be filtered by `project` and `user`.
     */
    async membershipsList(requestParameters: MembershipsListRequest = {}, initOverrides?: RequestInit): Promise<Array<Membership>> {
        const response = await this.membershipsListRaw(requestParameters, initOverrides);
        return await response.value();
    }

}
