###### Class com.amazonaws.http.IdleConnectionReaper (com.amazonaws.http.IdleConnectionReaper)
.class public final Lcom/amazonaws/http/IdleConnectionReaper;
.super Ljava/lang/Thread;
.source "IdleConnectionReaper.java"


# static fields
.field static final a:Lcom/amazonaws/logging/Log;

.field private static final b:I = 0xea60

.field private static final c:I = 0x3c

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/conn/ClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/amazonaws/http/IdleConnectionReaper;


# instance fields
.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->d:Ljava/util/ArrayList;

    .line 65
    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "java-sdk-http-connection-reaper"

    .line 69
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/amazonaws/http/IdleConnectionReaper;->setDaemon(Z)V

    return-void
.end method

.method public static declared-synchronized a()Z
    .registers 2

    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0

    .line 158
    :try_start_3
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->f:Lcom/amazonaws/http/IdleConnectionReaper;

    if-eqz v1, :cond_1c

    .line 159
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->f:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-direct {v1}, Lcom/amazonaws/http/IdleConnectionReaper;->c()V

    .line 160
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->f:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-virtual {v1}, Lcom/amazonaws/http/IdleConnectionReaper;->interrupt()V

    .line 161
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 162
    sput-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->f:Lcom/amazonaws/http/IdleConnectionReaper;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    const/4 v1, 0x1

    .line 163
    monitor-exit v0

    return v1

    :cond_1c
    const/4 v1, 0x0

    .line 165
    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    .line 157
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lorg/apache/http/conn/ClientConnectionManager;)Z
    .registers 3

    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->f:Lcom/amazonaws/http/IdleConnectionReaper;

    if-nez v1, :cond_13

    .line 82
    new-instance v1, Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-direct {v1}, Lcom/amazonaws/http/IdleConnectionReaper;-><init>()V

    sput-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->f:Lcom/amazonaws/http/IdleConnectionReaper;

    .line 83
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->f:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-virtual {v1}, Lcom/amazonaws/http/IdleConnectionReaper;->start()V

    .line 85
    :cond_13
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    .line 80
    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized b()I
    .registers 2

    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0

    .line 173
    :try_start_3
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Lorg/apache/http/conn/ClientConnectionManager;)Z
    .registers 3

    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0

    .line 97
    :try_start_3
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    .line 98
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 99
    invoke-static {}, Lcom/amazonaws/http/IdleConnectionReaper;->a()Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 100
    :cond_14
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 96
    monitor-exit v0

    throw p0
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/amazonaws/http/IdleConnectionReaper;->e:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 111
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/amazonaws/http/IdleConnectionReaper;->e:Z

    if-eqz v0, :cond_c

    .line 112
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->a:Lcom/amazonaws/logging/Log;

    const-string v1, "Shutting down reaper thread."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-void

    :cond_c
    const-wide/32 v0, 0xea60

    .line 116
    :try_start_f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_15} :catch_42

    .line 126
    :try_start_15
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->d:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 128
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_3f

    .line 129
    :try_start_1e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2e} :catch_42

    const-wide/16 v2, 0x3c

    .line 135
    :try_start_30
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_35} :catch_42

    goto :goto_22

    :catch_36
    move-exception v1

    .line 137
    :try_start_37
    sget-object v2, Lcom/amazonaws/http/IdleConnectionReaper;->a:Lcom/amazonaws/logging/Log;

    const-string v3, "Unable to close idle connections"

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3e} :catch_42

    goto :goto_22

    :catchall_3f
    move-exception v1

    .line 128
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v1
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_42} :catch_42

    :catch_42
    move-exception v0

    .line 141
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Reaper thread: "

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
