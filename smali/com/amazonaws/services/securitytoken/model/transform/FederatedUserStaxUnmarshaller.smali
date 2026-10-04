###### Class com.amazonaws.services.securitytoken.model.transform.FederatedUserStaxUnmarshaller (com.amazonaws.services.securitytoken.model.transform.FederatedUserStaxUnmarshaller)
.class Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;
.super Ljava/lang/Object;
.source "FederatedUserStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/securitytoken/model/FederatedUser;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;
    .registers 1

    .line 70
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;

    .line 72
    :cond_b
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;->a:Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/FederatedUser;
    .registers 7

    .line 35
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;-><init>()V

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

    goto :goto_4f

    :cond_1b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    const-string v3, "FederatedUserId"

    .line 49
    invoke-virtual {p1, v3, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 50
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    .line 51
    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    const-string v3, "Arn"

    .line 54
    invoke-virtual {p1, v3, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 55
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->c(Ljava/lang/String;)V

    goto :goto_13

    :cond_46
    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v3

    if-ge v3, v1, :cond_13

    :goto_4f
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 32
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object p1

    return-object p1
.end method
