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
 * @interface OrderCommentCreate
 */
export interface OrderCommentCreate {
    /**
     * 
     * @type {string}
     * @memberof OrderCommentCreate
     */
    comment: string;
}

export function OrderCommentCreateFromJSON(json: any): OrderCommentCreate {
    return OrderCommentCreateFromJSONTyped(json, false);
}

export function OrderCommentCreateFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderCommentCreate {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'comment': json['comment'],
    };
}

export function OrderCommentCreateToJSON(value?: OrderCommentCreate | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'comment': value.comment,
    };
}

