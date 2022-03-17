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
 * @interface User
 */
export interface User {
    /**
     * 
     * @type {string}
     * @memberof User
     */
    readonly id?: string;
    /**
     * 
     * @type {string}
     * @memberof User
     */
    readonly email?: string;
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
     * @type {Date}
     * @memberof User
     */
    readonly dateJoined?: Date;
    /**
     * Deactivated users cannot login.
     * @type {boolean}
     * @memberof User
     */
    readonly isActive?: boolean;
    /**
     * Allow login to Genie AR CMS. Can be disabled for API users.
     * @type {boolean}
     * @memberof User
     */
    readonly isStaff?: boolean;
    /**
     * User can see and change anything. Only for Bitforge employees.
     * @type {boolean}
     * @memberof User
     */
    readonly isSuperuser?: boolean;
    /**
     * User can manage model orders. For designers & customer project managers.
     * @type {boolean}
     * @memberof User
     */
    readonly isContractor?: boolean;
}

export function UserFromJSON(json: any): User {
    return UserFromJSONTyped(json, false);
}

export function UserFromJSONTyped(json: any, ignoreDiscriminator: boolean): User {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': !exists(json, 'id') ? undefined : json['id'],
        'email': !exists(json, 'email') ? undefined : json['email'],
        'firstName': !exists(json, 'first_name') ? undefined : json['first_name'],
        'lastName': !exists(json, 'last_name') ? undefined : json['last_name'],
        'dateJoined': !exists(json, 'date_joined') ? undefined : (new Date(json['date_joined'])),
        'isActive': !exists(json, 'is_active') ? undefined : json['is_active'],
        'isStaff': !exists(json, 'is_staff') ? undefined : json['is_staff'],
        'isSuperuser': !exists(json, 'is_superuser') ? undefined : json['is_superuser'],
        'isContractor': !exists(json, 'is_contractor') ? undefined : json['is_contractor'],
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
        
        'first_name': value.firstName,
        'last_name': value.lastName,
    };
}

