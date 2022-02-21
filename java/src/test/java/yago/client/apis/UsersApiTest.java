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
import java.util.UUID;
import yago.client.models.User;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for UsersApi
 */
@Ignore
public class UsersApiTest {

    private final UsersApi api = new UsersApi();

    
    /**
     * 
     *
     * Lists all users that are members in the same projects.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void usersListTest() throws ApiException {
        List<UUID> projects = null;
                List<User> response = api.usersList(projects);
        // TODO: test validations
    }
    
    /**
     * 
     *
     * Show details of the user currently logged in.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void usersMeRetrieveTest() throws ApiException {
                User response = api.usersMeRetrieve();
        // TODO: test validations
    }
    
    /**
     * 
     *
     * Details of a single user.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void usersRetrieveTest() throws ApiException {
        UUID id = null;
                User response = api.usersRetrieve(id);
        // TODO: test validations
    }
    
}
