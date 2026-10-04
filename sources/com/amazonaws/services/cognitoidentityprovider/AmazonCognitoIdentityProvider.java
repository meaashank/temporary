package com.amazonaws.services.cognitoidentityprovider;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.regions.Region;
import com.amazonaws.services.cognitoidentityprovider.model.AddCustomAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AddCustomAttributesResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminAddUserToGroupRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminConfirmSignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminConfirmSignUpResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDeleteUserAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDeleteUserAttributesResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDeleteUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDisableProviderForUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDisableProviderForUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDisableUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDisableUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminEnableUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminEnableUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminForgetDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminGetDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminGetDeviceResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminGetUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminGetUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminInitiateAuthRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminInitiateAuthResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminLinkProviderForUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminLinkProviderForUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminListDevicesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminListDevicesResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminListGroupsForUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminListGroupsForUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminListUserAuthEventsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminListUserAuthEventsResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminRemoveUserFromGroupRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminResetUserPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminResetUserPasswordResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminRespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminRespondToAuthChallengeResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserMFAPreferenceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserMFAPreferenceResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserSettingsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserSettingsResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateAuthEventFeedbackRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateAuthEventFeedbackResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateDeviceStatusRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateDeviceStatusResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateUserAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateUserAttributesResult;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUserGlobalSignOutRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUserGlobalSignOutResult;
import com.amazonaws.services.cognitoidentityprovider.model.AssociateSoftwareTokenRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AssociateSoftwareTokenResult;
import com.amazonaws.services.cognitoidentityprovider.model.ChangePasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ChangePasswordResult;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceResult;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmForgotPasswordResult;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmSignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmSignUpResult;
import com.amazonaws.services.cognitoidentityprovider.model.CreateGroupRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CreateGroupResult;
import com.amazonaws.services.cognitoidentityprovider.model.CreateIdentityProviderRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CreateIdentityProviderResult;
import com.amazonaws.services.cognitoidentityprovider.model.CreateResourceServerRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CreateResourceServerResult;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserImportJobRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserImportJobResult;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolClientRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolClientResult;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolDomainRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolDomainResult;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolResult;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteGroupRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteIdentityProviderRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteResourceServerRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserAttributesResult;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserPoolClientRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserPoolDomainRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserPoolDomainResult;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserPoolRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeIdentityProviderRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeIdentityProviderResult;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeResourceServerRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeResourceServerResult;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeRiskConfigurationRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeRiskConfigurationResult;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserImportJobRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserImportJobResult;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolClientRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolClientResult;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolDomainRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolDomainResult;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolResult;
import com.amazonaws.services.cognitoidentityprovider.model.ForgetDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetCSVHeaderRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetCSVHeaderResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetDeviceResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetGroupRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetGroupResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetIdentityProviderByIdentifierRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetIdentityProviderByIdentifierResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetSigningCertificateRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetSigningCertificateResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetUICustomizationRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetUICustomizationResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserAttributeVerificationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserAttributeVerificationCodeResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserPoolMfaConfigRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserPoolMfaConfigResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.GlobalSignOutRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GlobalSignOutResult;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthRequest;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListDevicesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListDevicesResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListGroupsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListGroupsResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListIdentityProvidersRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListIdentityProvidersResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListResourceServersRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListResourceServersResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListTagsForResourceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListTagsForResourceResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListUserImportJobsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListUserImportJobsResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListUserPoolClientsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListUserPoolClientsResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListUserPoolsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListUserPoolsResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListUsersInGroupRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListUsersInGroupResult;
import com.amazonaws.services.cognitoidentityprovider.model.ListUsersRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListUsersResult;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeResult;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import com.amazonaws.services.cognitoidentityprovider.model.SetRiskConfigurationRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SetRiskConfigurationResult;
import com.amazonaws.services.cognitoidentityprovider.model.SetUICustomizationRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SetUICustomizationResult;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserMFAPreferenceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserMFAPreferenceResult;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserPoolMfaConfigRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserPoolMfaConfigResult;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserSettingsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserSettingsResult;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpResult;
import com.amazonaws.services.cognitoidentityprovider.model.StartUserImportJobRequest;
import com.amazonaws.services.cognitoidentityprovider.model.StartUserImportJobResult;
import com.amazonaws.services.cognitoidentityprovider.model.StopUserImportJobRequest;
import com.amazonaws.services.cognitoidentityprovider.model.StopUserImportJobResult;
import com.amazonaws.services.cognitoidentityprovider.model.TagResourceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.TagResourceResult;
import com.amazonaws.services.cognitoidentityprovider.model.UntagResourceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UntagResourceResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateAuthEventFeedbackRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateAuthEventFeedbackResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateDeviceStatusRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateDeviceStatusResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateGroupRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateGroupResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateIdentityProviderRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateIdentityProviderResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateResourceServerRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateResourceServerResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserAttributesResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolClientRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolClientResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolDomainRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolDomainResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolResult;
import com.amazonaws.services.cognitoidentityprovider.model.VerifySoftwareTokenRequest;
import com.amazonaws.services.cognitoidentityprovider.model.VerifySoftwareTokenResult;
import com.amazonaws.services.cognitoidentityprovider.model.VerifyUserAttributeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.VerifyUserAttributeResult;

/* JADX INFO: loaded from: classes.dex */
public interface AmazonCognitoIdentityProvider {
    AddCustomAttributesResult a(AddCustomAttributesRequest addCustomAttributesRequest);

    AdminConfirmSignUpResult a(AdminConfirmSignUpRequest adminConfirmSignUpRequest);

    AdminCreateUserResult a(AdminCreateUserRequest adminCreateUserRequest);

    AdminDeleteUserAttributesResult a(AdminDeleteUserAttributesRequest adminDeleteUserAttributesRequest);

    AdminDisableProviderForUserResult a(AdminDisableProviderForUserRequest adminDisableProviderForUserRequest);

    AdminDisableUserResult a(AdminDisableUserRequest adminDisableUserRequest);

    AdminEnableUserResult a(AdminEnableUserRequest adminEnableUserRequest);

    AdminGetDeviceResult a(AdminGetDeviceRequest adminGetDeviceRequest);

    AdminGetUserResult a(AdminGetUserRequest adminGetUserRequest);

    AdminInitiateAuthResult a(AdminInitiateAuthRequest adminInitiateAuthRequest);

    AdminLinkProviderForUserResult a(AdminLinkProviderForUserRequest adminLinkProviderForUserRequest);

    AdminListDevicesResult a(AdminListDevicesRequest adminListDevicesRequest);

    AdminListGroupsForUserResult a(AdminListGroupsForUserRequest adminListGroupsForUserRequest);

    AdminListUserAuthEventsResult a(AdminListUserAuthEventsRequest adminListUserAuthEventsRequest);

    AdminResetUserPasswordResult a(AdminResetUserPasswordRequest adminResetUserPasswordRequest);

    AdminRespondToAuthChallengeResult a(AdminRespondToAuthChallengeRequest adminRespondToAuthChallengeRequest);

    AdminSetUserMFAPreferenceResult a(AdminSetUserMFAPreferenceRequest adminSetUserMFAPreferenceRequest);

    AdminSetUserSettingsResult a(AdminSetUserSettingsRequest adminSetUserSettingsRequest);

    AdminUpdateAuthEventFeedbackResult a(AdminUpdateAuthEventFeedbackRequest adminUpdateAuthEventFeedbackRequest);

    AdminUpdateDeviceStatusResult a(AdminUpdateDeviceStatusRequest adminUpdateDeviceStatusRequest);

    AdminUpdateUserAttributesResult a(AdminUpdateUserAttributesRequest adminUpdateUserAttributesRequest);

    AdminUserGlobalSignOutResult a(AdminUserGlobalSignOutRequest adminUserGlobalSignOutRequest);

    AssociateSoftwareTokenResult a(AssociateSoftwareTokenRequest associateSoftwareTokenRequest);

    ChangePasswordResult a(ChangePasswordRequest changePasswordRequest);

    ConfirmDeviceResult a(ConfirmDeviceRequest confirmDeviceRequest);

    ConfirmForgotPasswordResult a(ConfirmForgotPasswordRequest confirmForgotPasswordRequest);

    ConfirmSignUpResult a(ConfirmSignUpRequest confirmSignUpRequest);

    CreateGroupResult a(CreateGroupRequest createGroupRequest);

    CreateIdentityProviderResult a(CreateIdentityProviderRequest createIdentityProviderRequest);

    CreateResourceServerResult a(CreateResourceServerRequest createResourceServerRequest);

    CreateUserImportJobResult a(CreateUserImportJobRequest createUserImportJobRequest);

    CreateUserPoolClientResult a(CreateUserPoolClientRequest createUserPoolClientRequest);

    CreateUserPoolDomainResult a(CreateUserPoolDomainRequest createUserPoolDomainRequest);

    CreateUserPoolResult a(CreateUserPoolRequest createUserPoolRequest);

    DeleteUserAttributesResult a(DeleteUserAttributesRequest deleteUserAttributesRequest);

    DeleteUserPoolDomainResult a(DeleteUserPoolDomainRequest deleteUserPoolDomainRequest);

    DescribeIdentityProviderResult a(DescribeIdentityProviderRequest describeIdentityProviderRequest);

    DescribeResourceServerResult a(DescribeResourceServerRequest describeResourceServerRequest);

    DescribeRiskConfigurationResult a(DescribeRiskConfigurationRequest describeRiskConfigurationRequest);

    DescribeUserImportJobResult a(DescribeUserImportJobRequest describeUserImportJobRequest);

    DescribeUserPoolClientResult a(DescribeUserPoolClientRequest describeUserPoolClientRequest);

    DescribeUserPoolDomainResult a(DescribeUserPoolDomainRequest describeUserPoolDomainRequest);

    DescribeUserPoolResult a(DescribeUserPoolRequest describeUserPoolRequest);

    ForgotPasswordResult a(ForgotPasswordRequest forgotPasswordRequest);

    GetCSVHeaderResult a(GetCSVHeaderRequest getCSVHeaderRequest);

    GetDeviceResult a(GetDeviceRequest getDeviceRequest);

    GetGroupResult a(GetGroupRequest getGroupRequest);

    GetIdentityProviderByIdentifierResult a(GetIdentityProviderByIdentifierRequest getIdentityProviderByIdentifierRequest);

    GetSigningCertificateResult a(GetSigningCertificateRequest getSigningCertificateRequest);

    GetUICustomizationResult a(GetUICustomizationRequest getUICustomizationRequest);

    GetUserAttributeVerificationCodeResult a(GetUserAttributeVerificationCodeRequest getUserAttributeVerificationCodeRequest);

    GetUserPoolMfaConfigResult a(GetUserPoolMfaConfigRequest getUserPoolMfaConfigRequest);

    GetUserResult a(GetUserRequest getUserRequest);

    GlobalSignOutResult a(GlobalSignOutRequest globalSignOutRequest);

    InitiateAuthResult a(InitiateAuthRequest initiateAuthRequest);

    ListDevicesResult a(ListDevicesRequest listDevicesRequest);

    ListGroupsResult a(ListGroupsRequest listGroupsRequest);

    ListIdentityProvidersResult a(ListIdentityProvidersRequest listIdentityProvidersRequest);

    ListResourceServersResult a(ListResourceServersRequest listResourceServersRequest);

    ListTagsForResourceResult a(ListTagsForResourceRequest listTagsForResourceRequest);

    ListUserImportJobsResult a(ListUserImportJobsRequest listUserImportJobsRequest);

    ListUserPoolClientsResult a(ListUserPoolClientsRequest listUserPoolClientsRequest);

    ListUserPoolsResult a(ListUserPoolsRequest listUserPoolsRequest);

    ListUsersInGroupResult a(ListUsersInGroupRequest listUsersInGroupRequest);

    ListUsersResult a(ListUsersRequest listUsersRequest);

    ResendConfirmationCodeResult a(ResendConfirmationCodeRequest resendConfirmationCodeRequest);

    RespondToAuthChallengeResult a(RespondToAuthChallengeRequest respondToAuthChallengeRequest);

    SetRiskConfigurationResult a(SetRiskConfigurationRequest setRiskConfigurationRequest);

    SetUICustomizationResult a(SetUICustomizationRequest setUICustomizationRequest);

    SetUserMFAPreferenceResult a(SetUserMFAPreferenceRequest setUserMFAPreferenceRequest);

    SetUserPoolMfaConfigResult a(SetUserPoolMfaConfigRequest setUserPoolMfaConfigRequest);

    SetUserSettingsResult a(SetUserSettingsRequest setUserSettingsRequest);

    SignUpResult a(SignUpRequest signUpRequest);

    StartUserImportJobResult a(StartUserImportJobRequest startUserImportJobRequest);

    StopUserImportJobResult a(StopUserImportJobRequest stopUserImportJobRequest);

    TagResourceResult a(TagResourceRequest tagResourceRequest);

    UntagResourceResult a(UntagResourceRequest untagResourceRequest);

    UpdateAuthEventFeedbackResult a(UpdateAuthEventFeedbackRequest updateAuthEventFeedbackRequest);

    UpdateDeviceStatusResult a(UpdateDeviceStatusRequest updateDeviceStatusRequest);

    UpdateGroupResult a(UpdateGroupRequest updateGroupRequest);

    UpdateIdentityProviderResult a(UpdateIdentityProviderRequest updateIdentityProviderRequest);

    UpdateResourceServerResult a(UpdateResourceServerRequest updateResourceServerRequest);

    UpdateUserAttributesResult a(UpdateUserAttributesRequest updateUserAttributesRequest);

    UpdateUserPoolClientResult a(UpdateUserPoolClientRequest updateUserPoolClientRequest);

    UpdateUserPoolDomainResult a(UpdateUserPoolDomainRequest updateUserPoolDomainRequest);

    UpdateUserPoolResult a(UpdateUserPoolRequest updateUserPoolRequest);

    VerifySoftwareTokenResult a(VerifySoftwareTokenRequest verifySoftwareTokenRequest);

    VerifyUserAttributeResult a(VerifyUserAttributeRequest verifyUserAttributeRequest);

    void a(Region region);

    void a(AdminAddUserToGroupRequest adminAddUserToGroupRequest);

    void a(AdminDeleteUserRequest adminDeleteUserRequest);

    void a(AdminForgetDeviceRequest adminForgetDeviceRequest);

    void a(AdminRemoveUserFromGroupRequest adminRemoveUserFromGroupRequest);

    void a(DeleteGroupRequest deleteGroupRequest);

    void a(DeleteIdentityProviderRequest deleteIdentityProviderRequest);

    void a(DeleteResourceServerRequest deleteResourceServerRequest);

    void a(DeleteUserPoolClientRequest deleteUserPoolClientRequest);

    void a(DeleteUserPoolRequest deleteUserPoolRequest);

    void a(DeleteUserRequest deleteUserRequest);

    void a(ForgetDeviceRequest forgetDeviceRequest);

    void a(String str);

    ResponseMetadata b_(AmazonWebServiceRequest amazonWebServiceRequest);

    void e();
}
