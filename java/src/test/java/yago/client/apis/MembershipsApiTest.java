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
import yago.client.models.Membership;
import java.util.UUID;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for MembershipsApi
 */
@Ignore
public class MembershipsApiTest {

    private final MembershipsApi api = new MembershipsApi();

    
    /**
     * 
     *
     * Add a new project membership.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void membershipsCreateTest() throws ApiException {
        Membership membership = null;
                Membership response = api.membershipsCreate(membership);
        // TODO: test validations
    }
    
    /**
     * 
     *
     * Remove a project member. Only OWNERS can do this.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void membershipsDestroyTest() throws ApiException {
        UUID id = null;
                api.membershipsDestroy(id);
        // TODO: test validations
    }
    
    /**
     * 
     *
     * All project memberships of projects the user is also a member of. Can be filtered by &#x60;project&#x60; and &#x60;user&#x60;.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void membershipsListTest() throws ApiException {
        UUID project = null;
        UUID user = null;
                List<Membership> response = api.membershipsList(project, user);
        // TODO: test validations
    }
    
}
