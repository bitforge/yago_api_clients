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
 * @interface OrderModelFile
 */
export interface OrderModelFile {
    /**
     * 
     * @type {string}
     * @memberof OrderModelFile
     */
    readonly id: string;
    /**
     * 
     * @type {string}
     * @memberof OrderModelFile
     */
    readonly name: string;
    /**
     * 
     * @type {string}
     * @memberof OrderModelFile
     */
    file: string;
    /**
     * 
     * @type {Date}
     * @memberof OrderModelFile
     */
    readonly created: Date;
}

export function OrderModelFileFromJSON(json: any): OrderModelFile {
    return OrderModelFileFromJSONTyped(json, false);
}

export function OrderModelFileFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderModelFile {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'name': json['name'],
        'file': json['file'],
        'created': (new Date(json['created'])),
    };
}

export function OrderModelFileToJSON(value?: OrderModelFile | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'file': value.file,
    };
}

