###### Class com.amazonaws.auth.AWSCognitoIdentityProvider (com.amazonaws.auth.AWSCognitoIdentityProvider)
.class public interface abstract Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
.super Ljava/lang/Object;
.source "AWSCognitoIdentityProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSIdentityProvider;


# virtual methods
.method public abstract a(Lcom/amazonaws/auth/IdentityChangedListener;)V
.end method

.method public abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract b(Lcom/amazonaws/auth/IdentityChangedListener;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract f()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()Z
.end method

.method public abstract h()V
.end method
