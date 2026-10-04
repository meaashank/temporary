###### Class com.amazonaws.services.s3.internal.S3VersionHeaderHandler (com.amazonaws.services.s3.internal.S3VersionHeaderHandler)
.class public Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;
.super Ljava/lang/Object;
.source "S3VersionHeaderHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/services/s3/internal/S3VersionResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/internal/S3VersionResult;Lcom/amazonaws/http/HttpResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p2

    const-string v0, "x-amz-version-id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/internal/S3VersionResult;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    .registers 3

    .line 25
    check-cast p1, Lcom/amazonaws/services/s3/internal/S3VersionResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;->a(Lcom/amazonaws/services/s3/internal/S3VersionResult;Lcom/amazonaws/http/HttpResponse;)V

    return-void
.end method
