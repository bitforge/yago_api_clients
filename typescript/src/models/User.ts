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
 * @interface User
 */
export interface User {
    /**
     *
     * @type {string}
     * @memberof User
     */
    readonly id: string;
    /**
     *
     * @type {string}
     * @memberof User
     */
    readonly email: string;
    /**
     *
     * @type {string}
     * @memberof User
     */
    firstName?: string;
    /**
     *
     * @type {string}
     * @memberof User
     */
    lastName?: string;
    /**
     *
     * @type {string}
     * @memberof User
     */
    readonly customerName: string;
    /**
     *
     * @type {Date}
     * @memberof User
     */
    readonly dateJoined: Date;
    /**
     * Deactivated users cannot login.
     * @type {boolean}
     * @memberof User
     */
    readonly isActive: boolean;
    /**
     * Allow login to Yago Admin. For Admins only.
     * @type {boolean}
     * @memberof User
     */
    readonly isStaff: boolean;
    /**
     * User can see and change anything. Only for Bitforge employees.
     * @type {boolean}
     * @memberof User
     */
    readonly isSuperuser: boolean;
    /**
     * User can manage model orders. For designers & customer project managers.
     * @type {boolean}
     * @memberof User
     */
    readonly isContractor: boolean;
}

export function UserFromJSON(json: any): User {
    return UserFromJSONTyped(json, false);
}

export function UserFromJSONTyped(json: any, ignoreDiscriminator: boolean): User {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        id: json['id'],
        email: json['email'],
        firstName: !exists(json, 'first_name') ? undefined : json['first_name'],
        lastName: !exists(json, 'last_name') ? undefined : json['last_name'],
        customerName: json['customer_name'],
        dateJoined: new Date(json['date_joined']),
        isActive: json['is_active'],
        isStaff: json['is_staff'],
        isSuperuser: json['is_superuser'],
        isContractor: json['is_contractor'],
    };
}

export function UserToJSON(value?: User | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        first_name: value.firstName,
        last_name: value.lastName,
    };
}
