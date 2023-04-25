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
 * * `all` - -
 * * `events` - Events
 * * `models` - Modelle
 * * `platforms` - Plattformen
 * * `languages` - Sprachen
 * * `devices` - Gerätehersteller
 * * `browsers` - Browser
 * * `countries` - Länder
 * * `projects` - Projekte
 * @export
 * @enum {string}
 */
export enum GlobalStatisticsGroupByEnum {
    All = 'all',
    Events = 'events',
    Models = 'models',
    Platforms = 'platforms',
    Languages = 'languages',
    Devices = 'devices',
    Browsers = 'browsers',
    Countries = 'countries',
    Projects = 'projects',
}

export function GlobalStatisticsGroupByEnumFromJSON(json: any): GlobalStatisticsGroupByEnum {
    return GlobalStatisticsGroupByEnumFromJSONTyped(json, false);
}

export function GlobalStatisticsGroupByEnumFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean
): GlobalStatisticsGroupByEnum {
    return json as GlobalStatisticsGroupByEnum;
}

export function GlobalStatisticsGroupByEnumToJSON(value?: GlobalStatisticsGroupByEnum | null): any {
    return value as any;
}
