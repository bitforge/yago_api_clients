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
 * @interface OrderModelUpdate
 */
export interface OrderModelUpdate {
    /**
     *
     * @type {string}
     * @memberof OrderModelUpdate
     */
    name: string;
    /**
     *
     * @type {string}
     * @memberof OrderModelUpdate
     */
    website?: string | null;
    /**
     *
     * @type {number}
     * @memberof OrderModelUpdate
     */
    widthMm?: number | null;
    /**
     *
     * @type {number}
     * @memberof OrderModelUpdate
     */
    heightMm?: number | null;
    /**
     *
     * @type {number}
     * @memberof OrderModelUpdate
     */
    depthMm?: number | null;
}

export function OrderModelUpdateFromJSON(json: any): OrderModelUpdate {
    return OrderModelUpdateFromJSONTyped(json, false);
}

export function OrderModelUpdateFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderModelUpdate {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        name: json['name'],
        website: !exists(json, 'website') ? undefined : json['website'],
        widthMm: !exists(json, 'width_mm') ? undefined : json['width_mm'],
        heightMm: !exists(json, 'height_mm') ? undefined : json['height_mm'],
        depthMm: !exists(json, 'depth_mm') ? undefined : json['depth_mm'],
    };
}

export function OrderModelUpdateToJSON(value?: OrderModelUpdate | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        name: value.name,
        website: value.website,
        width_mm: value.widthMm,
        height_mm: value.heightMm,
        depth_mm: value.depthMm,
    };
}
