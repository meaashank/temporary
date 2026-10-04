###### Class com.amazonaws.mobile.auth.core.signin.ProviderAuthException (com.amazonaws.mobile.auth.core.signin.ProviderAuthException)
.class public Lcom/amazonaws/mobile/auth/core/signin/ProviderAuthException;
.super Lcom/amazonaws/mobile/auth/core/signin/AuthException;
.source "ProviderAuthException.java"


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/auth/core/signin/AuthException;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    return-void
.end method
