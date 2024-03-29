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

import { exists, mapValues } from '../runtime';
/**
 *
 * @export
 * @interface TokenRefreshResponse
 */
export interface TokenRefreshResponse {
    /**
     *
     * @type {string}
     * @memberof TokenRefreshResponse
     */
    access: string;
    /**
     *
     * @type {string}
     * @memberof TokenRefreshResponse
     */
    refresh: string;
}

export function TokenRefreshResponseFromJSON(json: any): TokenRefreshResponse {
    return TokenRefreshResponseFromJSONTyped(json, false);
}

export function TokenRefreshResponseFromJSONTyped(json: any, ignoreDiscriminator: boolean): TokenRefreshResponse {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        access: json['access'],
        refresh: json['refresh'],
    };
}

export function TokenRefreshResponseToJSON(value?: TokenRefreshResponse | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        access: value.access,
        refresh: value.refresh,
    };
}
