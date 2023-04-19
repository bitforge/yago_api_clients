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
 * @interface ModelCreate
 */
export interface ModelCreate {
    /**
     *
     * @type {string}
     * @memberof ModelCreate
     */
    readonly id: string;
    /**
     * The project this model belongs to. Cannot be changed once created.
     * @type {string}
     * @memberof ModelCreate
     */
    project: string;
    /**
     * Name will be visible in Android as title.
     * @type {string}
     * @memberof ModelCreate
     */
    nameDe?: string | null;
    /**
     * Name will be visible in Android as title.
     * @type {string}
     * @memberof ModelCreate
     */
    nameEn?: string | null;
    /**
     * Name will be visible in Android as title.
     * @type {string}
     * @memberof ModelCreate
     */
    nameFr?: string | null;
    /**
     * Name will be visible in Android as title.
     * @type {string}
     * @memberof ModelCreate
     */
    nameIt?: string | null;
    /**
     * Unique Short-URL for embedding. Cannot be changed once created.
     * @type {string}
     * @memberof ModelCreate
     */
    readonly slug: string;
}

/**
 * Check if a given object implements the ModelCreate interface.
 */
export function instanceOfModelCreate(value: object): boolean {
    let isInstance = true;
    isInstance = isInstance && 'id' in value;
    isInstance = isInstance && 'project' in value;
    isInstance = isInstance && 'slug' in value;

    return isInstance;
}

export function ModelCreateFromJSON(json: any): ModelCreate {
    return ModelCreateFromJSONTyped(json, false);
}

export function ModelCreateFromJSONTyped(json: any, ignoreDiscriminator: boolean): ModelCreate {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        id: json['id'],
        project: json['project'],
        nameDe: !exists(json, 'name_de') ? undefined : json['name_de'],
        nameEn: !exists(json, 'name_en') ? undefined : json['name_en'],
        nameFr: !exists(json, 'name_fr') ? undefined : json['name_fr'],
        nameIt: !exists(json, 'name_it') ? undefined : json['name_it'],
        slug: json['slug'],
    };
}

export function ModelCreateToJSON(value?: ModelCreate | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        project: value.project,
        name_de: value.nameDe,
        name_en: value.nameEn,
        name_fr: value.nameFr,
        name_it: value.nameIt,
    };
}
