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
 * @export
 * @enum {string}
 */
export enum ProjectStatisticsGroupByEnum {
    All = 'all',
    Events = 'events',
    Models = 'models',
    Platforms = 'platforms',
    Languages = 'languages',
    Devices = 'devices',
    Browsers = 'browsers',
    Countries = 'countries',
}

export function ProjectStatisticsGroupByEnumFromJSON(json: any): ProjectStatisticsGroupByEnum {
    return ProjectStatisticsGroupByEnumFromJSONTyped(json, false);
}

export function ProjectStatisticsGroupByEnumFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean
): ProjectStatisticsGroupByEnum {
    return json as ProjectStatisticsGroupByEnum;
}

export function ProjectStatisticsGroupByEnumToJSON(value?: ProjectStatisticsGroupByEnum | null): any {
    return value as any;
}
