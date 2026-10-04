###### Class com.amazonaws.http.conn.ClientConnectionManagerFactory (com.amazonaws.http.conn.ClientConnectionManagerFactory)
.class public Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;
.super Ljava/lang/Object;
.source "ClientConnectionManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;
    }
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/amazonaws/logging/Log;
    .registers 1

    .line 31
    sget-object v0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;->a:Lcom/amazonaws/logging/Log;

    return-object v0
.end method

.method public static a(Lorg/apache/http/conn/ClientConnectionManager;)Lorg/apache/http/conn/ClientConnectionManager;
    .registers 4

    .line 41
    instance-of v0, p0, Lcom/amazonaws/http/conn/Wrapped;

    if-nez v0, :cond_23

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/apache/http/conn/ClientConnectionManager;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/amazonaws/http/conn/Wrapped;

    aput-object v2, v0, v1

    .line 47
    const-class v1, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;

    invoke-direct {v2, p0}, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;-><init>(Lorg/apache/http/conn/ClientConnectionManager;)V

    .line 47
    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/conn/ClientConnectionManager;

    return-object p0

    .line 42
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

###### Class com.amazonaws.http.conn.ClientConnectionManagerFactory.Handler (com.amazonaws.http.conn.ClientConnectionManagerFactory$Handler)
.class Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;
.super Ljava/lang/Object;
.source "ClientConnectionManagerFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handler"
.end annotation


# instance fields
.field private final a:Lorg/apache/http/conn/ClientConnectionManager;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;->a:Lorg/apache/http/conn/ClientConnectionManager;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;->a:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 70
    instance-of p2, p1, Lorg/apache/http/conn/ClientConnectionRequest;

    if-eqz p2, :cond_10

    check-cast p1, Lorg/apache/http/conn/ClientConnectionRequest;

    .line 71
    invoke-static {p1}, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->a(Lorg/apache/http/conn/ClientConnectionRequest;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_10} :catch_11

    :cond_10
    return-object p1

    :catch_11
    move-exception p1

    .line 74
    invoke-static {}, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;->a()Lcom/amazonaws/logging/Log;

    move-result-object p2

    const-string p3, ""

    invoke-interface {p2, p3, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
