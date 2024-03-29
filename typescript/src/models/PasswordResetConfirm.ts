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
 * Serializer for confirming a password reset attempt.
 * @export
 * @interface PasswordResetConfirm
 */
export interface PasswordResetConfirm {
    /**
     *
     * @type {string}
     * @memberof PasswordResetConfirm
     */
    newPassword1: string;
    /**
     *
     * @type {string}
     * @memberof PasswordResetConfirm
     */
    newPassword2: string;
    /**
     *
     * @type {string}
     * @memberof PasswordResetConfirm
     */
    uid: string;
    /**
     *
     * @type {string}
     * @memberof PasswordResetConfirm
     */
    token: string;
}

export function PasswordResetConfirmFromJSON(json: any): PasswordResetConfirm {
    return PasswordResetConfirmFromJSONTyped(json, false);
}

export function PasswordResetConfirmFromJSONTyped(json: any, ignoreDiscriminator: boolean): PasswordResetConfirm {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        newPassword1: json['new_password1'],
        newPassword2: json['new_password2'],
        uid: json['uid'],
        token: json['token'],
    };
}

export function PasswordResetConfirmToJSON(value?: PasswordResetConfirm | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        new_password1: value.newPassword1,
        new_password2: value.newPassword2,
        uid: value.uid,
        token: value.token,
    };
}
