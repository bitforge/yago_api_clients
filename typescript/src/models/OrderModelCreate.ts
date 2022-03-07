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
/**
 * 
 * @export
 * @interface OrderModelCreate
 */
export interface OrderModelCreate {
    /**
     * 
     * @type {string}
     * @memberof OrderModelCreate
     */
    name: string;
    /**
     * 
     * @type {number}
     * @memberof OrderModelCreate
     */
    order: number;
    /**
     * 
     * @type {string}
     * @memberof OrderModelCreate
     */
    website?: string | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModelCreate
     */
    widthMm?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModelCreate
     */
    heightMm?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModelCreate
     */
    depthMm?: number | null;
}

export function OrderModelCreateFromJSON(json: any): OrderModelCreate {
    return OrderModelCreateFromJSONTyped(json, false);
}

export function OrderModelCreateFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderModelCreate {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'name': json['name'],
        'order': json['order'],
        'website': !exists(json, 'website') ? undefined : json['website'],
        'widthMm': !exists(json, 'width_mm') ? undefined : json['width_mm'],
        'heightMm': !exists(json, 'height_mm') ? undefined : json['height_mm'],
        'depthMm': !exists(json, 'depth_mm') ? undefined : json['depth_mm'],
    };
}

export function OrderModelCreateToJSON(value?: OrderModelCreate | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'name': value.name,
        'order': value.order,
        'website': value.website,
        'width_mm': value.widthMm,
        'height_mm': value.heightMm,
        'depth_mm': value.depthMm,
    };
}

