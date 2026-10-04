###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Exception (com.amazonaws.mobile.client.internal.oauth2.OAuth2Exception)
.class public Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;
.super Ljava/lang/RuntimeException;
.source "OAuth2Exception.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->a:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->b:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->c:Ljava/lang/String;

    return-object v0
.end method
