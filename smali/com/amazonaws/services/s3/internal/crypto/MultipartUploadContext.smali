###### Class com.amazonaws.services.s3.internal.crypto.MultipartUploadContext (com.amazonaws.services.s3.internal.crypto.MultipartUploadContext)
.class public abstract Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;
.super Ljava/lang/Object;
.source "MultipartUploadContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_d

    .line 76
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_d
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->d:Ljava/util/Map;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->c:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->c:Z

    return v0
.end method

.method public final g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->d:Ljava/util/Map;

    return-object v0
.end method
