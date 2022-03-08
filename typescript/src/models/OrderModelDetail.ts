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
    OrderModelFile,
    OrderModelFileFromJSON,
    OrderModelFileFromJSONTyped,
    OrderModelFileToJSON,
} from './OrderModelFile';
import {
    State800Enum,
    State800EnumFromJSON,
    State800EnumFromJSONTyped,
    State800EnumToJSON,
} from './State800Enum';

/**
 * 
 * @export
 * @interface OrderModelDetail
 */
export interface OrderModelDetail {
    /**
     * 
     * @type {number}
     * @memberof OrderModelDetail
     */
    readonly id: number;
    /**
     * 
     * @type {string}
     * @memberof OrderModelDetail
     */
    name: string;
    /**
     * 
     * @type {State800Enum}
     * @memberof OrderModelDetail
     */
    readonly state: State800Enum | null;
    /**
     * 
     * @type {string}
     * @memberof OrderModelDetail
     */
    website?: string | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModelDetail
     */
    widthMm?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModelDetail
     */
    heightMm?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModelDetail
     */
    depthMm?: number | null;
    /**
     * Resulting model after order is finished. Available when state is IN_PROGRESS.
     * @type {string}
     * @memberof OrderModelDetail
     */
    readonly model: string | null;
    /**
     * 
     * @type {Date}
     * @memberof OrderModelDetail
     */
    readonly created: Date;
    /**
     * 
     * @type {Date}
     * @memberof OrderModelDetail
     */
    readonly modified: Date;
    /**
     * 
     * @type {Array<OrderModelFile>}
     * @memberof OrderModelDetail
     */
    files: Array<OrderModelFile>;
}

export function OrderModelDetailFromJSON(json: any): OrderModelDetail {
    return OrderModelDetailFromJSONTyped(json, false);
}

export function OrderModelDetailFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderModelDetail {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'name': json['name'],
        'state': State800EnumFromJSON(json['state']),
        'website': !exists(json, 'website') ? undefined : json['website'],
        'widthMm': !exists(json, 'width_mm') ? undefined : json['width_mm'],
        'heightMm': !exists(json, 'height_mm') ? undefined : json['height_mm'],
        'depthMm': !exists(json, 'depth_mm') ? undefined : json['depth_mm'],
        'model': json['model'],
        'created': (new Date(json['created'])),
        'modified': (new Date(json['modified'])),
        'files': ((json['files'] as Array<any>).map(OrderModelFileFromJSON)),
    };
}

export function OrderModelDetailToJSON(value?: OrderModelDetail | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'name': value.name,
        'website': value.website,
        'width_mm': value.widthMm,
        'height_mm': value.heightMm,
        'depth_mm': value.depthMm,
        'files': ((value.files as Array<any>).map(OrderModelFileToJSON)),
    };
}
