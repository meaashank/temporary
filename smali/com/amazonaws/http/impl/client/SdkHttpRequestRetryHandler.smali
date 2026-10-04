###### Class com.amazonaws.http.impl.client.SdkHttpRequestRetryHandler (com.amazonaws.http.impl.client.SdkHttpRequestRetryHandler)
.class public final Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "SdkHttpRequestRetryHandler.java"


# static fields
.field public static final a:Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;->a:Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 4

    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 43
    const-class p2, Lcom/amazonaws/util/AWSRequestMetrics;

    .line 44
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/util/AWSRequestMetrics;

    if-eqz p2, :cond_19

    .line 46
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpClientRetryCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    :cond_19
    return p1
.end method
