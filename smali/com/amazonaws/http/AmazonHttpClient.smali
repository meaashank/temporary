###### Class com.amazonaws.http.AmazonHttpClient (com.amazonaws.http.AmazonHttpClient)
.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "AmazonHttpClient.java"


# static fields
.field static final a:Lcom/amazonaws/logging/Log;

.field private static final d:Ljava/lang/String; = "User-Agent"

.field private static final e:Ljava/lang/String; = "aws-sdk-invocation-id"

.field private static final f:Ljava/lang/String; = "aws-sdk-retry"

.field private static final g:I = 0xc8

.field private static final h:I = 0x133

.field private static final i:I = 0x12c

.field private static final j:I = 0x19d

.field private static final k:I = 0x1f7

.field private static final l:I = 0x3e8

.field private static final m:Lcom/amazonaws/logging/Log;


# instance fields
.field final b:Lcom/amazonaws/http/HttpClient;

.field final c:Lcom/amazonaws/ClientConfiguration;

.field private final n:Lcom/amazonaws/metrics/RequestMetricCollector;

.field private final o:Lcom/amazonaws/http/HttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.amazonaws.request"

    .line 79
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->m:Lcom/amazonaws/logging/Log;

    .line 85
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 3

    .line 112
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 4

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->o:Lcom/amazonaws/http/HttpRequestFactory;

    .line 142
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 143
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/http/HttpClient;

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->n:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->o:Lcom/amazonaws/http/HttpRequestFactory;

    .line 162
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 163
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/http/HttpClient;

    .line 164
    iput-object p3, p0, Lcom/amazonaws/http/AmazonHttpClient;->n:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method private a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J
    .registers 7

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p3, p3, -0x1

    .line 754
    invoke-virtual {p4}, Lcom/amazonaws/retry/RetryPolicy;->b()Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J

    move-result-wide p1

    .line 757
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p4}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p4

    if-eqz p4, :cond_32

    .line 758
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retriable error detected, will retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, attempt number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 763
    :cond_32
    :try_start_32
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    return-wide p1

    :catch_36
    move-exception p1

    .line 766
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 767
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "("

    .line 783
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, " + 15"

    .line 785
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, " + 15"

    .line 786
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1b

    :cond_15
    const-string v1, " - 15"

    .line 788
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    .line 790
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 547
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            ")TT;"
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    .line 483
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0, p1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    .registers 8

    add-int/lit8 p4, p4, -0x1

    .line 579
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->l()I

    move-result v0

    if-ltz v0, :cond_10

    .line 585
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->d()Z

    move-result v1

    if-nez v1, :cond_14

    .line 586
    :cond_10
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->c()I

    move-result v0

    :cond_14
    const/4 v1, 0x0

    if-lt p4, v0, :cond_18

    return v1

    :cond_18
    if-eqz p2, :cond_30

    .line 595
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result p2

    if-nez p2, :cond_30

    .line 596
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 597
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    const-string p2, "Content not repeatable"

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_2f
    return v1

    .line 604
    :cond_30
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->a()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    move-result-object p2

    invoke-interface {p2, p1, p3, p4}, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    move-result p1

    return p1
.end method

.method private static a(Lcom/amazonaws/http/HttpResponse;)Z
    .registers 3

    .line 610
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v0

    .line 611
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p0

    const-string v1, "Location"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x133

    if-ne v0, v1, :cond_1e

    if-eqz p0, :cond_1e

    .line 613
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private b(Lcom/amazonaws/http/HttpResponse;)Z
    .registers 3

    .line 617
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_e

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I
    .registers 6

    .line 795
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 798
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 802
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_18} :catch_23

    if-eqz v2, :cond_1b

    goto :goto_25

    .line 808
    :cond_1b
    :try_start_1b
    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1f} :catch_20

    goto :goto_31

    :catch_20
    move-exception p2

    move-object v1, p1

    goto :goto_3f

    :catch_23
    move-exception p2

    goto :goto_3f

    .line 804
    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2d} :catch_23

    .line 805
    :try_start_2d
    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_31} :catch_20

    .line 817
    :goto_31
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 818
    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 811
    :goto_3f
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse clock skew offset from response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .line 695
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v0

    .line 699
    :try_start_4
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonServiceException;

    .line 700
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->m:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received error response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_71

    :catch_25
    move-exception p2

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_46

    .line 705
    new-instance p2, Lcom/amazonaws/AmazonServiceException;

    const-string p3, "Request entity too large"

    invoke-direct {p2, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-interface {p1}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->b(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->a(I)V

    .line 708
    sget-object p3, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    const-string p3, "Request entity too large"

    .line 709
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->c(Ljava/lang/String;)V

    goto :goto_71

    :cond_46
    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_7f

    const-string v2, "Service Unavailable"

    .line 711
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 712
    new-instance p2, Lcom/amazonaws/AmazonServiceException;

    const-string p3, "Service unavailable"

    invoke-direct {p2, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-interface {p1}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->b(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->a(I)V

    .line 715
    sget-object p3, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    const-string p3, "Service unavailable"

    .line 716
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->c(Ljava/lang/String;)V

    .line 728
    :goto_71
    invoke-virtual {p2, v0}, Lcom/amazonaws/AmazonServiceException;->a(I)V

    .line 729
    invoke-interface {p1}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/AmazonServiceException;->b(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->fillInStackTrace()Ljava/lang/Throwable;

    return-object p2

    .line 717
    :cond_7f
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_86

    .line 718
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 720
    :cond_86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unmarshall error response ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Response Code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Response Text: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Response Headers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 724
    new-instance p3, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p3, p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    if-eqz p4, :cond_23

    .line 208
    invoke-virtual {p0, p1, p4}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    const/4 v2, 0x0

    .line 212
    :try_start_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->b(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p2
    :try_end_f
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_b .. :try_end_f} :catch_1d

    .line 214
    :try_start_f
    invoke-virtual {v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a()Lcom/amazonaws/util/TimingInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazonaws/util/TimingInfo;->q()Lcom/amazonaws/util/TimingInfo;

    move-result-object p3

    .line 215
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;Lcom/amazonaws/util/TimingInfo;)V
    :try_end_1a
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_f .. :try_end_1a} :catch_1b

    return-object p2

    :catch_1b
    move-exception p3

    goto :goto_1f

    :catch_1d
    move-exception p3

    move-object p2, v2

    .line 218
    :goto_1f
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/util/List;Lcom/amazonaws/AmazonClientException;)V

    .line 219
    throw p3

    .line 205
    :cond_23
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Internal SDK Error: No execution context parameter specified."

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponse;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .line 644
    :try_start_0
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object p1

    .line 646
    sget-object p4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, p4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_9
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_9} :catch_b6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_80

    .line 648
    :try_start_9
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonWebServiceResponse;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_79

    .line 650
    :try_start_f
    sget-object p4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, p4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    if-eqz p2, :cond_52

    .line 660
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->m:Lcom/amazonaws/logging/Log;

    invoke-interface {p4}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p4

    if-eqz p4, :cond_44

    .line 661
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->m:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received successful response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AWS Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-interface {p4, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 664
    :cond_44
    sget-object p4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 666
    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 654
    :cond_52
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to unmarshall response metadata. Response Code: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", Response Text: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_79
    move-exception p2

    .line 650
    sget-object p4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, p4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 651
    throw p2
    :try_end_80
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_f .. :try_end_80} :catch_b6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_80} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_80} :catch_80

    :catch_80
    move-exception p1

    .line 672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to unmarshall response ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "). Response Code: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", Response Text: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 675
    new-instance p3, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p3, p2, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_b4
    move-exception p1

    .line 670
    throw p1

    :catch_b6
    move-exception p1

    .line 668
    throw p1
.end method

.method a(Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-virtual {p2}, Lcom/amazonaws/http/ExecutionContext;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 248
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/handlers/RequestHandler2;

    .line 251
    instance-of v3, v2, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    if-eqz v3, :cond_29

    .line 252
    move-object v3, v2

    check-cast v3, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    .line 253
    invoke-virtual {p2}, Lcom/amazonaws/http/ExecutionContext;->d()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/handlers/CredentialsRequestHandler;->a(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 255
    :cond_29
    invoke-virtual {v2, p1}, Lcom/amazonaws/handlers/RequestHandler2;->a(Lcom/amazonaws/Request;)V

    goto :goto_f

    :cond_2d
    return-object v0
.end method

.method public a()V
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/http/HttpClient;

    invoke-interface {v0}, Lcom/amazonaws/http/HttpClient;->a()V

    return-void
.end method

.method a(Lcom/amazonaws/Request;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->d:Ljava/lang/String;

    .line 523
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 525
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->b()Lcom/amazonaws/RequestClientOptions;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 527
    sget-object v2, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {v1, v2}, Lcom/amazonaws/RequestClientOptions;->a(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 529
    invoke-static {v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_1a
    sget-object v1, Lcom/amazonaws/ClientConfiguration;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/ClientConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 535
    iget-object v1, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_32
    const-string v1, "User-Agent"

    .line 537
    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/util/List;Lcom/amazonaws/AmazonClientException;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazonaws/AmazonClientException;",
            ")V"
        }
    .end annotation

    .line 225
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    .line 226
    invoke-virtual {v0, p1, p2, p4}, Lcom/amazonaws/handlers/RequestHandler2;->a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 499
    invoke-interface {p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 502
    :cond_7
    invoke-interface {p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 507
    :try_start_11
    invoke-interface {p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_19

    return-void

    .line 511
    :catch_19
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 503
    :cond_21
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and stream is not resettable"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method a(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;Lcom/amazonaws/util/TimingInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazonaws/Response<",
            "TT;>;",
            "Lcom/amazonaws/util/TimingInfo;",
            ")V"
        }
    .end annotation

    .line 234
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazonaws/handlers/RequestHandler2;

    .line 235
    invoke-virtual {p4, p1, p3}, Lcom/amazonaws/handlers/RequestHandler2;->a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method b(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 281
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v10

    .line 286
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 287
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 291
    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;)V

    const-string v0, "aws-sdk-invocation-id"

    .line 292
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 301
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->d()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 302
    new-instance v12, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 304
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v13, :cond_4e

    .line 305
    invoke-virtual {v13}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, -0x1

    .line 306
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->mark(I)V

    .line 309
    :cond_4e
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->d()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v14

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_5e
    const/4 v15, 0x1

    move-object/from16 v19, v6

    add-int/lit8 v6, v0, 0x1

    .line 316
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-wide/from16 v20, v3

    int-to-long v3, v6

    invoke-virtual {v10, v0, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;J)V

    if-le v6, v15, :cond_76

    .line 318
    invoke-interface {v8, v11}, Lcom/amazonaws/Request;->b(Ljava/util/Map;)V

    .line 319
    invoke-interface {v8, v12}, Lcom/amazonaws/Request;->a(Ljava/util/Map;)V

    .line 320
    invoke-interface {v8, v13}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    :cond_76
    if-eqz v16, :cond_ae

    .line 322
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_ae

    .line 323
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ae

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 326
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    :cond_ae
    if-le v6, v15, :cond_104

    .line 331
    :try_start_b0
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b5} :catch_f7
    .catch Ljava/lang/RuntimeException; {:try_start_b0 .. :try_end_b5} :catch_f4
    .catch Ljava/lang/Error; {:try_start_b0 .. :try_end_b5} :catch_f1
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_ec

    .line 333
    :try_start_b5
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    iget-object v3, v7, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 336
    invoke-virtual {v3}, Lcom/amazonaws/ClientConfiguration;->k()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v3

    .line 333
    invoke-direct {v7, v0, v1, v6, v3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J

    move-result-wide v3
    :try_end_c3
    .catchall {:try_start_b5 .. :try_end_c3} :catchall_e5

    .line 338
    :try_start_c3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 340
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_106

    .line 341
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 342
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_d7} :catch_d8
    .catch Ljava/lang/RuntimeException; {:try_start_c3 .. :try_end_d7} :catch_f4
    .catch Ljava/lang/Error; {:try_start_c3 .. :try_end_d7} :catch_f1
    .catchall {:try_start_c3 .. :try_end_d7} :catchall_ec

    goto :goto_106

    :catch_d8
    move-exception v0

    move-object v15, v2

    :goto_da
    move-wide/from16 v23, v3

    move-object v9, v5

    move/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    goto/16 :goto_37c

    :catchall_e5
    move-exception v0

    .line 338
    :try_start_e6
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 339
    throw v0
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ec} :catch_f7
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_ec} :catch_f4
    .catch Ljava/lang/Error; {:try_start_e6 .. :try_end_ec} :catch_f1
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_ec

    :catchall_ec
    move-exception v0

    move-object v1, v0

    move-object v9, v5

    goto/16 :goto_417

    :catch_f1
    move-exception v0

    goto/16 :goto_363

    :catch_f4
    move-exception v0

    goto/16 :goto_36a

    :catch_f7
    move-exception v0

    move-object v15, v2

    move-object v9, v5

    move-object/from16 v22, v11

    move-wide/from16 v23, v20

    move-object/from16 v11, p2

    :goto_100
    move/from16 v21, v6

    goto/16 :goto_37c

    :cond_104
    move-wide/from16 v3, v20

    :cond_106
    :goto_106
    :try_start_106
    const-string v0, "aws-sdk-retry"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v6, -0x1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_121} :catch_371
    .catch Ljava/lang/RuntimeException; {:try_start_106 .. :try_end_121} :catch_f4
    .catch Ljava/lang/Error; {:try_start_106 .. :try_end_121} :catch_f1
    .catchall {:try_start_106 .. :try_end_121} :catchall_ec

    if-nez v2, :cond_12d

    .line 350
    :try_start_123
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amazonaws/http/ExecutionContext;->a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v0
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_12b} :catch_d8
    .catch Ljava/lang/RuntimeException; {:try_start_123 .. :try_end_12b} :catch_f4
    .catch Ljava/lang/Error; {:try_start_123 .. :try_end_12b} :catch_f1
    .catchall {:try_start_123 .. :try_end_12b} :catchall_ec

    move-object v15, v0

    goto :goto_12e

    :cond_12d
    move-object v15, v2

    :goto_12e
    if-eqz v15, :cond_14a

    if-eqz v14, :cond_14a

    .line 353
    :try_start_132
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_137} :catch_148
    .catch Ljava/lang/RuntimeException; {:try_start_132 .. :try_end_137} :catch_f4
    .catch Ljava/lang/Error; {:try_start_132 .. :try_end_137} :catch_f1
    .catchall {:try_start_132 .. :try_end_137} :catchall_ec

    .line 355
    :try_start_137
    invoke-interface {v15, v8, v14}, Lcom/amazonaws/auth/Signer;->a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_140

    .line 357
    :try_start_13a
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    goto :goto_14a

    :catchall_140
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 358
    throw v1
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_148} :catch_148
    .catch Ljava/lang/RuntimeException; {:try_start_13a .. :try_end_148} :catch_f4
    .catch Ljava/lang/Error; {:try_start_13a .. :try_end_148} :catch_f1
    .catchall {:try_start_13a .. :try_end_148} :catchall_ec

    :catch_148
    move-exception v0

    goto :goto_da

    .line 361
    :cond_14a
    :goto_14a
    :try_start_14a
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->m:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_150} :catch_359
    .catch Ljava/lang/RuntimeException; {:try_start_14a .. :try_end_150} :catch_f4
    .catch Ljava/lang/Error; {:try_start_14a .. :try_end_150} :catch_f1
    .catchall {:try_start_14a .. :try_end_150} :catchall_ec

    if-eqz v0, :cond_16c

    .line 362
    :try_start_152
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->m:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_16c} :catch_148
    .catch Ljava/lang/RuntimeException; {:try_start_152 .. :try_end_16c} :catch_f4
    .catch Ljava/lang/Error; {:try_start_152 .. :try_end_16c} :catch_f1
    .catchall {:try_start_152 .. :try_end_16c} :catchall_ec

    .line 365
    :cond_16c
    :try_start_16c
    iget-object v0, v7, Lcom/amazonaws/http/AmazonHttpClient;->o:Lcom/amazonaws/http/HttpRequestFactory;

    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0, v8, v1, v9}, Lcom/amazonaws/http/HttpRequestFactory;->a(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/http/HttpRequest;

    move-result-object v2
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_174} :catch_359
    .catch Ljava/lang/RuntimeException; {:try_start_16c .. :try_end_174} :catch_f4
    .catch Ljava/lang/Error; {:try_start_16c .. :try_end_174} :catch_f1
    .catchall {:try_start_16c .. :try_end_174} :catchall_ec

    .line 369
    :try_start_174
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_179} :catch_34a
    .catch Ljava/lang/RuntimeException; {:try_start_174 .. :try_end_179} :catch_f4
    .catch Ljava/lang/Error; {:try_start_174 .. :try_end_179} :catch_f1
    .catchall {:try_start_174 .. :try_end_179} :catchall_ec

    .line 371
    :try_start_179
    iget-object v0, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/http/HttpClient;

    invoke-interface {v0, v2}, Lcom/amazonaws/http/HttpClient;->a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v1
    :try_end_17f
    .catchall {:try_start_179 .. :try_end_17f} :catchall_337

    .line 373
    :try_start_17f
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 376
    invoke-direct {v7, v1}, Lcom/amazonaws/http/AmazonHttpClient;->b(Lcom/amazonaws/http/HttpResponse;)Z

    move-result v0
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_188} :catch_32a
    .catch Ljava/lang/RuntimeException; {:try_start_17f .. :try_end_188} :catch_326
    .catch Ljava/lang/Error; {:try_start_17f .. :try_end_188} :catch_322
    .catchall {:try_start_17f .. :try_end_188} :catchall_31e

    if-eqz v0, :cond_1f3

    .line 377
    :try_start_18a
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 382
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->a()Z

    move-result v5
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_19b} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_18a .. :try_end_19b} :catch_1e3
    .catch Ljava/lang/Error; {:try_start_18a .. :try_end_19b} :catch_1df
    .catchall {:try_start_18a .. :try_end_19b} :catchall_31e

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    .line 383
    :try_start_19f
    invoke-virtual {v7, v8, v11, v1, v9}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a3} :catch_1d5
    .catch Ljava/lang/RuntimeException; {:try_start_19f .. :try_end_1a3} :catch_1d1
    .catch Ljava/lang/Error; {:try_start_19f .. :try_end_1a3} :catch_1cd
    .catchall {:try_start_19f .. :try_end_1a3} :catchall_1c7

    move-wide/from16 v23, v3

    .line 386
    :try_start_1a5
    new-instance v3, Lcom/amazonaws/Response;

    invoke-direct {v3, v0, v1}, Lcom/amazonaws/Response;-><init>(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1aa} :catch_1c5
    .catch Ljava/lang/RuntimeException; {:try_start_1a5 .. :try_end_1aa} :catch_1d1
    .catch Ljava/lang/Error; {:try_start_1a5 .. :try_end_1aa} :catch_1cd
    .catchall {:try_start_1a5 .. :try_end_1aa} :catchall_1c7

    if-nez v5, :cond_1c4

    if-eqz v1, :cond_1c4

    .line 467
    :try_start_1ae
    invoke-virtual {v1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1c4

    .line 468
    invoke-virtual {v1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1bb} :catch_1bc

    goto :goto_1c4

    :catch_1bc
    move-exception v0

    .line 471
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Cannot close the response content."

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1c4
    :goto_1c4
    return-object v3

    :catch_1c5
    move-exception v0

    goto :goto_1d8

    :catchall_1c7
    move-exception v0

    move-object v9, v1

    move/from16 v17, v5

    goto/16 :goto_416

    :catch_1cd
    move-exception v0

    move/from16 v17, v5

    goto :goto_1e0

    :catch_1d1
    move-exception v0

    move/from16 v17, v5

    goto :goto_1e4

    :catch_1d5
    move-exception v0

    move-wide/from16 v23, v3

    :goto_1d8
    move-object v9, v1

    move-object/from16 v19, v2

    move/from16 v17, v5

    goto/16 :goto_100

    :catch_1df
    move-exception v0

    :goto_1e0
    move-object v5, v1

    goto/16 :goto_363

    :catch_1e3
    move-exception v0

    :goto_1e4
    move-object v5, v1

    goto/16 :goto_36a

    :catch_1e7
    move-exception v0

    move-wide/from16 v23, v3

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    :goto_1ee
    move-object v9, v1

    move-object/from16 v19, v2

    goto/16 :goto_100

    :cond_1f3
    move-wide/from16 v23, v3

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    .line 387
    :try_start_1f9
    invoke-static {v1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/http/HttpResponse;)Z

    move-result v0
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_1fd} :catch_317
    .catch Ljava/lang/RuntimeException; {:try_start_1f9 .. :try_end_1fd} :catch_326
    .catch Ljava/lang/Error; {:try_start_1f9 .. :try_end_1fd} :catch_322
    .catchall {:try_start_1f9 .. :try_end_1fd} :catchall_31e

    if-eqz v0, :cond_258

    .line 394
    :try_start_1ff
    invoke-virtual {v1}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object v0

    const-string v3, "Location"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirecting to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 397
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3
    :try_end_225
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_225} :catch_256
    .catch Ljava/lang/RuntimeException; {:try_start_1ff .. :try_end_225} :catch_1e3
    .catch Ljava/lang/Error; {:try_start_1ff .. :try_end_225} :catch_1df
    .catchall {:try_start_1ff .. :try_end_225} :catchall_31e

    const/4 v4, 0x0

    .line 398
    :try_start_226
    invoke-interface {v8, v4}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 399
    invoke-interface {v8, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 400
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 401
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v4, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v4, 0x0

    invoke-virtual {v10, v0, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_244} :catch_24e
    .catch Ljava/lang/RuntimeException; {:try_start_226 .. :try_end_244} :catch_1e3
    .catch Ljava/lang/Error; {:try_start_226 .. :try_end_244} :catch_1df
    .catchall {:try_start_226 .. :try_end_244} :catchall_31e

    move-object v9, v1

    move-object/from16 v20, v2

    move-object/from16 v16, v3

    move/from16 v21, v6

    const/4 v1, 0x0

    goto/16 :goto_2b8

    :catch_24e
    move-exception v0

    move-object v9, v1

    move-object/from16 v19, v2

    move-object/from16 v16, v3

    goto/16 :goto_100

    :catch_256
    move-exception v0

    goto :goto_1ee

    .line 404
    :cond_258
    :try_start_258
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->a()Z

    move-result v19
    :try_end_25c
    .catch Ljava/io/IOException; {:try_start_258 .. :try_end_25c} :catch_317
    .catch Ljava/lang/RuntimeException; {:try_start_258 .. :try_end_25c} :catch_326
    .catch Ljava/lang/Error; {:try_start_258 .. :try_end_25c} :catch_322
    .catchall {:try_start_258 .. :try_end_25c} :catchall_31e

    move-object/from16 v5, p3

    .line 405
    :try_start_25e
    invoke-virtual {v7, v8, v5, v1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    .line 407
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 408
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 409
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 411
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v3

    .line 412
    invoke-virtual {v2}, Lcom/amazonaws/http/HttpRequest;->d()Ljava/io/InputStream;

    move-result-object v4
    :try_end_289
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_289} :catch_30e
    .catch Ljava/lang/RuntimeException; {:try_start_25e .. :try_end_289} :catch_307
    .catch Ljava/lang/Error; {:try_start_25e .. :try_end_289} :catch_300
    .catchall {:try_start_25e .. :try_end_289} :catchall_2f9

    move-object/from16 v25, v1

    :try_start_28b
    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 415
    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->k()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v17
    :try_end_291
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_291} :catch_2f1
    .catch Ljava/lang/RuntimeException; {:try_start_28b .. :try_end_291} :catch_2ed
    .catch Ljava/lang/Error; {:try_start_28b .. :try_end_291} :catch_2e9
    .catchall {:try_start_28b .. :try_end_291} :catchall_2e5

    move-object/from16 v9, v25

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move v5, v6

    move/from16 v21, v6

    move-object/from16 v6, v17

    .line 411
    :try_start_29f
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v1

    if-eqz v1, :cond_2dc

    .line 426
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->c(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v1

    if-eqz v1, :cond_2b2

    .line 427
    invoke-virtual {v7, v9, v0}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I

    move-result v1

    .line 428
    invoke-static {v1}, Lcom/amazonaws/SDKGlobalConfiguration;->a(I)V

    .line 430
    :cond_2b2
    invoke-virtual {v7, v8, v0}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_29f .. :try_end_2b5} :catch_2e3
    .catch Ljava/lang/RuntimeException; {:try_start_29f .. :try_end_2b5} :catch_2e1
    .catch Ljava/lang/Error; {:try_start_29f .. :try_end_2b5} :catch_2df
    .catchall {:try_start_29f .. :try_end_2b5} :catchall_2dd

    move-object v1, v0

    move/from16 v17, v19

    :goto_2b8
    if-nez v17, :cond_2d2

    if-eqz v9, :cond_2d2

    .line 467
    :try_start_2bc
    invoke-virtual {v9}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2d2

    .line 468
    invoke-virtual {v9}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2c9
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2c9} :catch_2ca

    goto :goto_2d2

    :catch_2ca
    move-exception v0

    .line 471
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    const-string v3, "Cannot close the response content."

    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2d2
    :goto_2d2
    move-object v5, v9

    move-object v2, v15

    move-object/from16 v6, v20

    move-wide/from16 v3, v23

    const/16 v25, 0x0

    goto/16 :goto_40c

    .line 416
    :cond_2dc
    :try_start_2dc
    throw v0
    :try_end_2dd
    .catch Ljava/io/IOException; {:try_start_2dc .. :try_end_2dd} :catch_2e3
    .catch Ljava/lang/RuntimeException; {:try_start_2dc .. :try_end_2dd} :catch_2e1
    .catch Ljava/lang/Error; {:try_start_2dc .. :try_end_2dd} :catch_2df
    .catchall {:try_start_2dc .. :try_end_2dd} :catchall_2dd

    :catchall_2dd
    move-exception v0

    goto :goto_2fb

    :catch_2df
    move-exception v0

    goto :goto_302

    :catch_2e1
    move-exception v0

    goto :goto_309

    :catch_2e3
    move-exception v0

    goto :goto_314

    :catchall_2e5
    move-exception v0

    move-object/from16 v9, v25

    goto :goto_2fb

    :catch_2e9
    move-exception v0

    move-object/from16 v9, v25

    goto :goto_302

    :catch_2ed
    move-exception v0

    move-object/from16 v9, v25

    goto :goto_309

    :catch_2f1
    move-exception v0

    move-object/from16 v20, v2

    move/from16 v21, v6

    move-object/from16 v9, v25

    goto :goto_314

    :catchall_2f9
    move-exception v0

    move-object v9, v1

    :goto_2fb
    move-object v1, v0

    move/from16 v17, v19

    goto/16 :goto_417

    :catch_300
    move-exception v0

    move-object v9, v1

    :goto_302
    move-object v5, v9

    move/from16 v17, v19

    goto/16 :goto_363

    :catch_307
    move-exception v0

    move-object v9, v1

    :goto_309
    move-object v5, v9

    move/from16 v17, v19

    goto/16 :goto_36a

    :catch_30e
    move-exception v0

    move-object v9, v1

    move-object/from16 v20, v2

    move/from16 v21, v6

    :goto_314
    move/from16 v17, v19

    goto :goto_356

    :catch_317
    move-exception v0

    move-object v9, v1

    move-object/from16 v20, v2

    move/from16 v21, v6

    goto :goto_356

    :catchall_31e
    move-exception v0

    move-object v9, v1

    goto/16 :goto_416

    :catch_322
    move-exception v0

    move-object v9, v1

    move-object v5, v9

    goto :goto_363

    :catch_326
    move-exception v0

    move-object v9, v1

    move-object v5, v9

    goto :goto_36a

    :catch_32a
    move-exception v0

    move-object v9, v1

    move-object/from16 v20, v2

    move-wide/from16 v23, v3

    move/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    goto :goto_356

    :catchall_337
    move-exception v0

    move-object/from16 v20, v2

    move-wide/from16 v23, v3

    move/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    .line 373
    :try_start_342
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 374
    throw v0
    :try_end_348
    .catch Ljava/io/IOException; {:try_start_342 .. :try_end_348} :catch_348
    .catch Ljava/lang/RuntimeException; {:try_start_342 .. :try_end_348} :catch_f4
    .catch Ljava/lang/Error; {:try_start_342 .. :try_end_348} :catch_f1
    .catchall {:try_start_342 .. :try_end_348} :catchall_ec

    :catch_348
    move-exception v0

    goto :goto_355

    :catch_34a
    move-exception v0

    move-object/from16 v20, v2

    move-wide/from16 v23, v3

    move/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    :goto_355
    move-object v9, v5

    :goto_356
    move-object/from16 v19, v20

    goto :goto_37c

    :catch_359
    move-exception v0

    move-wide/from16 v23, v3

    move/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    goto :goto_37b

    .line 456
    :goto_363
    :try_start_363
    invoke-direct {v7, v0, v10}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 454
    :goto_36a
    invoke-direct {v7, v0, v10}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_371
    .catchall {:try_start_363 .. :try_end_371} :catchall_ec

    :catch_371
    move-exception v0

    move-wide/from16 v23, v3

    move/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v11, p2

    move-object v15, v2

    :goto_37b
    move-object v9, v5

    .line 433
    :goto_37c
    :try_start_37c
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_39e

    .line 434
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute HTTP request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 436
    :cond_39e
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    .line 437
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 438
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v6, 0x0

    invoke-virtual {v10, v1, v6}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 440
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute HTTP request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    .line 443
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/http/HttpRequest;->d()Ljava/io/InputStream;

    move-result-object v3

    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 446
    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->k()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v18

    move-object/from16 v1, p0

    move-object v4, v5

    move-object/from16 v20, v5

    move/from16 v5, v21

    move-object/from16 v25, v6

    move-object/from16 v6, v18

    .line 442
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v1

    if-eqz v1, :cond_414

    .line 452
    invoke-virtual {v7, v8, v0}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_3ea
    .catchall {:try_start_37c .. :try_end_3ea} :catchall_415

    if-nez v17, :cond_404

    if-eqz v9, :cond_404

    .line 467
    :try_start_3ee
    invoke-virtual {v9}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_404

    .line 468
    invoke-virtual {v9}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3fb
    .catch Ljava/io/IOException; {:try_start_3ee .. :try_end_3fb} :catch_3fc

    goto :goto_404

    :catch_3fc
    move-exception v0

    .line 471
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Cannot close the response content."

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_404
    :goto_404
    move-object v5, v9

    move-object v2, v15

    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-wide/from16 v3, v23

    :goto_40c
    move/from16 v0, v21

    move-object/from16 v11, v22

    move-object/from16 v9, p4

    goto/16 :goto_5e

    .line 447
    :cond_414
    :try_start_414
    throw v20
    :try_end_415
    .catchall {:try_start_414 .. :try_end_415} :catchall_415

    :catchall_415
    move-exception v0

    :goto_416
    move-object v1, v0

    :goto_417
    if-nez v17, :cond_431

    if-eqz v9, :cond_431

    .line 467
    :try_start_41b
    invoke-virtual {v9}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_431

    .line 468
    invoke-virtual {v9}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_428
    .catch Ljava/io/IOException; {:try_start_41b .. :try_end_428} :catch_429

    goto :goto_431

    :catch_429
    move-exception v0

    .line 471
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    const-string v3, "Cannot close the response content."

    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 474
    :cond_431
    :goto_431
    throw v1
.end method

.method public b()Lcom/amazonaws/metrics/RequestMetricCollector;
    .registers 2

    .line 832
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->n:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method protected finalize()V
    .registers 1

    .line 823
    invoke-virtual {p0}, Lcom/amazonaws/http/AmazonHttpClient;->a()V

    .line 824
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
