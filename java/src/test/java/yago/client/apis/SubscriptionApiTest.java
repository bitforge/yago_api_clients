/*
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


package yago.client.apis;

import yago.client.ApiException;
import yago.client.models.NewSubscription;
import yago.client.models.Subscription;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for SubscriptionApi
 */
@Ignore
public class SubscriptionApiTest {

    private final SubscriptionApi api = new SubscriptionApi();

    
    /**
     * 
     *
     * Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void subscriptionCreateTest() throws ApiException {
        NewSubscription newSubscription = null;
                NewSubscription response = api.subscriptionCreate(newSubscription);
        // TODO: test validations
    }
    
    /**
     * 
     *
     * Cancel current subscription. Subscription will be valid until current payment schedule is finished.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void subscriptionDestroyTest() throws ApiException {
                api.subscriptionDestroy();
        // TODO: test validations
    }
    
    /**
     * 
     *
     * Get details of active subscription i customer is signed up.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void subscriptionRetrieveTest() throws ApiException {
                Subscription response = api.subscriptionRetrieve();
        // TODO: test validations
    }
    
}
