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
import { OrderComment, OrderCommentFromJSON, OrderCommentFromJSONTyped, OrderCommentToJSON } from './OrderComment';
import { OrderModel, OrderModelFromJSON, OrderModelFromJSONTyped, OrderModelToJSON } from './OrderModel';
import { OrderState, OrderStateFromJSON, OrderStateFromJSONTyped, OrderStateToJSON } from './OrderState';

/**
 *
 * @export
 * @interface OrderDetail
 */
export interface OrderDetail {
    /**
     *
     * @type {number}
     * @memberof OrderDetail
     */
    readonly id: number;
    /**
     *
     * @type {string}
     * @memberof OrderDetail
     */
    project: string;
    /**
     *
     * @type {OrderState}
     * @memberof OrderDetail
     */
    readonly state: OrderState | null;
    /**
     * Estimation of order in CHF including taxes. Payment price for User before starting production.
     * @type {string}
     * @memberof OrderDetail
     */
    price?: string | null;
    /**
     *
     * @type {string}
     * @memberof OrderDetail
     */
    readonly priceCurrency: string | null;
    /**
     *
     * @type {Date}
     * @memberof OrderDetail
     */
    readonly created: Date;
    /**
     *
     * @type {Date}
     * @memberof OrderDetail
     */
    readonly modified: Date;
    /**
     *
     * @type {Array<OrderModel>}
     * @memberof OrderDetail
     */
    models: Array<OrderModel>;
    /**
     *
     * @type {Array<OrderComment>}
     * @memberof OrderDetail
     */
    comments: Array<OrderComment>;
}

export function OrderDetailFromJSON(json: any): OrderDetail {
    return OrderDetailFromJSONTyped(json, false);
}

export function OrderDetailFromJSONTyped(json: any, ignoreDiscriminator: boolean): OrderDetail {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        id: json['id'],
        project: json['project'],
        state: OrderStateFromJSON(json['state']),
        price: !exists(json, 'price') ? undefined : json['price'],
        priceCurrency: json['price_currency'],
        created: new Date(json['created']),
        modified: new Date(json['modified']),
        models: (json['models'] as Array<any>).map(OrderModelFromJSON),
        comments: (json['comments'] as Array<any>).map(OrderCommentFromJSON),
    };
}

export function OrderDetailToJSON(value?: OrderDetail | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        project: value.project,
        price: value.price,
        models: (value.models as Array<any>).map(OrderModelToJSON),
        comments: (value.comments as Array<any>).map(OrderCommentToJSON),
    };
}
