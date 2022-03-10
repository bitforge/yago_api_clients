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
    PriceCurrencyEnum,
    PriceCurrencyEnumFromJSON,
    PriceCurrencyEnumFromJSONTyped,
    PriceCurrencyEnumToJSON,
} from './PriceCurrencyEnum';

/**
 * 
 * @export
 * @interface OrderUpdate
 */
export interface OrderUpdate {
    /**
     * 
     * @type {string}
     * @memberof OrderUpdate
     */
    price: string;
    /**
     * 
     * @type {PriceCurrencyEnum}
     * @memberof OrderUpdate
     */
    priceCurrency?: PriceCurrencyEnum;
}

export function OrderUpdateFromJSON(json: any): OrderUpdate {
    return OrderUpdateFromJSONTyped(json, false);
}

export function OrderUpdateFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderUpdate {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'price': json['price'],
        'priceCurrency': !exists(json, 'price_currency') ? undefined : PriceCurrencyEnumFromJSON(json['price_currency']),
    };
}

export function OrderUpdateToJSON(value?: OrderUpdate | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'price': value.price,
        'price_currency': PriceCurrencyEnumToJSON(value.priceCurrency),
    };
}

