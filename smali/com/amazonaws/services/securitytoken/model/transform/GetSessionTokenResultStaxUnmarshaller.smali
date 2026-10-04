###### Class com.amazonaws.services.securitytoken.model.transform.GetSessionTokenResultStaxUnmarshaller (com.amazonaws.services.securitytoken.model.transform.GetSessionTokenResultStaxUnmarshaller)
.class public Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "GetSessionTokenResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;
    .registers 1

    .line 67
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    .line 69
    :cond_b
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    .registers 7

    .line 36
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 41
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c()Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v2, v2, 0x2

    .line 45
    :cond_13
    :goto_13
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    goto :goto_3b

    :cond_1b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    const-string v3, "Credentials"

    .line 50
    invoke-virtual {p1, v3, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 51
    invoke-static {}, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->a()Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    move-result-object v3

    .line 52
    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->a(Lcom/amazonaws/services/securitytoken/model/Credentials;)V

    goto :goto_13

    :cond_32
    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 56
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v3

    if-ge v3, v1, :cond_13

    :goto_3b
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 32
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    move-result-object p1

    return-object p1
.end method
