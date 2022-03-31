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
import {
    ModelStatus,
    ModelStatusFromJSON,
    ModelStatusFromJSONTyped,
    ModelStatusToJSON,
} from './ModelStatus';

/**
 * 
 * @export
 * @interface Model
 */
export interface Model {
    /**
     * 
     * @type {string}
     * @memberof Model
     */
    readonly id: string;
    /**
     * The project this model belongs to. Cannot be changed once created.
     * @type {string}
     * @memberof Model
     */
    project: string;
    /**
     * 
     * @type {string}
     * @memberof Model
     */
    readonly name: string;
    /**
     * Name will be visible in Android as title.
     * @type {string}
     * @memberof Model
     */
    nameDe?: string | null;
    /**
     * Name will be visible in Android as title.
     * @type {string}
     * @memberof Model
     */
    nameEn?: string | null;
    /**
     * Name will be visible in Android as title.
     * @type {string}
     * @memberof Model
     */
    nameFr?: string | null;
    /**
     * Name will be visible in Android as title.
     * @type {string}
     * @memberof Model
     */
    nameIt?: string | null;
    /**
     * Unique Short-URL for embedding. Cannot be changed once created.
     * @type {string}
     * @memberof Model
     */
    slug?: string;
    /**
     * Preview image of the model (iOS, gallery, sharing, SEO).
     * @type {string}
     * @memberof Model
     */
    image?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Model
     */
    readonly imageThumb: string;
    /**
     * 
     * @type {string}
     * @memberof Model
     */
    readonly imagePreview: string;
    /**
     * True when model is in order and work is still in progress. False when order is completed.
     * @type {boolean}
     * @memberof Model
     */
    preview?: boolean;
    /**
     * DRAFT=In development, READY=Modelling complete, ONLINE=Active use.
     * @type {ModelStatus}
     * @memberof Model
     */
    status?: ModelStatus | null;
    /**
     * 
     * @type {string}
     * @memberof Model
     */
    readonly description: string;
    /**
     * Used when shared as link and for SEO.
     * @type {string}
     * @memberof Model
     */
    descriptionDe?: string | null;
    /**
     * Used when shared as link and for SEO.
     * @type {string}
     * @memberof Model
     */
    descriptionEn?: string | null;
    /**
     * Used when shared as link and for SEO.
     * @type {string}
     * @memberof Model
     */
    descriptionFr?: string | null;
    /**
     * Used when shared as link and for SEO.
     * @type {string}
     * @memberof Model
     */
    descriptionIt?: string | null;
    /**
     * Use for custom sort order.
     * @type {number}
     * @memberof Model
     */
    number?: number | null;
    /**
     * 
     * @type {string}
     * @memberof Model
     */
    readonly siteUrl: string;
    /**
     * Link to the product on your site. Required when using standalone QR codes (e.g. Print).
     * @type {string}
     * @memberof Model
     */
    siteUrlDe?: string | null;
    /**
     * Link to the product on your site. Required when using standalone QR codes (e.g. Print).
     * @type {string}
     * @memberof Model
     */
    siteUrlEn?: string | null;
    /**
     * Link to the product on your site. Required when using standalone QR codes (e.g. Print).
     * @type {string}
     * @memberof Model
     */
    siteUrlFr?: string | null;
    /**
     * Link to the product on your site. Required when using standalone QR codes (e.g. Print).
     * @type {string}
     * @memberof Model
     */
    siteUrlIt?: string | null;
    /**
     * Stock-keeping unit. The identfier of the product in external webstore.
     * @type {string}
     * @memberof Model
     */
    sku?: string | null;
    /**
     * Display price. The effective price is determined by the external webstore.
     * @type {string}
     * @memberof Model
     */
    price?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Model
     */
    readonly priceCurrency: string;
    /**
     * Let's the user scale the model in AR when enabled.
     * @type {boolean}
     * @memberof Model
     */
    scaleable?: boolean;
    /**
     * Must be a binary glTF file according to the Khronos Group standard.
     * @type {string}
     * @memberof Model
     */
    glb?: string | null;
    /**
     * Must be a USDZ or Reality Composer file.
     * @type {string}
     * @memberof Model
     */
    usdz?: string | null;
    /**
     * Source of 3D Model (Blender, Maya, Cinema 4D, CAD etc,). Use archive for multiple files.
     * @type {string}
     * @memberof Model
     */
    model?: string | null;
    /**
     * Unity Asset Bundle for Android
     * @type {string}
     * @memberof Model
     */
    unityIos?: string | null;
    /**
     * Unity Asset Bundle for iOS
     * @type {string}
     * @memberof Model
     */
    unityAndroid?: string | null;
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof Model
     */
    readonly arbuttonConfig: { [key: string]: any; };
    /**
     * 
     * @type {Date}
     * @memberof Model
     */
    readonly created: Date;
    /**
     * 
     * @type {Date}
     * @memberof Model
     */
    readonly modified: Date;
}

export function ModelFromJSON(json: any): Model {
    return ModelFromJSONTyped(json, false);
}

export function ModelFromJSONTyped(json: any, ignoreDiscriminator: boolean): Model {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'project': json['project'],
        'name': json['name'],
        'nameDe': !exists(json, 'name_de') ? undefined : json['name_de'],
        'nameEn': !exists(json, 'name_en') ? undefined : json['name_en'],
        'nameFr': !exists(json, 'name_fr') ? undefined : json['name_fr'],
        'nameIt': !exists(json, 'name_it') ? undefined : json['name_it'],
        'slug': !exists(json, 'slug') ? undefined : json['slug'],
        'image': !exists(json, 'image') ? undefined : json['image'],
        'imageThumb': json['image_thumb'],
        'imagePreview': json['image_preview'],
        'preview': !exists(json, 'preview') ? undefined : json['preview'],
        'status': !exists(json, 'status') ? undefined : ModelStatusFromJSON(json['status']),
        'description': json['description'],
        'descriptionDe': !exists(json, 'description_de') ? undefined : json['description_de'],
        'descriptionEn': !exists(json, 'description_en') ? undefined : json['description_en'],
        'descriptionFr': !exists(json, 'description_fr') ? undefined : json['description_fr'],
        'descriptionIt': !exists(json, 'description_it') ? undefined : json['description_it'],
        'number': !exists(json, 'number') ? undefined : json['number'],
        'siteUrl': json['site_url'],
        'siteUrlDe': !exists(json, 'site_url_de') ? undefined : json['site_url_de'],
        'siteUrlEn': !exists(json, 'site_url_en') ? undefined : json['site_url_en'],
        'siteUrlFr': !exists(json, 'site_url_fr') ? undefined : json['site_url_fr'],
        'siteUrlIt': !exists(json, 'site_url_it') ? undefined : json['site_url_it'],
        'sku': !exists(json, 'sku') ? undefined : json['sku'],
        'price': !exists(json, 'price') ? undefined : json['price'],
        'priceCurrency': json['price_currency'],
        'scaleable': !exists(json, 'scaleable') ? undefined : json['scaleable'],
        'glb': !exists(json, 'glb') ? undefined : json['glb'],
        'usdz': !exists(json, 'usdz') ? undefined : json['usdz'],
        'model': !exists(json, 'model') ? undefined : json['model'],
        'unityIos': !exists(json, 'unity_ios') ? undefined : json['unity_ios'],
        'unityAndroid': !exists(json, 'unity_android') ? undefined : json['unity_android'],
        'arbuttonConfig': json['arbutton_config'],
        'created': (new Date(json['created'])),
        'modified': (new Date(json['modified'])),
    };
}

export function ModelToJSON(value?: Model | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'project': value.project,
        'name_de': value.nameDe,
        'name_en': value.nameEn,
        'name_fr': value.nameFr,
        'name_it': value.nameIt,
        'slug': value.slug,
        'image': value.image,
        'preview': value.preview,
        'status': ModelStatusToJSON(value.status),
        'description_de': value.descriptionDe,
        'description_en': value.descriptionEn,
        'description_fr': value.descriptionFr,
        'description_it': value.descriptionIt,
        'number': value.number,
        'site_url_de': value.siteUrlDe,
        'site_url_en': value.siteUrlEn,
        'site_url_fr': value.siteUrlFr,
        'site_url_it': value.siteUrlIt,
        'sku': value.sku,
        'price': value.price,
        'scaleable': value.scaleable,
        'glb': value.glb,
        'usdz': value.usdz,
        'model': value.model,
        'unity_ios': value.unityIos,
        'unity_android': value.unityAndroid,
    };
}

