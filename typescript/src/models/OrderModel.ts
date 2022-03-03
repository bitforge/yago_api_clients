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
    OrderModelStateEnum,
    OrderModelStateEnumFromJSON,
    OrderModelStateEnumFromJSONTyped,
    OrderModelStateEnumToJSON,
} from './OrderModelStateEnum';

/**
 * 
 * @export
 * @interface OrderModel
 */
export interface OrderModel {
    /**
     * 
     * @type {number}
     * @memberof OrderModel
     */
    readonly id: number;
    /**
     * 
     * @type {string}
     * @memberof OrderModel
     */
    name: string;
    /**
     * 
     * @type {number}
     * @memberof OrderModel
     */
    readonly order: number;
    /**
     * 
     * @type {OrderModelStateEnum}
     * @memberof OrderModel
     */
    readonly state: OrderModelStateEnum | null;
    /**
     * 
     * @type {string}
     * @memberof OrderModel
     */
    website?: string | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModel
     */
    widthMm?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModel
     */
    heightMm?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OrderModel
     */
    depthMm?: number | null;
    /**
     * Preview image of the model (iOS, gallery, sharing, SEO).
     * @type {string}
     * @memberof OrderModel
     */
    readonly image: string | null;
    /**
     * Must be a binary glTF file according to the Khronos Group standard.
     * @type {string}
     * @memberof OrderModel
     */
    readonly glb: string | null;
    /**
     * Must be a USDZ or Reality Composer file.
     * @type {string}
     * @memberof OrderModel
     */
    readonly usdz: string | null;
    /**
     * Source 3D Model, e.g. a ZIP-File with all meshes, materials and textures.
     * @type {string}
     * @memberof OrderModel
     */
    readonly source: string | null;
    /**
     * Resulting model after order is finished.
     * @type {string}
     * @memberof OrderModel
     */
    readonly model: string | null;
    /**
     * 
     * @type {Date}
     * @memberof OrderModel
     */
    readonly created: Date;
    /**
     * 
     * @type {Date}
     * @memberof OrderModel
     */
    readonly modified: Date;
}

export function OrderModelFromJSON(json: any): OrderModel {
    return OrderModelFromJSONTyped(json, false);
}

export function OrderModelFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderModel {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'name': json['name'],
        'order': json['order'],
        'state': OrderModelStateEnumFromJSON(json['state']),
        'website': !exists(json, 'website') ? undefined : json['website'],
        'widthMm': !exists(json, 'width_mm') ? undefined : json['width_mm'],
        'heightMm': !exists(json, 'height_mm') ? undefined : json['height_mm'],
        'depthMm': !exists(json, 'depth_mm') ? undefined : json['depth_mm'],
        'image': json['image'],
        'glb': json['glb'],
        'usdz': json['usdz'],
        'source': json['source'],
        'model': json['model'],
        'created': (new Date(json['created'])),
        'modified': (new Date(json['modified'])),
    };
}

export function OrderModelToJSON(value?: OrderModel | null): any {
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
    };
}

