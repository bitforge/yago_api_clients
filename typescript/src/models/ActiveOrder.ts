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
import { OrderState, OrderStateFromJSON, OrderStateFromJSONTyped, OrderStateToJSON } from './OrderState';

/**
 *
 * @export
 * @interface ActiveOrder
 */
export interface ActiveOrder {
    /**
     *
     * @type {number}
     * @memberof ActiveOrder
     */
    readonly id: number;
    /**
     *
     * @type {OrderState}
     * @memberof ActiveOrder
     */
    readonly state: OrderState | null;
}

export function ActiveOrderFromJSON(json: any): ActiveOrder {
    return ActiveOrderFromJSONTyped(json, false);
}

export function ActiveOrderFromJSONTyped(json: any, ignoreDiscriminator: boolean): ActiveOrder {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        id: json['id'],
        state: OrderStateFromJSON(json['state']),
    };
}

export function ActiveOrderToJSON(value?: ActiveOrder | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {};
}
