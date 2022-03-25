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
 * @interface AvailableState
 */
export interface AvailableState {
    /**
     * 
     * @type {string}
     * @memberof AvailableState
     */
    readonly action: string;
    /**
     * 
     * @type {string}
     * @memberof AvailableState
     */
    readonly target: string;
}

export function AvailableStateFromJSON(json: any): AvailableState {
    return AvailableStateFromJSONTyped(json, false);
}

export function AvailableStateFromJSONTyped(json: any, ignoreDiscriminator: boolean): AvailableState {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'action': json['action'],
        'target': json['target'],
    };
}

export function AvailableStateToJSON(value?: AvailableState | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
    };
}

