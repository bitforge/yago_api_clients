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

import { exists, mapValues } from '../runtime';
import {
    State95cEnum,
    State95cEnumFromJSON,
    State95cEnumFromJSONTyped,
    State95cEnumToJSON,
} from './State95cEnum';

/**
 * 
 * @export
 * @interface OrderCreate
 */
export interface OrderCreate {
    /**
     * 
     * @type {number}
     * @memberof OrderCreate
     */
    readonly id: number;
    /**
     * 
     * @type {string}
     * @memberof OrderCreate
     */
    project: string;
    /**
     * 
     * @type {State95cEnum}
     * @memberof OrderCreate
     */
    readonly state: State95cEnum | null;
    /**
     * 
     * @type {Date}
     * @memberof OrderCreate
     */
    readonly created: Date;
    /**
     * 
     * @type {Date}
     * @memberof OrderCreate
     */
    readonly modified: Date;
}

export function OrderCreateFromJSON(json: any): OrderCreate {
    return OrderCreateFromJSONTyped(json, false);
}

export function OrderCreateFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderCreate {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'project': json['project'],
        'state': State95cEnumFromJSON(json['state']),
        'created': (new Date(json['created'])),
        'modified': (new Date(json['modified'])),
    };
}

export function OrderCreateToJSON(value?: OrderCreate | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'project': value.project,
    };
}

