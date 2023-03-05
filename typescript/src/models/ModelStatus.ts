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
 *
 * @export
 * @enum {string}
 */
export enum ModelStatus {
    Draft = 'DRAFT',
    Ready = 'READY',
    Online = 'ONLINE',
}

export function ModelStatusFromJSON(json: any): ModelStatus {
    return ModelStatusFromJSONTyped(json, false);
}

export function ModelStatusFromJSONTyped(json: any, ignoreDiscriminator: boolean): ModelStatus {
    return json as ModelStatus;
}

export function ModelStatusToJSON(value?: ModelStatus | null): any {
    return value as any;
}
