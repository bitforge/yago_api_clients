/*
 * Genie API
 *
 * Augemented Reality Made Easy.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: hello@genie-ar.ch
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Net.Mime;
using Genie.Client;
using Genie.Model;

namespace Genie.Api
{

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface ISubscriptionApiSync : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="newSubscription"></param>
        /// <returns>NewSubscription</returns>
        NewSubscription SubscriptionCreate(NewSubscription newSubscription);

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="newSubscription"></param>
        /// <returns>ApiResponse of NewSubscription</returns>
        ApiResponse<NewSubscription> SubscriptionCreateWithHttpInfo(NewSubscription newSubscription);
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Cancel current subscription. Subscription will be valid until current payment schedule is finished.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns></returns>
        void SubscriptionDestroy();

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Cancel current subscription. Subscription will be valid until current payment schedule is finished.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of Object(void)</returns>
        ApiResponse<Object> SubscriptionDestroyWithHttpInfo();
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Get details of active subscription i customer is signed up.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Subscription</returns>
        Subscription SubscriptionRetrieve();

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Get details of active subscription i customer is signed up.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of Subscription</returns>
        ApiResponse<Subscription> SubscriptionRetrieveWithHttpInfo();
        #endregion Synchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface ISubscriptionApiAsync : IApiAccessor
    {
        #region Asynchronous Operations
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="newSubscription"></param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of NewSubscription</returns>
        System.Threading.Tasks.Task<NewSubscription> SubscriptionCreateAsync(NewSubscription newSubscription, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="newSubscription"></param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (NewSubscription)</returns>
        System.Threading.Tasks.Task<ApiResponse<NewSubscription>> SubscriptionCreateWithHttpInfoAsync(NewSubscription newSubscription, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Cancel current subscription. Subscription will be valid until current payment schedule is finished.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of void</returns>
        System.Threading.Tasks.Task SubscriptionDestroyAsync(System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Cancel current subscription. Subscription will be valid until current payment schedule is finished.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse</returns>
        System.Threading.Tasks.Task<ApiResponse<Object>> SubscriptionDestroyWithHttpInfoAsync(System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Get details of active subscription i customer is signed up.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of Subscription</returns>
        System.Threading.Tasks.Task<Subscription> SubscriptionRetrieveAsync(System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Get details of active subscription i customer is signed up.
        /// </remarks>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (Subscription)</returns>
        System.Threading.Tasks.Task<ApiResponse<Subscription>> SubscriptionRetrieveWithHttpInfoAsync(System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface ISubscriptionApi : ISubscriptionApiSync, ISubscriptionApiAsync
    {

    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class SubscriptionApi : ISubscriptionApi
    {
        private Genie.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="SubscriptionApi"/> class.
        /// </summary>
        /// <returns></returns>
        public SubscriptionApi() : this((string)null)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="SubscriptionApi"/> class.
        /// </summary>
        /// <returns></returns>
        public SubscriptionApi(string basePath)
        {
            this.Configuration = Genie.Client.Configuration.MergeConfigurations(
                Genie.Client.GlobalConfiguration.Instance,
                new Genie.Client.Configuration { BasePath = basePath }
            );
            this.Client = new Genie.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new Genie.Client.ApiClient(this.Configuration.BasePath);
            this.ExceptionFactory = Genie.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="SubscriptionApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public SubscriptionApi(Genie.Client.Configuration configuration)
        {
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Configuration = Genie.Client.Configuration.MergeConfigurations(
                Genie.Client.GlobalConfiguration.Instance,
                configuration
            );
            this.Client = new Genie.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new Genie.Client.ApiClient(this.Configuration.BasePath);
            ExceptionFactory = Genie.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="SubscriptionApi"/> class
        /// using a Configuration object and client instance.
        /// </summary>
        /// <param name="client">The client interface for synchronous API access.</param>
        /// <param name="asyncClient">The client interface for asynchronous API access.</param>
        /// <param name="configuration">The configuration object.</param>
        public SubscriptionApi(Genie.Client.ISynchronousClient client, Genie.Client.IAsynchronousClient asyncClient, Genie.Client.IReadableConfiguration configuration)
        {
            if (client == null) throw new ArgumentNullException("client");
            if (asyncClient == null) throw new ArgumentNullException("asyncClient");
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Client = client;
            this.AsynchronousClient = asyncClient;
            this.Configuration = configuration;
            this.ExceptionFactory = Genie.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// The client for accessing this underlying API asynchronously.
        /// </summary>
        public Genie.Client.IAsynchronousClient AsynchronousClient { get; set; }

        /// <summary>
        /// The client for accessing this underlying API synchronously.
        /// </summary>
        public Genie.Client.ISynchronousClient Client { get; set; }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public string GetBasePath()
        {
            return this.Configuration.BasePath;
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public Genie.Client.IReadableConfiguration Configuration { get; set; }

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public Genie.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        ///  Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="newSubscription"></param>
        /// <returns>NewSubscription</returns>
        public NewSubscription SubscriptionCreate(NewSubscription newSubscription)
        {
            Genie.Client.ApiResponse<NewSubscription> localVarResponse = SubscriptionCreateWithHttpInfo(newSubscription);
            return localVarResponse.Data;
        }

        /// <summary>
        ///  Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="newSubscription"></param>
        /// <returns>ApiResponse of NewSubscription</returns>
        public Genie.Client.ApiResponse<NewSubscription> SubscriptionCreateWithHttpInfo(NewSubscription newSubscription)
        {
            // verify the required parameter 'newSubscription' is set
            if (newSubscription == null)
                throw new Genie.Client.ApiException(400, "Missing required parameter 'newSubscription' when calling SubscriptionApi->SubscriptionCreate");

            Genie.Client.RequestOptions localVarRequestOptions = new Genie.Client.RequestOptions();

            string[] _contentTypes = new string[] {
                "application/json"
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = Genie.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null) localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);

            var localVarAccept = Genie.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null) localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);

            localVarRequestOptions.Data = newSubscription;

            // authentication (cookieAuth) required
            // cookie parameter support
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("sessionid")))
            {
                localVarRequestOptions.Cookies.Add(new Cookie("sessionid", this.Configuration.GetApiKeyWithPrefix("sessionid")));
            }
            // authentication (jwtAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }
            // authentication (tokenAuth) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("Authorization")))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", this.Configuration.GetApiKeyWithPrefix("Authorization"));
            }

            // make the HTTP request
            var localVarResponse = this.Client.Post<NewSubscription>("/api/subscription/", localVarRequestOptions, this.Configuration);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SubscriptionCreate", localVarResponse);
                if (_exception != null) throw _exception;
            }

            return localVarResponse;
        }

        /// <summary>
        ///  Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="newSubscription"></param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of NewSubscription</returns>
        public async System.Threading.Tasks.Task<NewSubscription> SubscriptionCreateAsync(NewSubscription newSubscription, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            Genie.Client.ApiResponse<NewSubscription> localVarResponse = await SubscriptionCreateWithHttpInfoAsync(newSubscription, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        ///  Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="newSubscription"></param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (NewSubscription)</returns>
        public async System.Threading.Tasks.Task<Genie.Client.ApiResponse<NewSubscription>> SubscriptionCreateWithHttpInfoAsync(NewSubscription newSubscription, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'newSubscription' is set
            if (newSubscription == null)
                throw new Genie.Client.ApiException(400, "Missing required parameter 'newSubscription' when calling SubscriptionApi->SubscriptionCreate");


            Genie.Client.RequestOptions localVarRequestOptions = new Genie.Client.RequestOptions();

            string[] _contentTypes = new string[] {
                "application/json"
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };


            var localVarContentType = Genie.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null) localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);

            var localVarAccept = Genie.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null) localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);

            localVarRequestOptions.Data = newSubscription;

            // authentication (cookieAuth) required
            // cookie parameter support
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("sessionid")))
            {
                localVarRequestOptions.Cookies.Add(new Cookie("sessionid", this.Configuration.GetApiKeyWithPrefix("sessionid")));
            }
            // authentication (jwtAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }
            // authentication (tokenAuth) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("Authorization")))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", this.Configuration.GetApiKeyWithPrefix("Authorization"));
            }

            // make the HTTP request

            var localVarResponse = await this.AsynchronousClient.PostAsync<NewSubscription>("/api/subscription/", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SubscriptionCreate", localVarResponse);
                if (_exception != null) throw _exception;
            }

            return localVarResponse;
        }

        /// <summary>
        ///  Cancel current subscription. Subscription will be valid until current payment schedule is finished.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns></returns>
        public void SubscriptionDestroy()
        {
            SubscriptionDestroyWithHttpInfo();
        }

        /// <summary>
        ///  Cancel current subscription. Subscription will be valid until current payment schedule is finished.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of Object(void)</returns>
        public Genie.Client.ApiResponse<Object> SubscriptionDestroyWithHttpInfo()
        {
            Genie.Client.RequestOptions localVarRequestOptions = new Genie.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
            };

            var localVarContentType = Genie.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null) localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);

            var localVarAccept = Genie.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null) localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);


            // authentication (cookieAuth) required
            // cookie parameter support
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("sessionid")))
            {
                localVarRequestOptions.Cookies.Add(new Cookie("sessionid", this.Configuration.GetApiKeyWithPrefix("sessionid")));
            }
            // authentication (jwtAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }
            // authentication (tokenAuth) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("Authorization")))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", this.Configuration.GetApiKeyWithPrefix("Authorization"));
            }

            // make the HTTP request
            var localVarResponse = this.Client.Delete<Object>("/api/subscription/", localVarRequestOptions, this.Configuration);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SubscriptionDestroy", localVarResponse);
                if (_exception != null) throw _exception;
            }

            return localVarResponse;
        }

        /// <summary>
        ///  Cancel current subscription. Subscription will be valid until current payment schedule is finished.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of void</returns>
        public async System.Threading.Tasks.Task SubscriptionDestroyAsync(System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            await SubscriptionDestroyWithHttpInfoAsync(cancellationToken).ConfigureAwait(false);
        }

        /// <summary>
        ///  Cancel current subscription. Subscription will be valid until current payment schedule is finished.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse</returns>
        public async System.Threading.Tasks.Task<Genie.Client.ApiResponse<Object>> SubscriptionDestroyWithHttpInfoAsync(System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {

            Genie.Client.RequestOptions localVarRequestOptions = new Genie.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
            };


            var localVarContentType = Genie.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null) localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);

            var localVarAccept = Genie.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null) localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);


            // authentication (cookieAuth) required
            // cookie parameter support
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("sessionid")))
            {
                localVarRequestOptions.Cookies.Add(new Cookie("sessionid", this.Configuration.GetApiKeyWithPrefix("sessionid")));
            }
            // authentication (jwtAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }
            // authentication (tokenAuth) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("Authorization")))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", this.Configuration.GetApiKeyWithPrefix("Authorization"));
            }

            // make the HTTP request

            var localVarResponse = await this.AsynchronousClient.DeleteAsync<Object>("/api/subscription/", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SubscriptionDestroy", localVarResponse);
                if (_exception != null) throw _exception;
            }

            return localVarResponse;
        }

        /// <summary>
        ///  Get details of active subscription i customer is signed up.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Subscription</returns>
        public Subscription SubscriptionRetrieve()
        {
            Genie.Client.ApiResponse<Subscription> localVarResponse = SubscriptionRetrieveWithHttpInfo();
            return localVarResponse.Data;
        }

        /// <summary>
        ///  Get details of active subscription i customer is signed up.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of Subscription</returns>
        public Genie.Client.ApiResponse<Subscription> SubscriptionRetrieveWithHttpInfo()
        {
            Genie.Client.RequestOptions localVarRequestOptions = new Genie.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = Genie.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null) localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);

            var localVarAccept = Genie.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null) localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);


            // authentication (cookieAuth) required
            // cookie parameter support
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("sessionid")))
            {
                localVarRequestOptions.Cookies.Add(new Cookie("sessionid", this.Configuration.GetApiKeyWithPrefix("sessionid")));
            }
            // authentication (jwtAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }
            // authentication (tokenAuth) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("Authorization")))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", this.Configuration.GetApiKeyWithPrefix("Authorization"));
            }

            // make the HTTP request
            var localVarResponse = this.Client.Get<Subscription>("/api/subscription/", localVarRequestOptions, this.Configuration);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SubscriptionRetrieve", localVarResponse);
                if (_exception != null) throw _exception;
            }

            return localVarResponse;
        }

        /// <summary>
        ///  Get details of active subscription i customer is signed up.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of Subscription</returns>
        public async System.Threading.Tasks.Task<Subscription> SubscriptionRetrieveAsync(System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            Genie.Client.ApiResponse<Subscription> localVarResponse = await SubscriptionRetrieveWithHttpInfoAsync(cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        ///  Get details of active subscription i customer is signed up.
        /// </summary>
        /// <exception cref="Genie.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (Subscription)</returns>
        public async System.Threading.Tasks.Task<Genie.Client.ApiResponse<Subscription>> SubscriptionRetrieveWithHttpInfoAsync(System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {

            Genie.Client.RequestOptions localVarRequestOptions = new Genie.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };


            var localVarContentType = Genie.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null) localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);

            var localVarAccept = Genie.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null) localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);


            // authentication (cookieAuth) required
            // cookie parameter support
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("sessionid")))
            {
                localVarRequestOptions.Cookies.Add(new Cookie("sessionid", this.Configuration.GetApiKeyWithPrefix("sessionid")));
            }
            // authentication (jwtAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }
            // authentication (tokenAuth) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("Authorization")))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", this.Configuration.GetApiKeyWithPrefix("Authorization"));
            }

            // make the HTTP request

            var localVarResponse = await this.AsynchronousClient.GetAsync<Subscription>("/api/subscription/", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SubscriptionRetrieve", localVarResponse);
                if (_exception != null) throw _exception;
            }

            return localVarResponse;
        }

    }
}
