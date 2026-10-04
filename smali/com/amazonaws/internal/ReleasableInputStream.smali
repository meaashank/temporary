###### Class com.amazonaws.internal.ReleasableInputStream (com.amazonaws.internal.ReleasableInputStream)
.class public Lcom/amazonaws/internal/ReleasableInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ReleasableInputStream.java"

# interfaces
.implements Lcom/amazonaws/internal/Releasable;


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/amazonaws/internal/ReleasableInputStream;

    .line 42
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/ReleasableInputStream;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/amazonaws/internal/ReleasableInputStream;
    .registers 2

    .line 126
    instance-of v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;

    if-eqz v0, :cond_7

    .line 128
    check-cast p0, Lcom/amazonaws/internal/ReleasableInputStream;

    return-object p0

    .line 130
    :cond_7
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_12

    .line 131
    check-cast p0, Ljava/io/FileInputStream;

    invoke-static {p0}, Lcom/amazonaws/internal/ResettableInputStream;->a(Ljava/io/FileInputStream;)Lcom/amazonaws/internal/ResettableInputStream;

    move-result-object p0

    return-object p0

    .line 133
    :cond_12
    new-instance v0, Lcom/amazonaws/internal/ReleasableInputStream;

    invoke-direct {v0, p0}, Lcom/amazonaws/internal/ReleasableInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private e()V
    .registers 4

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_16

    :catch_6
    move-exception v0

    .line 85
    sget-object v1, Lcom/amazonaws/internal/ReleasableInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 86
    sget-object v1, Lcom/amazonaws/internal/ReleasableInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 89
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/amazonaws/internal/Releasable;

    if-eqz v0, :cond_23

    .line 92
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/amazonaws/internal/Releasable;

    .line 93
    invoke-interface {v0}, Lcom/amazonaws/internal/Releasable;->a()V

    .line 95
    :cond_23
    invoke-virtual {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->e()V

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->b:Z

    return v0
.end method

.method public final c()Lcom/amazonaws/internal/ReleasableInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/internal/ReleasableInputStream;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->b:Z

    return-object p0
.end method

.method public final close()V
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->b:Z

    if-nez v0, :cond_7

    .line 66
    invoke-direct {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->e()V

    :cond_7
    return-void
.end method
