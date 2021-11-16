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
    CountryEnum,
    CountryEnumFromJSON,
    CountryEnumFromJSONTyped,
    CountryEnumToJSON,
} from './';

/**
 * 
 * @export
 * @interface PatchedAddress
 */
export interface PatchedAddress {
    /**
     * 
     * @type {string}
     * @memberof PatchedAddress
     */
    readonly id?: string;
    /**
     * Full person name.
     * @type {string}
     * @memberof PatchedAddress
     */
    name?: string;
    /**
     * 
     * @type {string}
     * @memberof PatchedAddress
     */
    email?: string | null;
    /**
     * CH or international format (e.g 079 123 45 67 / +41791234567)
     * @type {string}
     * @memberof PatchedAddress
     */
    phone?: string | null;
    /**
     * Address line 1 (e.g., street, PO Box, or company name).
     * @type {string}
     * @memberof PatchedAddress
     */
    line1?: string | null;
    /**
     * Address line 2 (e.g., apartment, suite, unit, or building).
     * @type {string}
     * @memberof PatchedAddress
     */
    line2?: string | null;
    /**
     * Postal code.
     * @type {string}
     * @memberof PatchedAddress
     */
    postalCode?: string | null;
    /**
     * City, district, suburb, town, or village.
     * @type {string}
     * @memberof PatchedAddress
     */
    city?: string | null;
    /**
     * State, county, province, or region.
     * @type {string}
     * @memberof PatchedAddress
     */
    state?: string | null;
    /**
     * 
     * @type {CountryEnum}
     * @memberof PatchedAddress
     */
    country?: CountryEnum;
}

export function PatchedAddressFromJSON(json: any): PatchedAddress {
    return PatchedAddressFromJSONTyped(json, false);
}

export function PatchedAddressFromJSONTyped(json: any, ignoreDiscriminator: boolean): PatchedAddress {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': !exists(json, 'id') ? undefined : json['id'],
        'name': !exists(json, 'name') ? undefined : json['name'],
        'email': !exists(json, 'email') ? undefined : json['email'],
        'phone': !exists(json, 'phone') ? undefined : json['phone'],
        'line1': !exists(json, 'line1') ? undefined : json['line1'],
        'line2': !exists(json, 'line2') ? undefined : json['line2'],
        'postalCode': !exists(json, 'postal_code') ? undefined : json['postal_code'],
        'city': !exists(json, 'city') ? undefined : json['city'],
        'state': !exists(json, 'state') ? undefined : json['state'],
        'country': !exists(json, 'country') ? undefined : CountryEnumFromJSON(json['country']),
    };
}

export function PatchedAddressToJSON(value?: PatchedAddress | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'name': value.name,
        'email': value.email,
        'phone': value.phone,
        'line1': value.line1,
        'line2': value.line2,
        'postal_code': value.postalCode,
        'city': value.city,
        'state': value.state,
        'country': CountryEnumToJSON(value.country),
    };
}

