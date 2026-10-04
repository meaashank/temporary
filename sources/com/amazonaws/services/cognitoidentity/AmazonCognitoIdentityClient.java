package com.amazonaws.services.cognitoidentity;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.http.JsonResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.metrics.RequestMetricCollector;
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
import com.amazonaws.services.cognitoidentity.model.transform.ConcurrentModificationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.CreateIdentityPoolRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.CreateIdentityPoolResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DeleteIdentitiesRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DeleteIdentitiesResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DeleteIdentityPoolRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DescribeIdentityPoolRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DescribeIdentityPoolResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DescribeIdentityRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DescribeIdentityResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DeveloperUserAlreadyRegisteredExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ExternalServiceExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetCredentialsForIdentityRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetCredentialsForIdentityResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetIdRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetIdResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetIdentityPoolRolesRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetIdentityPoolRolesResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetOpenIdTokenForDeveloperIdentityRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetOpenIdTokenRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetOpenIdTokenResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InternalErrorExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InvalidIdentityPoolConfigurationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InvalidParameterExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.LimitExceededExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ListIdentitiesRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ListIdentitiesResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ListIdentityPoolsRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ListIdentityPoolsResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ListTagsForResourceRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ListTagsForResourceResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.LookupDeveloperIdentityRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.LookupDeveloperIdentityResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.MergeDeveloperIdentitiesRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.MergeDeveloperIdentitiesResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.NotAuthorizedExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ResourceConflictExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ResourceNotFoundExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.SetIdentityPoolRolesRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.TagResourceRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.TagResourceResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.TooManyRequestsExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.UnlinkDeveloperIdentityRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.UnlinkIdentityRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.UntagResourceRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.UntagResourceResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.UpdateIdentityPoolRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.UpdateIdentityPoolResultJsonUnmarshaller;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AmazonCognitoIdentityClient extends AmazonWebServiceClient implements AmazonCognitoIdentity {
    protected List<JsonErrorUnmarshaller> h;
    private AWSCredentialsProvider i;

    private static ClientConfiguration b(ClientConfiguration clientConfiguration) {
        return clientConfiguration;
    }

    @Deprecated
    public AmazonCognitoIdentityClient() {
        this(new DefaultAWSCredentialsProviderChain(), new ClientConfiguration());
    }

    @Deprecated
    public AmazonCognitoIdentityClient(ClientConfiguration clientConfiguration) {
        this(new DefaultAWSCredentialsProviderChain(), clientConfiguration);
    }

    public AmazonCognitoIdentityClient(AWSCredentials aWSCredentials) {
        this(aWSCredentials, new ClientConfiguration());
    }

    public AmazonCognitoIdentityClient(AWSCredentials aWSCredentials, ClientConfiguration clientConfiguration) {
        this(new StaticCredentialsProvider(aWSCredentials), clientConfiguration);
    }

    public AmazonCognitoIdentityClient(AWSCredentialsProvider aWSCredentialsProvider) {
        this(aWSCredentialsProvider, new ClientConfiguration());
    }

    public AmazonCognitoIdentityClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    @Deprecated
    public AmazonCognitoIdentityClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        super(b(clientConfiguration), requestMetricCollector);
        this.i = aWSCredentialsProvider;
        o();
    }

    public AmazonCognitoIdentityClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(b(clientConfiguration), httpClient);
        this.i = aWSCredentialsProvider;
        o();
    }

    private void o() {
        this.h = new ArrayList();
        this.h.add(new ConcurrentModificationExceptionUnmarshaller());
        this.h.add(new DeveloperUserAlreadyRegisteredExceptionUnmarshaller());
        this.h.add(new ExternalServiceExceptionUnmarshaller());
        this.h.add(new InternalErrorExceptionUnmarshaller());
        this.h.add(new InvalidIdentityPoolConfigurationExceptionUnmarshaller());
        this.h.add(new InvalidParameterExceptionUnmarshaller());
        this.h.add(new LimitExceededExceptionUnmarshaller());
        this.h.add(new NotAuthorizedExceptionUnmarshaller());
        this.h.add(new ResourceConflictExceptionUnmarshaller());
        this.h.add(new ResourceNotFoundExceptionUnmarshaller());
        this.h.add(new TooManyRequestsExceptionUnmarshaller());
        this.h.add(new JsonErrorUnmarshaller());
        a("cognito-identity.us-east-1.amazonaws.com");
        this.g = "cognito-identity";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.e.addAll(handlerChainFactory.a("/com/amazonaws/services/cognitoidentity/request.handlers"));
        this.e.addAll(handlerChainFactory.b("/com/amazonaws/services/cognitoidentity/request.handler2s"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.CreateIdentityPoolRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public CreateIdentityPoolResult a(CreateIdentityPoolRequest createIdentityPoolRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(createIdentityPoolRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    createIdentityPoolRequest = new CreateIdentityPoolRequestMarshaller().a((CreateIdentityPoolRequest) createIdentityPoolRequest);
                    try {
                        createIdentityPoolRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(createIdentityPoolRequest, new JsonResponseHandler(new CreateIdentityPoolResultJsonUnmarshaller()), executionContextA);
                        try {
                            CreateIdentityPoolResult createIdentityPoolResult = (CreateIdentityPoolResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, createIdentityPoolRequest, responseA, true);
                            return createIdentityPoolResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, createIdentityPoolRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            createIdentityPoolRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.DeleteIdentitiesRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public DeleteIdentitiesResult a(DeleteIdentitiesRequest deleteIdentitiesRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(deleteIdentitiesRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    deleteIdentitiesRequest = new DeleteIdentitiesRequestMarshaller().a((DeleteIdentitiesRequest) deleteIdentitiesRequest);
                    try {
                        deleteIdentitiesRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(deleteIdentitiesRequest, new JsonResponseHandler(new DeleteIdentitiesResultJsonUnmarshaller()), executionContextA);
                        try {
                            DeleteIdentitiesResult deleteIdentitiesResult = (DeleteIdentitiesResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, deleteIdentitiesRequest, responseA, true);
                            return deleteIdentitiesResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, deleteIdentitiesRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            deleteIdentitiesRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.DeleteIdentityPoolRequest] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public void a(DeleteIdentityPoolRequest deleteIdentityPoolRequest) throws Throwable {
        ExecutionContext executionContextA = a(deleteIdentityPoolRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    Request<DeleteIdentityPoolRequest> requestA = new DeleteIdentityPoolRequestMarshaller().a((DeleteIdentityPoolRequest) deleteIdentityPoolRequest);
                    try {
                        requestA.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        a(requestA, new JsonResponseHandler(null), executionContextA);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                        a(aWSRequestMetricsC, requestA, null, true);
                    } catch (Throwable th) {
                        th = th;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                a(aWSRequestMetricsC, deleteIdentityPoolRequest, null, true);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            deleteIdentityPoolRequest = 0;
            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
            a(aWSRequestMetricsC, deleteIdentityPoolRequest, null, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.DescribeIdentityRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public DescribeIdentityResult a(DescribeIdentityRequest describeIdentityRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(describeIdentityRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    describeIdentityRequest = new DescribeIdentityRequestMarshaller().a((DescribeIdentityRequest) describeIdentityRequest);
                    try {
                        describeIdentityRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(describeIdentityRequest, new JsonResponseHandler(new DescribeIdentityResultJsonUnmarshaller()), executionContextA);
                        try {
                            DescribeIdentityResult describeIdentityResult = (DescribeIdentityResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, describeIdentityRequest, responseA, true);
                            return describeIdentityResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, describeIdentityRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            describeIdentityRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.DescribeIdentityPoolRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public DescribeIdentityPoolResult a(DescribeIdentityPoolRequest describeIdentityPoolRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(describeIdentityPoolRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    describeIdentityPoolRequest = new DescribeIdentityPoolRequestMarshaller().a((DescribeIdentityPoolRequest) describeIdentityPoolRequest);
                    try {
                        describeIdentityPoolRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(describeIdentityPoolRequest, new JsonResponseHandler(new DescribeIdentityPoolResultJsonUnmarshaller()), executionContextA);
                        try {
                            DescribeIdentityPoolResult describeIdentityPoolResult = (DescribeIdentityPoolResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, describeIdentityPoolRequest, responseA, true);
                            return describeIdentityPoolResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, describeIdentityPoolRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            describeIdentityPoolRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public GetCredentialsForIdentityResult a(GetCredentialsForIdentityRequest getCredentialsForIdentityRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(getCredentialsForIdentityRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    getCredentialsForIdentityRequest = new GetCredentialsForIdentityRequestMarshaller().a((GetCredentialsForIdentityRequest) getCredentialsForIdentityRequest);
                    try {
                        getCredentialsForIdentityRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(getCredentialsForIdentityRequest, new JsonResponseHandler(new GetCredentialsForIdentityResultJsonUnmarshaller()), executionContextA);
                        try {
                            GetCredentialsForIdentityResult getCredentialsForIdentityResult = (GetCredentialsForIdentityResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getCredentialsForIdentityRequest, responseA, true);
                            return getCredentialsForIdentityResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getCredentialsForIdentityRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            getCredentialsForIdentityRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.GetIdRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public GetIdResult a(GetIdRequest getIdRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(getIdRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    getIdRequest = new GetIdRequestMarshaller().a((GetIdRequest) getIdRequest);
                    try {
                        getIdRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(getIdRequest, new JsonResponseHandler(new GetIdResultJsonUnmarshaller()), executionContextA);
                        try {
                            GetIdResult getIdResult = (GetIdResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getIdRequest, responseA, true);
                            return getIdResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getIdRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            getIdRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.GetIdentityPoolRolesRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public GetIdentityPoolRolesResult a(GetIdentityPoolRolesRequest getIdentityPoolRolesRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(getIdentityPoolRolesRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    getIdentityPoolRolesRequest = new GetIdentityPoolRolesRequestMarshaller().a((GetIdentityPoolRolesRequest) getIdentityPoolRolesRequest);
                    try {
                        getIdentityPoolRolesRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(getIdentityPoolRolesRequest, new JsonResponseHandler(new GetIdentityPoolRolesResultJsonUnmarshaller()), executionContextA);
                        try {
                            GetIdentityPoolRolesResult getIdentityPoolRolesResult = (GetIdentityPoolRolesResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getIdentityPoolRolesRequest, responseA, true);
                            return getIdentityPoolRolesResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getIdentityPoolRolesRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            getIdentityPoolRolesRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public GetOpenIdTokenResult a(GetOpenIdTokenRequest getOpenIdTokenRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(getOpenIdTokenRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    getOpenIdTokenRequest = new GetOpenIdTokenRequestMarshaller().a((GetOpenIdTokenRequest) getOpenIdTokenRequest);
                    try {
                        getOpenIdTokenRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(getOpenIdTokenRequest, new JsonResponseHandler(new GetOpenIdTokenResultJsonUnmarshaller()), executionContextA);
                        try {
                            GetOpenIdTokenResult getOpenIdTokenResult = (GetOpenIdTokenResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getOpenIdTokenRequest, responseA, true);
                            return getOpenIdTokenResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getOpenIdTokenRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            getOpenIdTokenRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenForDeveloperIdentityRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public GetOpenIdTokenForDeveloperIdentityResult a(GetOpenIdTokenForDeveloperIdentityRequest getOpenIdTokenForDeveloperIdentityRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(getOpenIdTokenForDeveloperIdentityRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    getOpenIdTokenForDeveloperIdentityRequest = new GetOpenIdTokenForDeveloperIdentityRequestMarshaller().a((GetOpenIdTokenForDeveloperIdentityRequest) getOpenIdTokenForDeveloperIdentityRequest);
                    try {
                        getOpenIdTokenForDeveloperIdentityRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(getOpenIdTokenForDeveloperIdentityRequest, new JsonResponseHandler(new GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller()), executionContextA);
                        try {
                            GetOpenIdTokenForDeveloperIdentityResult getOpenIdTokenForDeveloperIdentityResult = (GetOpenIdTokenForDeveloperIdentityResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getOpenIdTokenForDeveloperIdentityRequest, responseA, true);
                            return getOpenIdTokenForDeveloperIdentityResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, getOpenIdTokenForDeveloperIdentityRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            getOpenIdTokenForDeveloperIdentityRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.ListIdentitiesRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public ListIdentitiesResult a(ListIdentitiesRequest listIdentitiesRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(listIdentitiesRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    listIdentitiesRequest = new ListIdentitiesRequestMarshaller().a((ListIdentitiesRequest) listIdentitiesRequest);
                    try {
                        listIdentitiesRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(listIdentitiesRequest, new JsonResponseHandler(new ListIdentitiesResultJsonUnmarshaller()), executionContextA);
                        try {
                            ListIdentitiesResult listIdentitiesResult = (ListIdentitiesResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, listIdentitiesRequest, responseA, true);
                            return listIdentitiesResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, listIdentitiesRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            listIdentitiesRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.ListIdentityPoolsRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public ListIdentityPoolsResult a(ListIdentityPoolsRequest listIdentityPoolsRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(listIdentityPoolsRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    listIdentityPoolsRequest = new ListIdentityPoolsRequestMarshaller().a((ListIdentityPoolsRequest) listIdentityPoolsRequest);
                    try {
                        listIdentityPoolsRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(listIdentityPoolsRequest, new JsonResponseHandler(new ListIdentityPoolsResultJsonUnmarshaller()), executionContextA);
                        try {
                            ListIdentityPoolsResult listIdentityPoolsResult = (ListIdentityPoolsResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, listIdentityPoolsRequest, responseA, true);
                            return listIdentityPoolsResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, listIdentityPoolsRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            listIdentityPoolsRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.ListTagsForResourceRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public ListTagsForResourceResult a(ListTagsForResourceRequest listTagsForResourceRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(listTagsForResourceRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    listTagsForResourceRequest = new ListTagsForResourceRequestMarshaller().a((ListTagsForResourceRequest) listTagsForResourceRequest);
                    try {
                        listTagsForResourceRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(listTagsForResourceRequest, new JsonResponseHandler(new ListTagsForResourceResultJsonUnmarshaller()), executionContextA);
                        try {
                            ListTagsForResourceResult listTagsForResourceResult = (ListTagsForResourceResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, listTagsForResourceRequest, responseA, true);
                            return listTagsForResourceResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, listTagsForResourceRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            listTagsForResourceRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public LookupDeveloperIdentityResult a(LookupDeveloperIdentityRequest lookupDeveloperIdentityRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(lookupDeveloperIdentityRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    lookupDeveloperIdentityRequest = new LookupDeveloperIdentityRequestMarshaller().a((LookupDeveloperIdentityRequest) lookupDeveloperIdentityRequest);
                    try {
                        lookupDeveloperIdentityRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(lookupDeveloperIdentityRequest, new JsonResponseHandler(new LookupDeveloperIdentityResultJsonUnmarshaller()), executionContextA);
                        try {
                            LookupDeveloperIdentityResult lookupDeveloperIdentityResult = (LookupDeveloperIdentityResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, lookupDeveloperIdentityRequest, responseA, true);
                            return lookupDeveloperIdentityResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, lookupDeveloperIdentityRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            lookupDeveloperIdentityRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.MergeDeveloperIdentitiesRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public MergeDeveloperIdentitiesResult a(MergeDeveloperIdentitiesRequest mergeDeveloperIdentitiesRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(mergeDeveloperIdentitiesRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    mergeDeveloperIdentitiesRequest = new MergeDeveloperIdentitiesRequestMarshaller().a((MergeDeveloperIdentitiesRequest) mergeDeveloperIdentitiesRequest);
                    try {
                        mergeDeveloperIdentitiesRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(mergeDeveloperIdentitiesRequest, new JsonResponseHandler(new MergeDeveloperIdentitiesResultJsonUnmarshaller()), executionContextA);
                        try {
                            MergeDeveloperIdentitiesResult mergeDeveloperIdentitiesResult = (MergeDeveloperIdentitiesResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, mergeDeveloperIdentitiesRequest, responseA, true);
                            return mergeDeveloperIdentitiesResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, mergeDeveloperIdentitiesRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            mergeDeveloperIdentitiesRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.SetIdentityPoolRolesRequest] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public void a(SetIdentityPoolRolesRequest setIdentityPoolRolesRequest) throws Throwable {
        ExecutionContext executionContextA = a(setIdentityPoolRolesRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    Request<SetIdentityPoolRolesRequest> requestA = new SetIdentityPoolRolesRequestMarshaller().a((SetIdentityPoolRolesRequest) setIdentityPoolRolesRequest);
                    try {
                        requestA.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        a(requestA, new JsonResponseHandler(null), executionContextA);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                        a(aWSRequestMetricsC, requestA, null, true);
                    } catch (Throwable th) {
                        th = th;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                a(aWSRequestMetricsC, setIdentityPoolRolesRequest, null, true);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            setIdentityPoolRolesRequest = 0;
            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
            a(aWSRequestMetricsC, setIdentityPoolRolesRequest, null, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.TagResourceRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public TagResourceResult a(TagResourceRequest tagResourceRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(tagResourceRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    tagResourceRequest = new TagResourceRequestMarshaller().a((TagResourceRequest) tagResourceRequest);
                    try {
                        tagResourceRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(tagResourceRequest, new JsonResponseHandler(new TagResourceResultJsonUnmarshaller()), executionContextA);
                        try {
                            TagResourceResult tagResourceResult = (TagResourceResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, tagResourceRequest, responseA, true);
                            return tagResourceResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, tagResourceRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            tagResourceRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.UnlinkDeveloperIdentityRequest] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public void a(UnlinkDeveloperIdentityRequest unlinkDeveloperIdentityRequest) throws Throwable {
        ExecutionContext executionContextA = a(unlinkDeveloperIdentityRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    Request<UnlinkDeveloperIdentityRequest> requestA = new UnlinkDeveloperIdentityRequestMarshaller().a((UnlinkDeveloperIdentityRequest) unlinkDeveloperIdentityRequest);
                    try {
                        requestA.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        a(requestA, new JsonResponseHandler(null), executionContextA);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                        a(aWSRequestMetricsC, requestA, null, true);
                    } catch (Throwable th) {
                        th = th;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                a(aWSRequestMetricsC, unlinkDeveloperIdentityRequest, null, true);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            unlinkDeveloperIdentityRequest = 0;
            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
            a(aWSRequestMetricsC, unlinkDeveloperIdentityRequest, null, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.UnlinkIdentityRequest] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public void a(UnlinkIdentityRequest unlinkIdentityRequest) throws Throwable {
        ExecutionContext executionContextA = a(unlinkIdentityRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    Request<UnlinkIdentityRequest> requestA = new UnlinkIdentityRequestMarshaller().a((UnlinkIdentityRequest) unlinkIdentityRequest);
                    try {
                        requestA.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        a(requestA, new JsonResponseHandler(null), executionContextA);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                        a(aWSRequestMetricsC, requestA, null, true);
                    } catch (Throwable th) {
                        th = th;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                a(aWSRequestMetricsC, unlinkIdentityRequest, null, true);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            unlinkIdentityRequest = 0;
            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
            a(aWSRequestMetricsC, unlinkIdentityRequest, null, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.UntagResourceRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public UntagResourceResult a(UntagResourceRequest untagResourceRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(untagResourceRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    untagResourceRequest = new UntagResourceRequestMarshaller().a((UntagResourceRequest) untagResourceRequest);
                    try {
                        untagResourceRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(untagResourceRequest, new JsonResponseHandler(new UntagResourceResultJsonUnmarshaller()), executionContextA);
                        try {
                            UntagResourceResult untagResourceResult = (UntagResourceResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, untagResourceRequest, responseA, true);
                            return untagResourceResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, untagResourceRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            untagResourceRequest = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.AmazonWebServiceRequest, com.amazonaws.services.cognitoidentity.model.UpdateIdentityPoolRequest] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.amazonaws.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.amazonaws.Request] */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public UpdateIdentityPoolResult a(UpdateIdentityPoolRequest updateIdentityPoolRequest) throws Throwable {
        Throwable th;
        ExecutionContext executionContextA = a(updateIdentityPoolRequest);
        AWSRequestMetrics aWSRequestMetricsC = executionContextA.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response response = null;
        try {
            try {
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.RequestMarshallTime);
                try {
                    updateIdentityPoolRequest = new UpdateIdentityPoolRequestMarshaller().a((UpdateIdentityPoolRequest) updateIdentityPoolRequest);
                    try {
                        updateIdentityPoolRequest.a(aWSRequestMetricsC);
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        Response responseA = a(updateIdentityPoolRequest, new JsonResponseHandler(new UpdateIdentityPoolResultJsonUnmarshaller()), executionContextA);
                        try {
                            UpdateIdentityPoolResult updateIdentityPoolResult = (UpdateIdentityPoolResult) responseA.a();
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, updateIdentityPoolRequest, responseA, true);
                            return updateIdentityPoolResult;
                        } catch (Throwable th2) {
                            response = responseA;
                            th = th2;
                            aWSRequestMetricsC.b(AWSRequestMetrics.Field.ClientExecuteTime);
                            a(aWSRequestMetricsC, updateIdentityPoolRequest, response, true);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        aWSRequestMetricsC.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            updateIdentityPoolRequest = 0;
        }
    }

    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    @Deprecated
    public ResponseMetadata a_(AmazonWebServiceRequest amazonWebServiceRequest) {
        return this.d.a(amazonWebServiceRequest);
    }

    private <X, Y extends AmazonWebServiceRequest> Response<X> a(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, ExecutionContext executionContext) {
        request.a(this.b);
        request.a(this.f);
        AWSRequestMetrics aWSRequestMetricsC = executionContext.c();
        aWSRequestMetricsC.a(AWSRequestMetrics.Field.CredentialsRequestTime);
        try {
            AWSCredentials aWSCredentialsA = this.i.a();
            aWSRequestMetricsC.b(AWSRequestMetrics.Field.CredentialsRequestTime);
            AmazonWebServiceRequest amazonWebServiceRequestA = request.a();
            if (amazonWebServiceRequestA != null && amazonWebServiceRequestA.l_() != null) {
                aWSCredentialsA = amazonWebServiceRequestA.l_();
            }
            executionContext.a(aWSCredentialsA);
            return this.d.a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) new JsonErrorResponseHandler(this.h), executionContext);
        } catch (Throwable th) {
            aWSRequestMetricsC.b(AWSRequestMetrics.Field.CredentialsRequestTime);
            throw th;
        }
    }
}
