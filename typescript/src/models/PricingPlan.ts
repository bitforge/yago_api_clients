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
     * Remove price and display request price offer in pricing table
     * @type {boolean}
     * @memberof PricingPlan
     */
    priceOnRequest?: boolean;
    /**
     *
     * @type {number}
     * @memberof PricingPlan
     */
    projectQuotas?: number;
    /**
     * Disable quota check for this plan.
     * @type {boolean}
     * @memberof PricingPlan
     */
    projectQuotasDisabled?: boolean;
    /**
     *
     * @type {string}
     * @memberof PricingPlan
     */
    modelQuotas?: string;
    /**
     * Disable quota check for models.
     * @type {boolean}
     * @memberof PricingPlan
     */
    modelQuotasDisabled?: boolean;
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
    /**
     * Allow usage of yago scenes app.
     * @type {boolean}
     * @memberof PricingPlan
     */
    scenesApp?: boolean;
    /**
     *
     * @type {boolean}
     * @memberof PricingPlan
     */
    hidden?: boolean;
}

/**
 * Check if a given object implements the PricingPlan interface.
 */
export function instanceOfPricingPlan(value: object): boolean {
    let isInstance = true;
    isInstance = isInstance && 'key' in value;
    isInstance = isInstance && 'name' in value;
    isInstance = isInstance && 'price' in value;

    return isInstance;
}

export function PricingPlanFromJSON(json: any): PricingPlan {
    return PricingPlanFromJSONTyped(json, false);
}

export function PricingPlanFromJSONTyped(json: any, ignoreDiscriminator: boolean): PricingPlan {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        key: json['key'],
        name: json['name'],
        price: json['price'],
        priceOnRequest: !exists(json, 'price_on_request') ? undefined : json['price_on_request'],
        projectQuotas: !exists(json, 'project_quotas') ? undefined : json['project_quotas'],
        projectQuotasDisabled: !exists(json, 'project_quotas_disabled') ? undefined : json['project_quotas_disabled'],
        modelQuotas: !exists(json, 'model_quotas') ? undefined : json['model_quotas'],
        modelQuotasDisabled: !exists(json, 'model_quotas_disabled') ? undefined : json['model_quotas_disabled'],
        seoOptimization: !exists(json, 'seo_optimization') ? undefined : json['seo_optimization'],
        viewReporting: !exists(json, 'view_reporting') ? undefined : json['view_reporting'],
        customQrCodes: !exists(json, 'custom_qr_codes') ? undefined : json['custom_qr_codes'],
        scenesApp: !exists(json, 'scenes_app') ? undefined : json['scenes_app'],
        hidden: !exists(json, 'hidden') ? undefined : json['hidden'],
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
        key: value.key,
        name: value.name,
        price: value.price,
        price_on_request: value.priceOnRequest,
        project_quotas: value.projectQuotas,
        project_quotas_disabled: value.projectQuotasDisabled,
        model_quotas: value.modelQuotas,
        model_quotas_disabled: value.modelQuotasDisabled,
        seo_optimization: value.seoOptimization,
        view_reporting: value.viewReporting,
        custom_qr_codes: value.customQrCodes,
        scenes_app: value.scenesApp,
        hidden: value.hidden,
    };
}
