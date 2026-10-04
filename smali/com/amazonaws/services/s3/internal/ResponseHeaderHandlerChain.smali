###### Class com.amazonaws.services.s3.internal.ResponseHeaderHandlerChain (com.amazonaws.services.s3.internal.ResponseHeaderHandlerChain)
.class public Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;
.super Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
.source "ResponseHeaderHandlerChain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;[",
            "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 43
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceResponse;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 58
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/internal/HeaderHandler;

    .line 59
    invoke-interface {v3, v1, p1}, Lcom/amazonaws/services/s3/internal/HeaderHandler;->a(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V

    goto :goto_10

    :cond_20
    return-object v0
.end method
