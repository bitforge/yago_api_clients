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

import * as runtime from '../runtime';
import {
    AnchorToken,
    AnchorTokenFromJSON,
    AnchorTokenToJSON,
    GoogleIdToken,
    GoogleIdTokenFromJSON,
    GoogleIdTokenToJSON,
    PasswordChange,
    PasswordChangeFromJSON,
    PasswordChangeToJSON,
    PasswordReset,
    PasswordResetFromJSON,
    PasswordResetToJSON,
    PasswordResetConfirm,
    PasswordResetConfirmFromJSON,
    PasswordResetConfirmToJSON,
    TokenObtainRequest,
    TokenObtainRequestFromJSON,
    TokenObtainRequestToJSON,
    TokenObtainResponse,
    TokenObtainResponseFromJSON,
    TokenObtainResponseToJSON,
    TokenRefreshRequest,
    TokenRefreshRequestFromJSON,
    TokenRefreshRequestToJSON,
    TokenRefreshResponse,
    TokenRefreshResponseFromJSON,
    TokenRefreshResponseToJSON,
    TokenVerify,
    TokenVerifyFromJSON,
    TokenVerifyToJSON,
} from '../models';

export interface AuthGoogleCreateRequest {
    googleIdToken: GoogleIdToken;
}

export interface AuthLoginCreateRequest {
    tokenObtainRequest: TokenObtainRequest;
}

export interface AuthPasswordChangeCreateRequest {
    passwordChange: PasswordChange;
}

export interface AuthPasswordResetConfirmCreateRequest {
    passwordResetConfirm: PasswordResetConfirm;
}

export interface AuthPasswordResetCreateRequest {
    passwordReset: PasswordReset;
}

export interface AuthRefreshCreateRequest {
    tokenRefreshRequest: TokenRefreshRequest;
}

export interface AuthVerifyCreateRequest {
    tokenVerify: TokenVerify;
}

/**
 *
 */
export class AuthApi extends runtime.BaseAPI {
    /**
     * Create a new anchor token.
     */
    async authAnchorTokenRetrieveRaw(initOverrides?: RequestInit): Promise<runtime.ApiResponse<AnchorToken>> {
        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/auth/anchor_token/`,
                method: 'GET',
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => AnchorTokenFromJSON(jsonValue));
    }

    /**
     * Create a new anchor token.
     */
    async authAnchorTokenRetrieve(initOverrides?: RequestInit): Promise<AnchorToken> {
        const response = await this.authAnchorTokenRetrieveRaw(initOverrides);
        return await response.value();
    }

    /**
     * Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Yago user will be created.
     */
    async authGoogleCreateRaw(
        requestParameters: AuthGoogleCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<TokenObtainResponse>> {
        if (requestParameters.googleIdToken === null || requestParameters.googleIdToken === undefined) {
            throw new runtime.RequiredError(
                'googleIdToken',
                'Required parameter requestParameters.googleIdToken was null or undefined when calling authGoogleCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        const response = await this.request(
            {
                path: `/api/auth/google/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: GoogleIdTokenToJSON(requestParameters.googleIdToken),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => TokenObtainResponseFromJSON(jsonValue));
    }

    /**
     * Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Yago user will be created.
     */
    async authGoogleCreate(
        requestParameters: AuthGoogleCreateRequest,
        initOverrides?: RequestInit
    ): Promise<TokenObtainResponse> {
        const response = await this.authGoogleCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.
     */
    async authLoginCreateRaw(
        requestParameters: AuthLoginCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<TokenObtainResponse>> {
        if (requestParameters.tokenObtainRequest === null || requestParameters.tokenObtainRequest === undefined) {
            throw new runtime.RequiredError(
                'tokenObtainRequest',
                'Required parameter requestParameters.tokenObtainRequest was null or undefined when calling authLoginCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        const response = await this.request(
            {
                path: `/api/auth/login/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: TokenObtainRequestToJSON(requestParameters.tokenObtainRequest),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => TokenObtainResponseFromJSON(jsonValue));
    }

    /**
     * Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.
     */
    async authLoginCreate(
        requestParameters: AuthLoginCreateRequest,
        initOverrides?: RequestInit
    ): Promise<TokenObtainResponse> {
        const response = await this.authLoginCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Change password of current user.
     */
    async authPasswordChangeCreateRaw(
        requestParameters: AuthPasswordChangeCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<PasswordChange>> {
        if (requestParameters.passwordChange === null || requestParameters.passwordChange === undefined) {
            throw new runtime.RequiredError(
                'passwordChange',
                'Required parameter requestParameters.passwordChange was null or undefined when calling authPasswordChangeCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token('jwtAuth', []);

            if (tokenString) {
                headerParameters['Authorization'] = `Bearer ${tokenString}`;
            }
        }
        if (this.configuration && this.configuration.apiKey) {
            headerParameters['Authorization'] = this.configuration.apiKey('Authorization'); // tokenAuth authentication
        }

        const response = await this.request(
            {
                path: `/api/auth/password/change/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: PasswordChangeToJSON(requestParameters.passwordChange),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => PasswordChangeFromJSON(jsonValue));
    }

    /**
     * Change password of current user.
     */
    async authPasswordChangeCreate(
        requestParameters: AuthPasswordChangeCreateRequest,
        initOverrides?: RequestInit
    ): Promise<PasswordChange> {
        const response = await this.authPasswordChangeCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Password reset e-mail link is confirmed, reset the user\'s password.
     */
    async authPasswordResetConfirmCreateRaw(
        requestParameters: AuthPasswordResetConfirmCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<PasswordResetConfirm>> {
        if (requestParameters.passwordResetConfirm === null || requestParameters.passwordResetConfirm === undefined) {
            throw new runtime.RequiredError(
                'passwordResetConfirm',
                'Required parameter requestParameters.passwordResetConfirm was null or undefined when calling authPasswordResetConfirmCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        const response = await this.request(
            {
                path: `/api/auth/password/reset/confirm/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: PasswordResetConfirmToJSON(requestParameters.passwordResetConfirm),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => PasswordResetConfirmFromJSON(jsonValue));
    }

    /**
     * Password reset e-mail link is confirmed, reset the user\'s password.
     */
    async authPasswordResetConfirmCreate(
        requestParameters: AuthPasswordResetConfirmCreateRequest,
        initOverrides?: RequestInit
    ): Promise<PasswordResetConfirm> {
        const response = await this.authPasswordResetConfirmCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Request password reset. Send an email to the user first.
     */
    async authPasswordResetCreateRaw(
        requestParameters: AuthPasswordResetCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<PasswordReset>> {
        if (requestParameters.passwordReset === null || requestParameters.passwordReset === undefined) {
            throw new runtime.RequiredError(
                'passwordReset',
                'Required parameter requestParameters.passwordReset was null or undefined when calling authPasswordResetCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        const response = await this.request(
            {
                path: `/api/auth/password/reset/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: PasswordResetToJSON(requestParameters.passwordReset),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => PasswordResetFromJSON(jsonValue));
    }

    /**
     * Request password reset. Send an email to the user first.
     */
    async authPasswordResetCreate(
        requestParameters: AuthPasswordResetCreateRequest,
        initOverrides?: RequestInit
    ): Promise<PasswordReset> {
        const response = await this.authPasswordResetCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.
     */
    async authRefreshCreateRaw(
        requestParameters: AuthRefreshCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<TokenRefreshResponse>> {
        if (requestParameters.tokenRefreshRequest === null || requestParameters.tokenRefreshRequest === undefined) {
            throw new runtime.RequiredError(
                'tokenRefreshRequest',
                'Required parameter requestParameters.tokenRefreshRequest was null or undefined when calling authRefreshCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        const response = await this.request(
            {
                path: `/api/auth/refresh/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: TokenRefreshRequestToJSON(requestParameters.tokenRefreshRequest),
            },
            initOverrides
        );

        return new runtime.JSONApiResponse(response, jsonValue => TokenRefreshResponseFromJSON(jsonValue));
    }

    /**
     * Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.
     */
    async authRefreshCreate(
        requestParameters: AuthRefreshCreateRequest,
        initOverrides?: RequestInit
    ): Promise<TokenRefreshResponse> {
        const response = await this.authRefreshCreateRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     * Takes a token and indicates if it is valid.  This view provides no information about a token\'s fitness for a particular use.
     */
    async authVerifyCreateRaw(
        requestParameters: AuthVerifyCreateRequest,
        initOverrides?: RequestInit
    ): Promise<runtime.ApiResponse<void>> {
        if (requestParameters.tokenVerify === null || requestParameters.tokenVerify === undefined) {
            throw new runtime.RequiredError(
                'tokenVerify',
                'Required parameter requestParameters.tokenVerify was null or undefined when calling authVerifyCreate.'
            );
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        const response = await this.request(
            {
                path: `/api/auth/verify/`,
                method: 'POST',
                headers: headerParameters,
                query: queryParameters,
                body: TokenVerifyToJSON(requestParameters.tokenVerify),
            },
            initOverrides
        );

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Takes a token and indicates if it is valid.  This view provides no information about a token\'s fitness for a particular use.
     */
    async authVerifyCreate(requestParameters: AuthVerifyCreateRequest, initOverrides?: RequestInit): Promise<void> {
        await this.authVerifyCreateRaw(requestParameters, initOverrides);
    }
}
