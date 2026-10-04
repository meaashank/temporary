###### Class com.amazonaws.logging.ApacheCommonsLogging (com.amazonaws.logging.ApacheCommonsLogging)
.class public Lcom/amazonaws/logging/ApacheCommonsLogging;
.super Ljava/lang/Object;
.source "ApacheCommonsLogging.java"

# interfaces
.implements Lcom/amazonaws/logging/Log;


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/String;

.field private c:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->a:Ljava/lang/Class;

    .line 36
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->b:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Z
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/amazonaws/logging/ApacheCommonsLogging;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    return v0
.end method
