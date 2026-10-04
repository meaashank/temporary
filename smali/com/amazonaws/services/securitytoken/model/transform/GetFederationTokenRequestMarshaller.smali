###### Class com.amazonaws.services.securitytoken.model.transform.GetFederationTokenRequestMarshaller (com.amazonaws.services.securitytoken.model.transform.GetFederationTokenRequestMarshaller)
.class public Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;
.super Ljava/lang/Object;
.source "GetFederationTokenRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
        ">;",
        "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/Request;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_51

    .line 38
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AWSSecurityTokenService"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "GetFederationToken"

    .line 40
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2011-06-15"

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v1, "Name"

    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;->h()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    const-string v1, "Policy"

    .line 51
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;->i()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;->j()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_50

    const-string v1, "DurationSeconds"

    .line 56
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;->j()Ljava/lang/Integer;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    return-object v0

    .line 34
    :cond_51
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(GetFederationTokenRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;->a(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
