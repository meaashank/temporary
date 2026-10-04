###### Class com.amazonaws.logging.LogFactory (com.amazonaws.logging.LogFactory)
.class public Lcom/amazonaws/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field private static final a:Ljava/lang/String; = "LogFactory"

.field private static final b:Ljava/lang/String; = "org.apache.commons.logging.LogFactory"

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/logging/Log;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/logging/LogFactory;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;
    .registers 2

    const-class v0, Lcom/amazonaws/logging/LogFactory;

    monitor-enter v0

    .line 38
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;
    .registers 7

    const-class v0, Lcom/amazonaws/logging/LogFactory;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/amazonaws/logging/LogFactory;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/logging/Log;

    if-nez v1, :cond_39

    .line 50
    invoke-static {}, Lcom/amazonaws/logging/LogFactory;->a()Z

    move-result v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3b

    if-eqz v2, :cond_2d

    .line 52
    :try_start_13
    new-instance v2, Lcom/amazonaws/logging/ApacheCommonsLogging;

    invoke-direct {v2, p0}, Lcom/amazonaws/logging/ApacheCommonsLogging;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_21
    .catchall {:try_start_13 .. :try_end_18} :catchall_3b

    .line 53
    :try_start_18
    sget-object v1, Lcom/amazonaws/logging/LogFactory;->c:Ljava/util/Map;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1f
    .catchall {:try_start_18 .. :try_end_1d} :catchall_3b

    :goto_1d
    move-object v1, v2

    goto :goto_2d

    :catch_1f
    move-exception v1

    goto :goto_25

    :catch_21
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 55
    :goto_25
    :try_start_25
    sget-object v3, Lcom/amazonaws/logging/LogFactory;->a:Ljava/lang/String;

    const-string v4, "Could not create log from org.apache.commons.logging.LogFactory"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    :cond_2d
    :goto_2d
    if-nez v1, :cond_39

    .line 59
    new-instance v1, Lcom/amazonaws/logging/AndroidLog;

    invoke-direct {v1, p0}, Lcom/amazonaws/logging/AndroidLog;-><init>(Ljava/lang/String;)V

    .line 60
    sget-object v2, Lcom/amazonaws/logging/LogFactory;->c:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_3b

    .line 63
    :cond_39
    monitor-exit v0

    return-object v1

    :catchall_3b
    move-exception p0

    .line 47
    monitor-exit v0

    throw p0
.end method

.method private static a()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "org.apache.commons.logging.LogFactory"

    .line 68
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    const/4 v0, 0x1

    return v0

    :catch_8
    move-exception v1

    .line 73
    sget-object v2, Lcom/amazonaws/logging/LogFactory;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_13
    return v0
.end method
