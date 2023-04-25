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

/**
 * * `NONE` - None (Not subscribed)
 * * `STRIPE` - Credit card (stripe)
 * * `BILL` - Pay by bill
 * @export
 * @enum {string}
 */
export enum PaymentMethodEnum {
    None = 'NONE',
    Stripe = 'STRIPE',
    Bill = 'BILL',
}

export function PaymentMethodEnumFromJSON(json: any): PaymentMethodEnum {
    return PaymentMethodEnumFromJSONTyped(json, false);
}

export function PaymentMethodEnumFromJSONTyped(json: any, ignoreDiscriminator: boolean): PaymentMethodEnum {
    return json as PaymentMethodEnum;
}

export function PaymentMethodEnumToJSON(value?: PaymentMethodEnum | null): any {
    return value as any;
}
