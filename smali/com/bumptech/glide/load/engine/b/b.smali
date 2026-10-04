###### Class com.bumptech.glide.load.engine.b.b (com.bumptech.glide.load.engine.b.b)
.class final Lcom/bumptech/glide/load/engine/b/b;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"


# static fields
.field private static final a:Ljava/lang/String; = "GlideRuntimeCompat"

.field private static final b:Ljava/lang/String; = "cpu[0-9]+"

.field private static final c:Ljava/lang/String; = "/sys/devices/system/cpu/"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .registers 3

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_16

    .line 29
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->b()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_16
    return v0
.end method

.method private static b()I
    .registers 4

    .line 49
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 51
    :try_start_4
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "cpu[0-9]+"

    .line 52
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 53
    new-instance v3, Lcom/bumptech/glide/load/engine/b/b$1;

    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/engine/b/b$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1a} :catch_20
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1e

    .line 64
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_35

    :catchall_1e
    move-exception v1

    goto :goto_40

    :catch_20
    move-exception v1

    :try_start_21
    const-string v2, "GlideRuntimeCompat"

    const/4 v3, 0x6

    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "GlideRuntimeCompat"

    const-string v3, "Failed to calculate accurate cpu count"

    .line 61
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_1e

    .line 64
    :cond_31
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v1, 0x0

    :goto_35
    const/4 v0, 0x1

    if-eqz v1, :cond_3a

    .line 66
    array-length v1, v1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 64
    :goto_40
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

###### Class com.bumptech.glide.load.engine.b.b.AnonymousClass1 (com.bumptech.glide.load.engine.b.b$1)
.class Lcom/bumptech/glide/load/engine/b/b$1;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/b/b;->b()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/b$1;->a:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 56
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/b/b$1;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
