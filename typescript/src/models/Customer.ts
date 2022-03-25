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
 * @interface Customer
 */
export interface Customer {
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    readonly id: string;
    /**
     * Name will be visible as title in gallery.
     * @type {string}
     * @memberof Customer
     */
    name: string;
    /**
     * Defines the number of available models and AR views. <a href="mailto:info@bitforge.ch">Contact us</a> to upgrade your plan.
     * @type {string}
     * @memberof Customer
     */
    plan?: string | null;
    /**
     * Only for internal use
     * @type {string}
     * @memberof Customer
     */
    slug: string;
    /**
     * Image will be visible in gallery.
     * @type {string}
     * @memberof Customer
     */
    image?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    readonly imageThumb: string;
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    readonly imagePreview: string;
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    website?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    description?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    contactAddress?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    billingAddress?: string | null;
}

export function CustomerFromJSON(json: any): Customer {
    return CustomerFromJSONTyped(json, false);
}

export function CustomerFromJSONTyped(json: any, ignoreDiscriminator: boolean): Customer {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'name': json['name'],
        'plan': !exists(json, 'plan') ? undefined : json['plan'],
        'slug': json['slug'],
        'image': !exists(json, 'image') ? undefined : json['image'],
        'imageThumb': json['image_thumb'],
        'imagePreview': json['image_preview'],
        'website': !exists(json, 'website') ? undefined : json['website'],
        'description': !exists(json, 'description') ? undefined : json['description'],
        'contactAddress': !exists(json, 'contact_address') ? undefined : json['contact_address'],
        'billingAddress': !exists(json, 'billing_address') ? undefined : json['billing_address'],
    };
}

export function CustomerToJSON(value?: Customer | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'name': value.name,
        'plan': value.plan,
        'slug': value.slug,
        'image': value.image,
        'website': value.website,
        'description': value.description,
        'contact_address': value.contactAddress,
        'billing_address': value.billingAddress,
    };
}

