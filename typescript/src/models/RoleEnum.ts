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

/**
 * 
 * @export
 * @enum {string}
 */
export enum RoleEnum {
    Owner = 'OWNER',
    Member = 'MEMBER',
    Manager = 'MANAGER',
    Designer = 'DESIGNER'
}

export function RoleEnumFromJSON(json: any): RoleEnum {
    return RoleEnumFromJSONTyped(json, false);
}

export function RoleEnumFromJSONTyped(json: any, ignoreDiscriminator: boolean): RoleEnum {
    return json as RoleEnum;
}

export function RoleEnumToJSON(value?: RoleEnum | null): any {
    return value as any;
}

