###### Class com.amazonaws.AmazonWebServiceClient (com.amazonaws.AmazonWebServiceClient)
.class public abstract Lcom/amazonaws/AmazonWebServiceClient;
.super Ljava/lang/Object;
.source "AmazonWebServiceClient.java"


# static fields
.field public static final a:Z = true

.field private static final h:Ljava/lang/String; = "Amazon"

.field private static final i:Ljava/lang/String; = "AWS"

.field private static final j:Lcom/amazonaws/logging/Log;


# instance fields
.field protected volatile b:Ljava/net/URI;

.field protected c:Lcom/amazonaws/ClientConfiguration;

.field protected d:Lcom/amazonaws/http/AmazonHttpClient;

.field protected final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field

.field protected f:I

.field protected volatile g:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Lcom/amazonaws/auth/Signer;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Lcom/amazonaws/regions/Region;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    .line 66
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/AmazonWebServiceClient;->j:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 3

    .line 121
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 4

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 150
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    .line 151
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 169
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    .line 173
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    new-instance p2, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {p2, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .registers 6

    .line 400
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->q()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 402
    invoke-static {p1, p2}, Lcom/amazonaws/auth/SignerFactory;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    goto :goto_11

    .line 403
    :cond_d
    invoke-static {v0, p1}, Lcom/amazonaws/auth/SignerFactory;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    .line 404
    :goto_11
    instance-of v0, p1, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz v0, :cond_25

    .line 406
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz p3, :cond_1e

    .line 411
    invoke-interface {v0, p3}, Lcom/amazonaws/auth/RegionAwareSigner;->b(Ljava/lang/String;)V

    goto :goto_25

    :cond_1e
    if-eqz p2, :cond_25

    if-eqz p4, :cond_25

    .line 413
    invoke-interface {v0, p2}, Lcom/amazonaws/auth/RegionAwareSigner;->b(Ljava/lang/String;)V

    .line 417
    :cond_25
    :goto_25
    monitor-enter p0

    .line 418
    :try_start_26
    invoke-static {p2}, Lcom/amazonaws/regions/Region;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->n:Lcom/amazonaws/regions/Region;

    .line 419
    monitor-exit p0

    return-object p1

    :catchall_2e
    move-exception p1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .registers 5

    if-eqz p1, :cond_13

    .line 372
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->m()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1

    .line 369
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint is not set. Use setEndpoint to set an endpoint before performing any request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/lang/String;)Ljava/net/URI;
    .registers 4

    const-string v0, "://"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->a()Lcom/amazonaws/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    :cond_26
    :try_start_26
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/net/URISyntaxException; {:try_start_26 .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    move-exception p1

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static g()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    .line 594
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private o()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->j()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 623
    invoke-virtual {v0}, Lcom/amazonaws/metrics/RequestMetricCollector;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private p()Ljava/lang/String;
    .registers 5

    .line 802
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-static {v0, p0}, Lcom/amazonaws/util/Classes;->childClassOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v0}, Lcom/amazonaws/ServiceNameFactory;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    return-object v1

    :cond_11
    const-string v1, "JavaClient"

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3a

    const-string v1, "Client"

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_23

    goto :goto_3a

    .line 814
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized suffix for the AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    :goto_3a
    const-string v3, "Amazon"

    .line 819
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_68

    const-string v3, "AWS"

    .line 822
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_51

    const-string v2, "AWS"

    .line 828
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_6e

    .line 824
    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized prefix for the AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    const-string v2, "Amazon"

    .line 830
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_6e
    if-ge v3, v1, :cond_7a

    add-int/2addr v3, v2

    .line 836
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 833
    :cond_7a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .registers 4

    .line 567
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->d_(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 568
    :goto_10
    new-instance v0, Lcom/amazonaws/http/ExecutionContext;

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method protected final a(Lcom/amazonaws/Request;)Lcom/amazonaws/http/ExecutionContext;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Lcom/amazonaws/http/ExecutionContext;"
        }
    .end annotation

    .line 572
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .registers 2

    .line 636
    iput p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->f:I

    return-void
.end method

.method public a(Lcom/amazonaws/ClientConfiguration;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    if-eqz v0, :cond_c

    .line 502
    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->b()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v1

    .line 503
    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->a()V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 505
    :goto_d
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 506
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    return-void
.end method

.method public a(Lcom/amazonaws/handlers/RequestHandler2;)V
    .registers 3

    .line 540
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/amazonaws/handlers/RequestHandler;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/amazonaws/handlers/RequestHandler2;->a(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/amazonaws/regions/Region;)V
    .registers 8

    if-eqz p1, :cond_5a

    .line 453
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->m()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p1, v0}, Lcom/amazonaws/regions/Region;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 457
    invoke-virtual {p1, v0}, Lcom/amazonaws/regions/Region;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "://"

    .line 458
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_42

    const-string v4, "://"

    .line 461
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_25
    const-string v1, "%s.%s.%s"

    const/4 v3, 0x3

    .line 464
    new-array v3, v3, [Ljava/lang/Object;

    .line 465
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    .line 466
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 467
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 464
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 471
    :cond_42
    :goto_42
    invoke-direct {p0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 473
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->k:Ljava/lang/String;

    .line 472
    invoke-direct {p0, v0, p1, v3, v2}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    .line 474
    monitor-enter p0

    .line 475
    :try_start_51
    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/net/URI;

    .line 476
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->l:Lcom/amazonaws/auth/Signer;

    .line 477
    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_57

    throw p1

    .line 450
    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No region provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void
.end method

.method protected final a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_15

    .line 737
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 738
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->a()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->q()Lcom/amazonaws/util/TimingInfo;

    .line 739
    invoke-virtual {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;->b(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 740
    invoke-virtual {v0, p2, p3}, Lcom/amazonaws/metrics/RequestMetricCollector;->a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    :cond_15
    if-eqz p4, :cond_1a

    .line 743
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->c()V

    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 215
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->k:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_c
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/net/URI;

    .line 221
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->l:Lcom/amazonaws/auth/Signer;

    .line 222
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    const/4 v0, 0x1

    .line 307
    invoke-direct {p0, p2, p3, p3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p2

    .line 309
    monitor-enter p0

    .line 310
    :try_start_a
    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->l:Lcom/amazonaws/auth/Signer;

    .line 311
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/net/URI;

    .line 312
    iput-object p3, p0, Lcom/amazonaws/AmazonWebServiceClient;->k:Ljava/lang/String;

    .line 313
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw p1
.end method

.method protected a(Ljava/net/URI;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final a_(Ljava/lang/String;)V
    .registers 2

    .line 790
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->m:Ljava/lang/String;

    return-void
.end method

.method public b(I)Lcom/amazonaws/AmazonWebServiceClient;
    .registers 2

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(I)V

    return-object p0
.end method

.method public b(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .registers 4

    .line 346
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->k:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1
.end method

.method protected final b(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Lcom/amazonaws/metrics/RequestMetricCollector;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->c()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_b

    return-object p1

    .line 703
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->i()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-nez p1, :cond_15

    .line 704
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    :cond_15
    return-object p1
.end method

.method public b(Lcom/amazonaws/handlers/RequestHandler2;)V
    .registers 3

    .line 563
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/amazonaws/handlers/RequestHandler;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/amazonaws/handlers/RequestHandler2;->a(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b_(Ljava/lang/String;)V
    .registers 4

    .line 857
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/net/URI;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 858
    monitor-enter p0

    .line 859
    :try_start_8
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->l:Lcom/amazonaws/auth/Signer;

    .line 860
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->k:Ljava/lang/String;

    .line 861
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final d_(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 605
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->c()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 608
    invoke-virtual {p1}, Lcom/amazonaws/metrics/RequestMetricCollector;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    .line 611
    :cond_e
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->o()Z

    move-result p1

    return p1
.end method

.method public e()V
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->a()V

    return-void
.end method

.method protected final f()Lcom/amazonaws/http/ExecutionContext;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->o()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 588
    :goto_10
    new-instance v1, Lcom/amazonaws/http/ExecutionContext;

    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    invoke-direct {v1, v2, v0, p0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v1
.end method

.method protected f_()Lcom/amazonaws/auth/Signer;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->l:Lcom/amazonaws/auth/Signer;

    return-object v0
.end method

.method public h()I
    .registers 2

    .line 664
    iget v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->f:I

    return v0
.end method

.method public i()Lcom/amazonaws/metrics/RequestMetricCollector;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->b()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    return-object v0
.end method

.method public i_()Lcom/amazonaws/regions/Regions;
    .registers 2

    .line 486
    monitor-enter p0

    .line 487
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->n:Lcom/amazonaws/regions/Region;

    invoke-virtual {v0}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    .line 488
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected j()Lcom/amazonaws/metrics/RequestMetricCollector;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->b()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-nez v0, :cond_c

    .line 687
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 761
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .registers 2

    .line 771
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->m:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 772
    monitor-enter p0

    .line 773
    :try_start_5
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->m:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 774
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->m:Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->m:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 777
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 779
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m_()Ljava/lang/String;
    .registers 2

    .line 231
    monitor-enter p0

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    .line 233
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .line 846
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->k:Ljava/lang/String;

    return-object v0
.end method
