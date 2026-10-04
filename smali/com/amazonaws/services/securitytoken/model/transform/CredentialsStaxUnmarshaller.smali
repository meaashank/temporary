###### Class com.amazonaws.services.securitytoken.model.transform.CredentialsStaxUnmarshaller (com.amazonaws.services.securitytoken.model.transform.CredentialsStaxUnmarshaller)
.class Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;
.super Ljava/lang/Object;
.source "CredentialsStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/securitytoken/model/Credentials;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;
    .registers 1

    .line 81
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    .line 83
    :cond_b
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/Credentials;
    .registers 7

    .line 35
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/Credentials;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c()Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v2, v2, 0x2

    .line 44
    :cond_13
    :goto_13
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    goto :goto_77

    :cond_1b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6e

    const-string v3, "AccessKeyId"

    .line 49
    invoke-virtual {p1, v3, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 50
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    const-string v3, "SecretAccessKey"

    .line 54
    invoke-virtual {p1, v3, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 55
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/securitytoken/model/Credentials;->c(Ljava/lang/String;)V

    goto :goto_13

    :cond_46
    const-string v3, "SessionToken"

    .line 59
    invoke-virtual {p1, v3, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 60
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/securitytoken/model/Credentials;->e(Ljava/lang/String;)V

    goto :goto_13

    :cond_5a
    const-string v3, "Expiration"

    .line 64
    invoke-virtual {p1, v3, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 65
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    move-result-object v3

    .line 66
    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;

    move-result-object v3

    .line 65
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a(Ljava/util/Date;)V

    goto :goto_13

    :cond_6e
    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 70
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v3

    if-ge v3, v1, :cond_13

    :goto_77
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 32
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object p1

    return-object p1
.end method
