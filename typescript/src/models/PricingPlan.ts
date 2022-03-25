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
 * @interface PricingPlan
 */
export interface PricingPlan {
    /**
     * 
     * @type {string}
     * @memberof PricingPlan
     */
    key: string;
    /**
     * 
     * @type {string}
     * @memberof PricingPlan
     */
    name: string;
    /**
     * For display purposes, payment price is defined in stripe product.
     * @type {string}
     * @memberof PricingPlan
     */
    price: string;
    /**
     * How many projects are included in this plan.
     * @type {number}
     * @memberof PricingPlan
     */
    projectQuotas: number;
    /**
     * How many models are included in this plan.
     * @type {number}
     * @memberof PricingPlan
     */
    modelQuotas: number;
    /**
     * How many AR views are included in this plan.
     * @type {number}
     * @memberof PricingPlan
     */
    viewQuotas: number;
    /**
     * Enables SEO tags and sharing previews.
     * @type {boolean}
     * @memberof PricingPlan
     */
    seoOptimization?: boolean;
    /**
     * Allows to view detailed statistics about model views.
     * @type {boolean}
     * @memberof PricingPlan
     */
    viewReporting?: boolean;
    /**
     * Allows to visually customie QR Codes when enabled.
     * @type {boolean}
     * @memberof PricingPlan
     */
    customQrCodes?: boolean;
}

export function PricingPlanFromJSON(json: any): PricingPlan {
    return PricingPlanFromJSONTyped(json, false);
}

export function PricingPlanFromJSONTyped(json: any, ignoreDiscriminator: boolean): PricingPlan {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'key': json['key'],
        'name': json['name'],
        'price': json['price'],
        'projectQuotas': json['project_quotas'],
        'modelQuotas': json['model_quotas'],
        'viewQuotas': json['view_quotas'],
        'seoOptimization': !exists(json, 'seo_optimization') ? undefined : json['seo_optimization'],
        'viewReporting': !exists(json, 'view_reporting') ? undefined : json['view_reporting'],
        'customQrCodes': !exists(json, 'custom_qr_codes') ? undefined : json['custom_qr_codes'],
    };
}

export function PricingPlanToJSON(value?: PricingPlan | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'key': value.key,
        'name': value.name,
        'price': value.price,
        'project_quotas': value.projectQuotas,
        'model_quotas': value.modelQuotas,
        'view_quotas': value.viewQuotas,
        'seo_optimization': value.seoOptimization,
        'view_reporting': value.viewReporting,
        'custom_qr_codes': value.customQrCodes,
    };
}

