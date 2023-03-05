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
 * @interface TokenRefreshRequest
 */
export interface TokenRefreshRequest {
    /**
     *
     * @type {string}
     * @memberof TokenRefreshRequest
     */
    refresh: string;
}

export function TokenRefreshRequestFromJSON(json: any): TokenRefreshRequest {
    return TokenRefreshRequestFromJSONTyped(json, false);
}

export function TokenRefreshRequestFromJSONTyped(json: any, ignoreDiscriminator: boolean): TokenRefreshRequest {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        refresh: json['refresh'],
    };
}

export function TokenRefreshRequestToJSON(value?: TokenRefreshRequest | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        refresh: value.refresh,
    };
}
