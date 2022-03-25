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
 * @interface OrderComment
 */
export interface OrderComment {
    /**
     * 
     * @type {boolean}
     * @memberof OrderComment
     */
    readonly yagoTeam: boolean;
    /**
     * 
     * @type {string}
     * @memberof OrderComment
     */
    readonly userName: string;
    /**
     * 
     * @type {Date}
     * @memberof OrderComment
     */
    readonly date: Date;
    /**
     * 
     * @type {string}
     * @memberof OrderComment
     */
    comment: string;
}

export function OrderCommentFromJSON(json: any): OrderComment {
    return OrderCommentFromJSONTyped(json, false);
}

export function OrderCommentFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderComment {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'yagoTeam': json['yago_team'],
        'userName': json['user_name'],
        'date': (new Date(json['date'])),
        'comment': json['comment'],
    };
}

export function OrderCommentToJSON(value?: OrderComment | null): any {
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

