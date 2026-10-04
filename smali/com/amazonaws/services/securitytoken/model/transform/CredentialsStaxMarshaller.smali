###### Class com.amazonaws.services.securitytoken.model.transform.CredentialsStaxMarshaller (com.amazonaws.services.securitytoken.model.transform.CredentialsStaxMarshaller)
.class Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;
.super Ljava/lang/Object;
.source "CredentialsStaxMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;
    .registers 1

    .line 54
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;

    .line 56
    :cond_b
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/securitytoken/model/Credentials;Lcom/amazonaws/Request;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/Credentials;",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AccessKeyId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SecretAccessKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->b()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_44
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SessionToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->c()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_66
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->d()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Expiration"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->d()Ljava/util/Date;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    return-void
.end method
