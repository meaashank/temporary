###### Class com.amazonaws.mobile.client.internal.oauth2.AuthorizeResponse (com.amazonaws.mobile.client.internal.oauth2.AuthorizeResponse)
.class public Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;
.super Ljava/lang/Object;
.source "AuthorizeResponse.java"


# instance fields
.field a:Landroid/net/Uri;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;->b:Ljava/lang/String;

    return-object v0
.end method
