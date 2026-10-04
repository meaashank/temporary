###### Class com.amazonaws.mobile.client.AWSStartupResult (com.amazonaws.mobile.client.AWSStartupResult)
.class public Lcom/amazonaws/mobile/client/AWSStartupResult;
.super Ljava/lang/Object;
.source "AWSStartupResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/amazonaws/mobile/auth/core/IdentityManager;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSStartupResult;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSStartupResult;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

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
