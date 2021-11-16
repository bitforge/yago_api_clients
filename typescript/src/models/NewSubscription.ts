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
    PaymentMethodEnum,
    PaymentMethodEnumFromJSON,
    PaymentMethodEnumFromJSONTyped,
    PaymentMethodEnumToJSON,
    PlanEnum,
    PlanEnumFromJSON,
    PlanEnumFromJSONTyped,
    PlanEnumToJSON,
} from './';

/**
 * 
 * @export
 * @interface NewSubscription
 */
export interface NewSubscription {
    /**
     * 
     * @type {PlanEnum}
     * @memberof NewSubscription
     */
    plan: PlanEnum;
    /**
     * 
     * @type {PaymentMethodEnum}
     * @memberof NewSubscription
     */
    paymentMethod: PaymentMethodEnum;
    /**
     * 
     * @type {boolean}
     * @memberof NewSubscription
     */
    tosAccepted: boolean;
    /**
     * 
     * @type {string}
     * @memberof NewSubscription
     */
    readonly customerId: string;
    /**
     * 
     * @type {string}
     * @memberof NewSubscription
     */
    readonly subscriptionId: string;
    /**
     * 
     * @type {string}
     * @memberof NewSubscription
     */
    readonly clientSecret: string;
}

export function NewSubscriptionFromJSON(json: any): NewSubscription {
    return NewSubscriptionFromJSONTyped(json, false);
}

export function NewSubscriptionFromJSONTyped(json: any, ignoreDiscriminator: boolean): NewSubscription {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'plan': PlanEnumFromJSON(json['plan']),
        'paymentMethod': PaymentMethodEnumFromJSON(json['payment_method']),
        'tosAccepted': json['tos_accepted'],
        'customerId': json['customer_id'],
        'subscriptionId': json['subscription_id'],
        'clientSecret': json['client_secret'],
    };
}

export function NewSubscriptionToJSON(value?: NewSubscription | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'plan': PlanEnumToJSON(value.plan),
        'payment_method': PaymentMethodEnumToJSON(value.paymentMethod),
        'tos_accepted': value.tosAccepted,
    };
}

