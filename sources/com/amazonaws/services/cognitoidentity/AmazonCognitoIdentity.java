package com.amazonaws.services.cognitoidentity;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.regions.Region;
import com.amazonaws.services.cognitoidentity.model.CreateIdentityPoolRequest;
import com.amazonaws.services.cognitoidentity.model.CreateIdentityPoolResult;
import com.amazonaws.services.cognitoidentity.model.DeleteIdentitiesRequest;
import com.amazonaws.services.cognitoidentity.model.DeleteIdentitiesResult;
import com.amazonaws.services.cognitoidentity.model.DeleteIdentityPoolRequest;
import com.amazonaws.services.cognitoidentity.model.DescribeIdentityPoolRequest;
import com.amazonaws.services.cognitoidentity.model.DescribeIdentityPoolResult;
import com.amazonaws.services.cognitoidentity.model.DescribeIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.DescribeIdentityResult;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.services.cognitoidentity.model.GetIdRequest;
import com.amazonaws.services.cognitoidentity.model.GetIdResult;
import com.amazonaws.services.cognitoidentity.model.GetIdentityPoolRolesRequest;
import com.amazonaws.services.cognitoidentity.model.GetIdentityPoolRolesResult;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenForDeveloperIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenForDeveloperIdentityResult;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenRequest;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenResult;
import com.amazonaws.services.cognitoidentity.model.ListIdentitiesRequest;
import com.amazonaws.services.cognitoidentity.model.ListIdentitiesResult;
import com.amazonaws.services.cognitoidentity.model.ListIdentityPoolsRequest;
import com.amazonaws.services.cognitoidentity.model.ListIdentityPoolsResult;
import com.amazonaws.services.cognitoidentity.model.ListTagsForResourceRequest;
import com.amazonaws.services.cognitoidentity.model.ListTagsForResourceResult;
import com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityResult;
import com.amazonaws.services.cognitoidentity.model.MergeDeveloperIdentitiesRequest;
import com.amazonaws.services.cognitoidentity.model.MergeDeveloperIdentitiesResult;
import com.amazonaws.services.cognitoidentity.model.SetIdentityPoolRolesRequest;
import com.amazonaws.services.cognitoidentity.model.TagResourceRequest;
import com.amazonaws.services.cognitoidentity.model.TagResourceResult;
import com.amazonaws.services.cognitoidentity.model.UnlinkDeveloperIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.UnlinkIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.UntagResourceRequest;
import com.amazonaws.services.cognitoidentity.model.UntagResourceResult;
import com.amazonaws.services.cognitoidentity.model.UpdateIdentityPoolRequest;
import com.amazonaws.services.cognitoidentity.model.UpdateIdentityPoolResult;

/* JADX INFO: loaded from: classes.dex */
public interface AmazonCognitoIdentity {
    CreateIdentityPoolResult a(CreateIdentityPoolRequest createIdentityPoolRequest);

    DeleteIdentitiesResult a(DeleteIdentitiesRequest deleteIdentitiesRequest);

    DescribeIdentityPoolResult a(DescribeIdentityPoolRequest describeIdentityPoolRequest);

    DescribeIdentityResult a(DescribeIdentityRequest describeIdentityRequest);

    GetCredentialsForIdentityResult a(GetCredentialsForIdentityRequest getCredentialsForIdentityRequest);

    GetIdResult a(GetIdRequest getIdRequest);

    GetIdentityPoolRolesResult a(GetIdentityPoolRolesRequest getIdentityPoolRolesRequest);

    GetOpenIdTokenForDeveloperIdentityResult a(GetOpenIdTokenForDeveloperIdentityRequest getOpenIdTokenForDeveloperIdentityRequest);

    GetOpenIdTokenResult a(GetOpenIdTokenRequest getOpenIdTokenRequest);

    ListIdentitiesResult a(ListIdentitiesRequest listIdentitiesRequest);

    ListIdentityPoolsResult a(ListIdentityPoolsRequest listIdentityPoolsRequest);

    ListTagsForResourceResult a(ListTagsForResourceRequest listTagsForResourceRequest);

    LookupDeveloperIdentityResult a(LookupDeveloperIdentityRequest lookupDeveloperIdentityRequest);

    MergeDeveloperIdentitiesResult a(MergeDeveloperIdentitiesRequest mergeDeveloperIdentitiesRequest);

    TagResourceResult a(TagResourceRequest tagResourceRequest);

    UntagResourceResult a(UntagResourceRequest untagResourceRequest);

    UpdateIdentityPoolResult a(UpdateIdentityPoolRequest updateIdentityPoolRequest);

    void a(Region region);

    void a(DeleteIdentityPoolRequest deleteIdentityPoolRequest);

    void a(SetIdentityPoolRolesRequest setIdentityPoolRolesRequest);

    void a(UnlinkDeveloperIdentityRequest unlinkDeveloperIdentityRequest);

    void a(UnlinkIdentityRequest unlinkIdentityRequest);

    void a(String str);

    ResponseMetadata a_(AmazonWebServiceRequest amazonWebServiceRequest);

    void e();
}
