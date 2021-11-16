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
 * @interface ProjectUpdate
 */
export interface ProjectUpdate {
    /**
     * Name will be visible as title in gallery.
     * @type {string}
     * @memberof ProjectUpdate
     */
    name: string;
    /**
     * 
     * @type {string}
     * @memberof ProjectUpdate
     */
    description?: string | null;
    /**
     * 
     * @type {string}
     * @memberof ProjectUpdate
     */
    website?: string | null;
    /**
     * Activates a publicly available gallery with all project models in state READY or ONLINE.
     * @type {boolean}
     * @memberof ProjectUpdate
     */
    gallery?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof ProjectUpdate
     */
    translationsDe?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof ProjectUpdate
     */
    translationsEn?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof ProjectUpdate
     */
    translationsFr?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof ProjectUpdate
     */
    translationsIt?: boolean;
    /**
     * Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print).
     * @type {boolean}
     * @memberof ProjectUpdate
     */
    backlinkUrls?: boolean;
}

export function ProjectUpdateFromJSON(json: any): ProjectUpdate {
    return ProjectUpdateFromJSONTyped(json, false);
}

export function ProjectUpdateFromJSONTyped(json: any, ignoreDiscriminator: boolean): ProjectUpdate {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'name': json['name'],
        'description': !exists(json, 'description') ? undefined : json['description'],
        'website': !exists(json, 'website') ? undefined : json['website'],
        'gallery': !exists(json, 'gallery') ? undefined : json['gallery'],
        'translationsDe': !exists(json, 'translations_de') ? undefined : json['translations_de'],
        'translationsEn': !exists(json, 'translations_en') ? undefined : json['translations_en'],
        'translationsFr': !exists(json, 'translations_fr') ? undefined : json['translations_fr'],
        'translationsIt': !exists(json, 'translations_it') ? undefined : json['translations_it'],
        'backlinkUrls': !exists(json, 'backlink_urls') ? undefined : json['backlink_urls'],
    };
}

export function ProjectUpdateToJSON(value?: ProjectUpdate | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'name': value.name,
        'description': value.description,
        'website': value.website,
        'gallery': value.gallery,
        'translations_de': value.translationsDe,
        'translations_en': value.translationsEn,
        'translations_fr': value.translationsFr,
        'translations_it': value.translationsIt,
        'backlink_urls': value.backlinkUrls,
    };
}

