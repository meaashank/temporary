###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidEmailRoleAccessPolicyExceptionUnmarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidEmailRoleAccessPolicyExceptionUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidEmailRoleAccessPolicyExceptionUnmarshaller;
.super Lcom/amazonaws/transform/JsonErrorUnmarshaller;
.source "InvalidEmailRoleAccessPolicyExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    const-class v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidEmailRoleAccessPolicyException;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 23
    check-cast p1, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidEmailRoleAccessPolicyExceptionUnmarshaller;->b(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Z
    .registers 3

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InvalidEmailRoleAccessPolicyException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;
    .registers 3

    .line 38
    invoke-super {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->b(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidEmailRoleAccessPolicyException;

    const-string v0, "InvalidEmailRoleAccessPolicyException"

    .line 39
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidEmailRoleAccessPolicyException;->c(Ljava/lang/String;)V

    return-object p1
.end method
