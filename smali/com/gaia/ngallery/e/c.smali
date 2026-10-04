###### Class com.gaia.ngallery.e.c (com.gaia.ngallery.e.c)
.class public Lcom/gaia/ngallery/e/c;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/gaia/ngallery/e/c;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/e/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/gaia/ngallery/k/b$a;)Lcom/gaia/ngallery/k/b;
    .registers 7

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v1, Lcom/gaia/ngallery/model/c;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/gaia/ngallery/model/c;-><init>(Ljava/io/File;)V

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {p0, v0, p2, p3}, Lcom/gaia/ngallery/e/c;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/File;Lcom/gaia/ngallery/k/b$a;)Lcom/gaia/ngallery/k/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/io/File;Lcom/gaia/ngallery/k/b$a;)Lcom/gaia/ngallery/k/b;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/b;",
            ">;",
            "Ljava/io/File;",
            "Lcom/gaia/ngallery/k/b$a;",
            ")",
            "Lcom/gaia/ngallery/k/b;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/gaia/ngallery/k/b$b;

    invoke-direct {v0}, Lcom/gaia/ngallery/k/b$b;-><init>()V

    .line 72
    iput-object p1, v0, Lcom/gaia/ngallery/k/b$b;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, v0, Lcom/gaia/ngallery/k/b$b;->b:Z

    .line 74
    iput-object p2, v0, Lcom/gaia/ngallery/k/b$b;->c:Ljava/io/File;

    .line 77
    sget-object p2, Lcom/gaia/ngallery/e/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptAlbumFiles sourceFiles:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance p1, Lcom/gaia/ngallery/k/b;

    invoke-direct {p1, p0, p3}, Lcom/gaia/ngallery/k/b;-><init>(Landroid/content/Context;Lcom/gaia/ngallery/k/b$a;)V

    .line 79
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/gaia/ngallery/k/b$b;

    aput-object v0, p2, v1

    invoke-virtual {p1, p0, p2}, Lcom/gaia/ngallery/k/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p1
.end method

.method public static a(Lcom/gaia/ngallery/model/b;Ljava/lang/String;)V
    .registers 5

    .line 39
    sget-object v0, Lcom/gaia/ngallery/e/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptFromTo from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/gaia/ngallery/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/gaia/ngallery/e/b;

    invoke-interface {p0}, Lcom/gaia/ngallery/model/b;->b()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/e/b;-><init>(Ljava/io/InputStream;)V

    .line 43
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    sget-object v0, Lcom/gaia/ngallery/e/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptFromTo from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/gaia/ngallery/e/b;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/gaia/ngallery/e/b;-><init>(Ljava/io/InputStream;)V

    .line 35
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    return-void
.end method
