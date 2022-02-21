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
import {
    CollectionMethodEnum,
    CollectionMethodEnumFromJSON,
    CollectionMethodEnumFromJSONTyped,
    CollectionMethodEnumToJSON,
    Nested,
    NestedFromJSON,
    NestedFromJSONTyped,
    NestedToJSON,
    StripeSubscriptionStatusEnum,
    StripeSubscriptionStatusEnumFromJSON,
    StripeSubscriptionStatusEnumFromJSONTyped,
    StripeSubscriptionStatusEnumToJSON,
} from './';

/**
 * 
 * @export
 * @interface StripeSubscription
 */
export interface StripeSubscription {
    /**
     * 
     * @type {number}
     * @memberof StripeSubscription
     */
    readonly djstripeId: number;
    /**
     * 
     * @type {Date}
     * @memberof StripeSubscription
     */
    readonly djstripeCreated: Date;
    /**
     * 
     * @type {Date}
     * @memberof StripeSubscription
     */
    readonly djstripeUpdated: Date;
    /**
     * 
     * @type {string}
     * @memberof StripeSubscription
     */
    id: string;
    /**
     * Null here indicates that the livemode status is unknown or was previously unrecorded. Otherwise, this field indicates whether this record comes from Stripe test mode or live mode operation.
     * @type {boolean}
     * @memberof StripeSubscription
     */
    livemode?: boolean | null;
    /**
     * The datetime this object was created in stripe.
     * @type {Date}
     * @memberof StripeSubscription
     */
    created?: Date | null;
    /**
     * A set of key/value pairs that you can attach to an object. It can be useful for storing additional information about an object in a structured format.
     * @type {{ [key: string]: any; }}
     * @memberof StripeSubscription
     */
    metadata?: { [key: string]: any; } | null;
    /**
     * A description of this object.
     * @type {string}
     * @memberof StripeSubscription
     */
    description?: string | null;
    /**
     * A positive decimal that represents the fee percentage of the subscription invoice amount that will be transferred to the application owner's Stripe account each billing period.
     * @type {string}
     * @memberof StripeSubscription
     */
    applicationFeePercent?: string | null;
    /**
     * Determines the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices.
     * @type {Date}
     * @memberof StripeSubscription
     */
    billingCycleAnchor?: Date | null;
    /**
     * Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period.
     * @type {{ [key: string]: any; }}
     * @memberof StripeSubscription
     */
    billingThresholds?: { [key: string]: any; } | null;
    /**
     * A date in the future at which the subscription will automatically get canceled.
     * @type {Date}
     * @memberof StripeSubscription
     */
    cancelAt?: Date | null;
    /**
     * If the subscription has been canceled with the ``at_period_end`` flag set to true, ``cancel_at_period_end`` on the subscription will be true. You can use this attribute to determine whether a subscription that has a status of active is scheduled to be canceled at the end of the current period.
     * @type {boolean}
     * @memberof StripeSubscription
     */
    cancelAtPeriodEnd?: boolean;
    /**
     * If the subscription has been canceled, the date of that cancellation. If the subscription was canceled with ``cancel_at_period_end``, canceled_at will still reflect the date of the initial cancellation request, not the end of the subscription period when the subscription is automatically moved to a canceled state.
     * @type {Date}
     * @memberof StripeSubscription
     */
    canceledAt?: Date | null;
    /**
     * Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions.
     * @type {CollectionMethodEnum}
     * @memberof StripeSubscription
     */
    collectionMethod: CollectionMethodEnum | null;
    /**
     * End of the current period for which the subscription has been invoiced. At the end of this period, a new invoice will be created.
     * @type {Date}
     * @memberof StripeSubscription
     */
    currentPeriodEnd: Date;
    /**
     * Start of the current period for which the subscription has been invoiced.
     * @type {Date}
     * @memberof StripeSubscription
     */
    currentPeriodStart: Date;
    /**
     * Number of days a customer has to pay invoices generated by this subscription. This value will be `null` for subscriptions where `billing=charge_automatically`.
     * @type {number}
     * @memberof StripeSubscription
     */
    daysUntilDue?: number | null;
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof StripeSubscription
     */
    discount?: { [key: string]: any; } | null;
    /**
     * If the subscription has ended (either because it was canceled or because the customer was switched to a subscription to a new plan), the date the subscription ended.
     * @type {Date}
     * @memberof StripeSubscription
     */
    endedAt?: Date | null;
    /**
     * Specifies the approximate timestamp on which any pending invoice items will be billed according to the schedule provided at pending_invoice_item_interval.
     * @type {Date}
     * @memberof StripeSubscription
     */
    nextPendingInvoiceItemInvoice?: Date | null;
    /**
     * Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling Create an invoice for the given subscription at the specified interval.
     * @type {{ [key: string]: any; }}
     * @memberof StripeSubscription
     */
    pendingInvoiceItemInterval?: { [key: string]: any; } | null;
    /**
     * If specified, pending updates that will be applied to the subscription once the latest_invoice has been paid.
     * @type {{ [key: string]: any; }}
     * @memberof StripeSubscription
     */
    pendingUpdate?: { [key: string]: any; } | null;
    /**
     * The quantity applied to this subscription. This value will be `null` for multi-plan subscriptions
     * @type {number}
     * @memberof StripeSubscription
     */
    quantity?: number | null;
    /**
     * Date when the subscription was first created. The date might differ from the created date due to backdating.
     * @type {Date}
     * @memberof StripeSubscription
     */
    startDate?: Date | null;
    /**
     * The status of this subscription.
     * @type {StripeSubscriptionStatusEnum}
     * @memberof StripeSubscription
     */
    status: StripeSubscriptionStatusEnum | null;
    /**
     * If the subscription has a trial, the end of that trial.
     * @type {Date}
     * @memberof StripeSubscription
     */
    trialEnd?: Date | null;
    /**
     * If the subscription has a trial, the beginning of that trial.
     * @type {Date}
     * @memberof StripeSubscription
     */
    trialStart?: Date | null;
    /**
     * 
     * @type {Nested}
     * @memberof StripeSubscription
     */
    readonly djstripeOwnerAccount: Nested | null;
    /**
     * 
     * @type {Nested}
     * @memberof StripeSubscription
     */
    readonly customer: Nested | null;
    /**
     * 
     * @type {Nested}
     * @memberof StripeSubscription
     */
    readonly defaultPaymentMethod: Nested | null;
    /**
     * 
     * @type {Nested}
     * @memberof StripeSubscription
     */
    readonly defaultSource: Nested | null;
    /**
     * 
     * @type {Nested}
     * @memberof StripeSubscription
     */
    readonly latestInvoice: Nested | null;
    /**
     * 
     * @type {Nested}
     * @memberof StripeSubscription
     */
    readonly pendingSetupIntent: Nested | null;
    /**
     * 
     * @type {Nested}
     * @memberof StripeSubscription
     */
    readonly plan: Nested | null;
    /**
     * 
     * @type {Nested}
     * @memberof StripeSubscription
     */
    readonly schedule: Nested | null;
    /**
     * 
     * @type {Array<Nested>}
     * @memberof StripeSubscription
     */
    readonly defaultTaxRates: Array<Nested>;
}

export function StripeSubscriptionFromJSON(json: any): StripeSubscription {
    return StripeSubscriptionFromJSONTyped(json, false);
}

export function StripeSubscriptionFromJSONTyped(json: any, ignoreDiscriminator: boolean): StripeSubscription {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'djstripeId': json['djstripe_id'],
        'djstripeCreated': (new Date(json['djstripe_created'])),
        'djstripeUpdated': (new Date(json['djstripe_updated'])),
        'id': json['id'],
        'livemode': !exists(json, 'livemode') ? undefined : json['livemode'],
        'created': !exists(json, 'created') ? undefined : (json['created'] === null ? null : new Date(json['created'])),
        'metadata': !exists(json, 'metadata') ? undefined : json['metadata'],
        'description': !exists(json, 'description') ? undefined : json['description'],
        'applicationFeePercent': !exists(json, 'application_fee_percent') ? undefined : json['application_fee_percent'],
        'billingCycleAnchor': !exists(json, 'billing_cycle_anchor') ? undefined : (json['billing_cycle_anchor'] === null ? null : new Date(json['billing_cycle_anchor'])),
        'billingThresholds': !exists(json, 'billing_thresholds') ? undefined : json['billing_thresholds'],
        'cancelAt': !exists(json, 'cancel_at') ? undefined : (json['cancel_at'] === null ? null : new Date(json['cancel_at'])),
        'cancelAtPeriodEnd': !exists(json, 'cancel_at_period_end') ? undefined : json['cancel_at_period_end'],
        'canceledAt': !exists(json, 'canceled_at') ? undefined : (json['canceled_at'] === null ? null : new Date(json['canceled_at'])),
        'collectionMethod': CollectionMethodEnumFromJSON(json['collection_method']),
        'currentPeriodEnd': (new Date(json['current_period_end'])),
        'currentPeriodStart': (new Date(json['current_period_start'])),
        'daysUntilDue': !exists(json, 'days_until_due') ? undefined : json['days_until_due'],
        'discount': !exists(json, 'discount') ? undefined : json['discount'],
        'endedAt': !exists(json, 'ended_at') ? undefined : (json['ended_at'] === null ? null : new Date(json['ended_at'])),
        'nextPendingInvoiceItemInvoice': !exists(json, 'next_pending_invoice_item_invoice') ? undefined : (json['next_pending_invoice_item_invoice'] === null ? null : new Date(json['next_pending_invoice_item_invoice'])),
        'pendingInvoiceItemInterval': !exists(json, 'pending_invoice_item_interval') ? undefined : json['pending_invoice_item_interval'],
        'pendingUpdate': !exists(json, 'pending_update') ? undefined : json['pending_update'],
        'quantity': !exists(json, 'quantity') ? undefined : json['quantity'],
        'startDate': !exists(json, 'start_date') ? undefined : (json['start_date'] === null ? null : new Date(json['start_date'])),
        'status': StripeSubscriptionStatusEnumFromJSON(json['status']),
        'trialEnd': !exists(json, 'trial_end') ? undefined : (json['trial_end'] === null ? null : new Date(json['trial_end'])),
        'trialStart': !exists(json, 'trial_start') ? undefined : (json['trial_start'] === null ? null : new Date(json['trial_start'])),
        'djstripeOwnerAccount': NestedFromJSON(json['djstripe_owner_account']),
        'customer': NestedFromJSON(json['customer']),
        'defaultPaymentMethod': NestedFromJSON(json['default_payment_method']),
        'defaultSource': NestedFromJSON(json['default_source']),
        'latestInvoice': NestedFromJSON(json['latest_invoice']),
        'pendingSetupIntent': NestedFromJSON(json['pending_setup_intent']),
        'plan': NestedFromJSON(json['plan']),
        'schedule': NestedFromJSON(json['schedule']),
        'defaultTaxRates': ((json['default_tax_rates'] as Array<any>).map(NestedFromJSON)),
    };
}

export function StripeSubscriptionToJSON(value?: StripeSubscription | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'id': value.id,
        'livemode': value.livemode,
        'created': value.created === undefined ? undefined : (value.created === null ? null : value.created.toISOString()),
        'metadata': value.metadata,
        'description': value.description,
        'application_fee_percent': value.applicationFeePercent,
        'billing_cycle_anchor': value.billingCycleAnchor === undefined ? undefined : (value.billingCycleAnchor === null ? null : value.billingCycleAnchor.toISOString()),
        'billing_thresholds': value.billingThresholds,
        'cancel_at': value.cancelAt === undefined ? undefined : (value.cancelAt === null ? null : value.cancelAt.toISOString()),
        'cancel_at_period_end': value.cancelAtPeriodEnd,
        'canceled_at': value.canceledAt === undefined ? undefined : (value.canceledAt === null ? null : value.canceledAt.toISOString()),
        'collection_method': CollectionMethodEnumToJSON(value.collectionMethod),
        'current_period_end': (value.currentPeriodEnd.toISOString()),
        'current_period_start': (value.currentPeriodStart.toISOString()),
        'days_until_due': value.daysUntilDue,
        'discount': value.discount,
        'ended_at': value.endedAt === undefined ? undefined : (value.endedAt === null ? null : value.endedAt.toISOString()),
        'next_pending_invoice_item_invoice': value.nextPendingInvoiceItemInvoice === undefined ? undefined : (value.nextPendingInvoiceItemInvoice === null ? null : value.nextPendingInvoiceItemInvoice.toISOString()),
        'pending_invoice_item_interval': value.pendingInvoiceItemInterval,
        'pending_update': value.pendingUpdate,
        'quantity': value.quantity,
        'start_date': value.startDate === undefined ? undefined : (value.startDate === null ? null : value.startDate.toISOString()),
        'status': StripeSubscriptionStatusEnumToJSON(value.status),
        'trial_end': value.trialEnd === undefined ? undefined : (value.trialEnd === null ? null : value.trialEnd.toISOString()),
        'trial_start': value.trialStart === undefined ? undefined : (value.trialStart === null ? null : value.trialStart.toISOString()),
    };
}

