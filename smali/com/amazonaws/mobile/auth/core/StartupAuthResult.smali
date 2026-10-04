###### Class com.amazonaws.mobile.auth.core.StartupAuthResult (com.amazonaws.mobile.auth.core.StartupAuthResult)
.class public Lcom/amazonaws/mobile/auth/core/StartupAuthResult;
.super Ljava/lang/Object;
.source "StartupAuthResult.java"


# instance fields
.field private final a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

.field private final b:Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 31
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->b:Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->a()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public c()Z
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public d()Lcom/amazonaws/mobile/auth/core/IdentityManager;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    return-object v0
.end method

.method public e()Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->b:Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;

    return-object v0
.end method
