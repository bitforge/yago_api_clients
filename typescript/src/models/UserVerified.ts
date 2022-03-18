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
 * @interface UserVerified
 */
export interface UserVerified {
    /**
     * 
     * @type {string}
     * @memberof UserVerified
     */
    readonly id: string;
    /**
     * 
     * @type {string}
     * @memberof UserVerified
     */
    email: string;
    /**
     * 
     * @type {string}
     * @memberof UserVerified
     */
    firstName?: string;
    /**
     * 
     * @type {string}
     * @memberof UserVerified
     */
    lastName?: string;
    /**
     * 
     * @type {Date}
     * @memberof UserVerified
     */
    dateJoined?: Date;
    /**
     * 
     * @type {string}
     * @memberof UserVerified
     */
    readonly access: string;
    /**
     * 
     * @type {string}
     * @memberof UserVerified
     */
    readonly refresh: string;
}

export function UserVerifiedFromJSON(json: any): UserVerified {
    return UserVerifiedFromJSONTyped(json, false);
}

export function UserVerifiedFromJSONTyped(json: any, ignoreDiscriminator: boolean): UserVerified {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'email': json['email'],
        'firstName': !exists(json, 'first_name') ? undefined : json['first_name'],
        'lastName': !exists(json, 'last_name') ? undefined : json['last_name'],
        'dateJoined': !exists(json, 'date_joined') ? undefined : (new Date(json['date_joined'])),
        'access': json['access'],
        'refresh': json['refresh'],
    };
}

export function UserVerifiedToJSON(value?: UserVerified | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'email': value.email,
        'first_name': value.firstName,
        'last_name': value.lastName,
        'date_joined': value.dateJoined === undefined ? undefined : (value.dateJoined.toISOString()),
    };
}

