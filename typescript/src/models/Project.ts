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
 * @interface Project
 */
export interface Project {
    /**
     * 
     * @type {string}
     * @memberof Project
     */
    readonly id: string;
    /**
     * Name will be visible as title in gallery.
     * @type {string}
     * @memberof Project
     */
    name: string;
    /**
     * Will be part of asset urls. Cannot be changed once created.
     * @type {string}
     * @memberof Project
     */
    slug: string;
    /**
     * Image will be visible in gallery.
     * @type {string}
     * @memberof Project
     */
    image?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Project
     */
    readonly imageThumb: string;
    /**
     * 
     * @type {string}
     * @memberof Project
     */
    readonly imagePreview: string;
    /**
     * 
     * @type {string}
     * @memberof Project
     */
    website?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Project
     */
    description?: string | null;
    /**
     * Activates a publicly available gallery with all project models in state READY or ONLINE.
     * @type {boolean}
     * @memberof Project
     */
    gallery?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof Project
     */
    translationsDe?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof Project
     */
    translationsEn?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof Project
     */
    translationsFr?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof Project
     */
    translationsIt?: boolean;
    /**
     * Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print).
     * @type {boolean}
     * @memberof Project
     */
    backlinkUrls?: boolean;
    /**
     * 
     * @type {Array<number>}
     * @memberof Project
     */
    ordersInReview: Array<number>;
    /**
     * 
     * @type {Date}
     * @memberof Project
     */
    readonly created: Date;
    /**
     * 
     * @type {Date}
     * @memberof Project
     */
    readonly modified: Date;
}

export function ProjectFromJSON(json: any): Project {
    return ProjectFromJSONTyped(json, false);
}

export function ProjectFromJSONTyped(json: any, ignoreDiscriminator: boolean): Project {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'name': json['name'],
        'slug': json['slug'],
        'image': !exists(json, 'image') ? undefined : json['image'],
        'imageThumb': json['image_thumb'],
        'imagePreview': json['image_preview'],
        'website': !exists(json, 'website') ? undefined : json['website'],
        'description': !exists(json, 'description') ? undefined : json['description'],
        'gallery': !exists(json, 'gallery') ? undefined : json['gallery'],
        'translationsDe': !exists(json, 'translations_de') ? undefined : json['translations_de'],
        'translationsEn': !exists(json, 'translations_en') ? undefined : json['translations_en'],
        'translationsFr': !exists(json, 'translations_fr') ? undefined : json['translations_fr'],
        'translationsIt': !exists(json, 'translations_it') ? undefined : json['translations_it'],
        'backlinkUrls': !exists(json, 'backlink_urls') ? undefined : json['backlink_urls'],
        'ordersInReview': json['orders_in_review'],
        'created': (new Date(json['created'])),
        'modified': (new Date(json['modified'])),
    };
}

export function ProjectToJSON(value?: Project | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'name': value.name,
        'slug': value.slug,
        'image': value.image,
        'website': value.website,
        'description': value.description,
        'gallery': value.gallery,
        'translations_de': value.translationsDe,
        'translations_en': value.translationsEn,
        'translations_fr': value.translationsFr,
        'translations_it': value.translationsIt,
        'backlink_urls': value.backlinkUrls,
        'orders_in_review': value.ordersInReview,
    };
}

