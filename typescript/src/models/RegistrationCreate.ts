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
 * @interface RegistrationCreate
 */
export interface RegistrationCreate {
    /**
     * Your company name or something like "3D Guitar Store".
     * @type {string}
     * @memberof RegistrationCreate
     */
    customer?: string | null;
    /**
     *
     * @type {string}
     * @memberof RegistrationCreate
     */
    email: string;
    /**
     *
     * @type {string}
     * @memberof RegistrationCreate
     */
    firstName?: string;
    /**
     *
     * @type {string}
     * @memberof RegistrationCreate
     */
    lastName?: string;
    /**
     *
     * @type {string}
     * @memberof RegistrationCreate
     */
    password: string;
    /**
     *
     * @type {string}
     * @memberof RegistrationCreate
     */
    redirectUrl: string;
}

export function RegistrationCreateFromJSON(json: any): RegistrationCreate {
    return RegistrationCreateFromJSONTyped(json, false);
}

export function RegistrationCreateFromJSONTyped(json: any, ignoreDiscriminator: boolean): RegistrationCreate {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        customer: !exists(json, 'customer') ? undefined : json['customer'],
        email: json['email'],
        firstName: !exists(json, 'first_name') ? undefined : json['first_name'],
        lastName: !exists(json, 'last_name') ? undefined : json['last_name'],
        password: json['password'],
        redirectUrl: json['redirect_url'],
    };
}

export function RegistrationCreateToJSON(value?: RegistrationCreate | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        customer: value.customer,
        email: value.email,
        first_name: value.firstName,
        last_name: value.lastName,
        password: value.password,
        redirect_url: value.redirectUrl,
    };
}
