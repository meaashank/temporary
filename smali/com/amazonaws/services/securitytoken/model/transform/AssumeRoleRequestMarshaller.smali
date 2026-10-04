###### Class com.amazonaws.services.securitytoken.model.transform.AssumeRoleRequestMarshaller (com.amazonaws.services.securitytoken.model.transform.AssumeRoleRequestMarshaller)
.class public Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;
.super Ljava/lang/Object;
.source "AssumeRoleRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
        ">;",
        "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
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
.method public a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/Request;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_9d

    .line 37
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AWSSecurityTokenService"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "AssumeRole"

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2011-06-15"

    .line 40
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v1, "RoleArn"

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->h()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    const-string v1, "RoleSessionName"

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->i()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    const-string v1, "Policy"

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->j()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->k()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_63

    const-string v1, "DurationSeconds"

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->k()Ljava/lang/Integer;

    move-result-object v2

    .line 61
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_63
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    const-string v1, "ExternalId"

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->l()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_76
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    const-string v1, "SerialNumber"

    .line 70
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->m()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_89
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9c

    const-string v1, "TokenCode"

    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->n()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    return-object v0

    .line 33
    :cond_9d
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(AssumeRoleRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;->a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
