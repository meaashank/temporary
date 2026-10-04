###### Class com.amazonaws.http.conn.ClientConnectionRequestFactory (com.amazonaws.http.conn.ClientConnectionRequestFactory)
.class Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;
.super Ljava/lang/Object;
.source "ClientConnectionRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;
    }
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field private static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    const-class v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->a:Lcom/amazonaws/logging/Log;

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/apache/http/conn/ClientConnectionRequest;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/amazonaws/http/conn/Wrapped;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->b:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/amazonaws/logging/Log;
    .registers 1

    .line 31
    sget-object v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->a:Lcom/amazonaws/logging/Log;

    return-object v0
.end method

.method static a(Lorg/apache/http/conn/ClientConnectionRequest;)Lorg/apache/http/conn/ClientConnectionRequest;
    .registers 4

    .line 45
    instance-of v0, p0, Lcom/amazonaws/http/conn/Wrapped;

    if-nez v0, :cond_18

    .line 47
    const-class v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->b:[Ljava/lang/Class;

    new-instance v2, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;

    invoke-direct {v2, p0}, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;-><init>(Lorg/apache/http/conn/ClientConnectionRequest;)V

    .line 47
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/conn/ClientConnectionRequest;

    return-object p0

    .line 46
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

###### Class com.amazonaws.http.conn.ClientConnectionRequestFactory.Handler (com.amazonaws.http.conn.ClientConnectionRequestFactory$Handler)
.class Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;
.super Ljava/lang/Object;
.source "ClientConnectionRequestFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handler"
.end annotation


# instance fields
.field private final a:Lorg/apache/http/conn/ClientConnectionRequest;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionRequest;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;->a:Lorg/apache/http/conn/ClientConnectionRequest;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    const-string p1, "getConnection"

    .line 70
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 71
    new-instance p1, Lcom/amazonaws/metrics/ServiceLatencyProvider;

    sget-object v0, Lcom/amazonaws/util/AWSServiceMetrics;->HttpClientGetConnectionTime:Lcom/amazonaws/util/AWSServiceMetrics;

    invoke-direct {p1, v0}, Lcom/amazonaws/metrics/ServiceLatencyProvider;-><init>(Lcom/amazonaws/metrics/ServiceMetricType;)V
    :try_end_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_39

    .line 74
    :try_start_13
    iget-object v0, p0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;->a:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_25

    .line 76
    :try_start_19
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;

    move-result-object p3

    .line 77
    invoke-virtual {p1}, Lcom/amazonaws/metrics/ServiceLatencyProvider;->b()Lcom/amazonaws/metrics/ServiceLatencyProvider;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazonaws/metrics/ServiceMetricCollector;->a(Lcom/amazonaws/metrics/ServiceLatencyProvider;)V

    return-object p2

    :catchall_25
    move-exception p2

    .line 76
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;

    move-result-object p3

    .line 77
    invoke-virtual {p1}, Lcom/amazonaws/metrics/ServiceLatencyProvider;->b()Lcom/amazonaws/metrics/ServiceLatencyProvider;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazonaws/metrics/ServiceMetricCollector;->a(Lcom/amazonaws/metrics/ServiceLatencyProvider;)V

    .line 78
    throw p2

    .line 80
    :cond_32
    iget-object p1, p0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;->a:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p1

    .line 82
    invoke-static {}, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->a()Lcom/amazonaws/logging/Log;

    move-result-object p2

    const-string p3, ""

    invoke-interface {p2, p3, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
