###### Class com.amazonaws.services.s3.internal.GetObjectTaggingResponseHeaderHandler (com.amazonaws.services.s3.internal.GetObjectTaggingResponseHeaderHandler)
.class public Lcom/amazonaws/services/s3/internal/GetObjectTaggingResponseHeaderHandler;
.super Ljava/lang/Object;
.source "GetObjectTaggingResponseHeaderHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
        "Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;Lcom/amazonaws/http/HttpResponse;)V
    .registers 4

    .line 31
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p2

    const-string v0, "x-amz-version-id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    .registers 3

    .line 28
    check-cast p1, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/GetObjectTaggingResponseHeaderHandler;->a(Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;Lcom/amazonaws/http/HttpResponse;)V

    return-void
.end method
