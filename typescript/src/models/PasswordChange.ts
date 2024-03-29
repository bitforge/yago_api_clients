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
 * Serializer for requesting a password reset e-mail.
 * @export
 * @interface PasswordChange
 */
export interface PasswordChange {
    /**
     *
     * @type {string}
     * @memberof PasswordChange
     */
    oldPassword: string;
    /**
     *
     * @type {string}
     * @memberof PasswordChange
     */
    newPassword1: string;
    /**
     *
     * @type {string}
     * @memberof PasswordChange
     */
    newPassword2: string;
}

export function PasswordChangeFromJSON(json: any): PasswordChange {
    return PasswordChangeFromJSONTyped(json, false);
}

export function PasswordChangeFromJSONTyped(json: any, ignoreDiscriminator: boolean): PasswordChange {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        oldPassword: json['old_password'],
        newPassword1: json['new_password1'],
        newPassword2: json['new_password2'],
    };
}

export function PasswordChangeToJSON(value?: PasswordChange | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        old_password: value.oldPassword,
        new_password1: value.newPassword1,
        new_password2: value.newPassword2,
    };
}
