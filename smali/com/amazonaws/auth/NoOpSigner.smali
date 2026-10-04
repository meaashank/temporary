###### Class com.amazonaws.auth.NoOpSigner (com.amazonaws.auth.NoOpSigner)
.class public Lcom/amazonaws/auth/NoOpSigner;
.super Ljava/lang/Object;
.source "NoOpSigner.java"

# interfaces
.implements Lcom/amazonaws/auth/Signer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    return-void
.end method
