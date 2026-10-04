###### Class com.amazonaws.services.securitytoken.model.transform.AssumedRoleUserStaxMarshaller (com.amazonaws.services.securitytoken.model.transform.AssumedRoleUserStaxMarshaller)
.class Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;
.super Ljava/lang/Object;
.source "AssumedRoleUserStaxMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;
    .registers 1

    .line 44
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;

    .line 46
    :cond_b
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;Lcom/amazonaws/Request;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AssumedRoleId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->a()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Arn"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 36
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->b()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    return-void
.end method
