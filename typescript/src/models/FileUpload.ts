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
 * @interface FileUpload
 */
export interface FileUpload {
    /**
     *
     * @type {string}
     * @memberof FileUpload
     */
    fileUrl: string;
}

export function FileUploadFromJSON(json: any): FileUpload {
    return FileUploadFromJSONTyped(json, false);
}

export function FileUploadFromJSONTyped(json: any, ignoreDiscriminator: boolean): FileUpload {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        fileUrl: json['file_url'],
    };
}

export function FileUploadToJSON(value?: FileUpload | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        file_url: value.fileUrl,
    };
}
