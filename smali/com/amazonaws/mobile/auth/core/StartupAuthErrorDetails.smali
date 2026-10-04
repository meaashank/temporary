###### Class com.amazonaws.mobile.auth.core.StartupAuthErrorDetails (com.amazonaws.mobile.auth.core.StartupAuthErrorDetails)
.class public Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;
.super Ljava/lang/Object;
.source "StartupAuthErrorDetails.java"


# instance fields
.field private final a:Lcom/amazonaws/mobile/auth/core/signin/AuthException;

.field private final b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/auth/core/signin/AuthException;Ljava/lang/Exception;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;->a:Lcom/amazonaws/mobile/auth/core/signin/AuthException;

    .line 32
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;->a:Lcom/amazonaws/mobile/auth/core/signin/AuthException;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public b()Lcom/amazonaws/mobile/auth/core/signin/AuthException;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;->a:Lcom/amazonaws/mobile/auth/core/signin/AuthException;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public d()Ljava/lang/Exception;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;->b:Ljava/lang/Exception;

    return-object v0
.end method
