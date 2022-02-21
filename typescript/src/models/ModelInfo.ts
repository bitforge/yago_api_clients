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
 * @interface ModelInfo
 */
export interface ModelInfo {
    /**
     * 
     * @type {string}
     * @memberof ModelInfo
     */
    siteUrl: string;
    /**
     * 
     * @type {string}
     * @memberof ModelInfo
     */
    quicklookLink: string;
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof ModelInfo
     */
    qrConfig: { [key: string]: any; };
}

export function ModelInfoFromJSON(json: any): ModelInfo {
    return ModelInfoFromJSONTyped(json, false);
}

export function ModelInfoFromJSONTyped(json: any, ignoreDiscriminator: boolean): ModelInfo {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'siteUrl': json['site_url'],
        'quicklookLink': json['quicklook_link'],
        'qrConfig': json['qr_config'],
    };
}

export function ModelInfoToJSON(value?: ModelInfo | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'site_url': value.siteUrl,
        'quicklook_link': value.quicklookLink,
        'qr_config': value.qrConfig,
    };
}

