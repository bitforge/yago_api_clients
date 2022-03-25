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
 * @interface TokenObtainResponse
 */
export interface TokenObtainResponse {
    /**
     * 
     * @type {string}
     * @memberof TokenObtainResponse
     */
    access: string;
    /**
     * 
     * @type {string}
     * @memberof TokenObtainResponse
     */
    refresh: string;
}

export function TokenObtainResponseFromJSON(json: any): TokenObtainResponse {
    return TokenObtainResponseFromJSONTyped(json, false);
}

export function TokenObtainResponseFromJSONTyped(json: any, ignoreDiscriminator: boolean): TokenObtainResponse {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'access': json['access'],
        'refresh': json['refresh'],
    };
}

export function TokenObtainResponseToJSON(value?: TokenObtainResponse | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'access': value.access,
        'refresh': value.refresh,
    };
}

