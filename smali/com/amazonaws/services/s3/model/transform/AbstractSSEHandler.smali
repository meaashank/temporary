###### Class com.amazonaws.services.s3.model.transform.AbstractSSEHandler (com.amazonaws.services.s3.model.transform.AbstractSSEHandler)
.class abstract Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "AbstractSSEHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->j()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 41
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->c(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->j()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 55
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->d(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    .line 67
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->j()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 69
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->e(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->j()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 48
    :cond_8
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->f()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->j()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 62
    :cond_8
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->g()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method protected abstract j()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
.end method

.method public final k_()Ljava/lang/String;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->j()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 34
    :cond_8
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->k_()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method
