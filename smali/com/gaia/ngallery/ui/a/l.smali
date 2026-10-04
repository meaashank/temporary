###### Class com.gaia.ngallery.ui.a.l (com.gaia.ngallery.ui.a.l)
.class public Lcom/gaia/ngallery/ui/a/l;
.super Lcom/prism/commons/a/b;
.source "SilentExportAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/k/c;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/gaia/ngallery/k/a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/gaia/ngallery/ui/a/l;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/a/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/l;->b:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/l;->c:Ljava/lang/String;

    .line 27
    iput-boolean p3, p0, Lcom/gaia/ngallery/ui/a/l;->e:Z

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/l;->d:Lcom/gaia/ngallery/k/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/l;->d:Lcom/gaia/ngallery/k/a;

    invoke-virtual {v0}, Lcom/gaia/ngallery/k/a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_14

    .line 33
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/l;->d:Lcom/gaia/ngallery/k/a;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/k/a;->cancel(Z)Z

    .line 35
    :cond_14
    new-instance v0, Lcom/gaia/ngallery/k/a;

    new-instance v2, Lcom/gaia/ngallery/ui/a/l$1;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/a/l$1;-><init>(Lcom/gaia/ngallery/ui/a/l;)V

    invoke-direct {v0, p1, v2}, Lcom/gaia/ngallery/k/a;-><init>(Landroid/content/Context;Lcom/gaia/ngallery/k/a$a;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/a/l;->d:Lcom/gaia/ngallery/k/a;

    .line 55
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/l;->d:Lcom/gaia/ngallery/k/a;

    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/a/l;->e:Z

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/k/a;->a(Z)V

    .line 57
    new-instance p1, Lcom/gaia/ngallery/k/a$b;

    invoke-direct {p1}, Lcom/gaia/ngallery/k/a$b;-><init>()V

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/a/l;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p2, p1, Lcom/gaia/ngallery/k/a$b;->a:Ljava/util/List;

    .line 60
    iput-object v0, p1, Lcom/gaia/ngallery/k/a$b;->b:Ljava/io/File;

    .line 62
    iget-object p2, p0, Lcom/gaia/ngallery/ui/a/l;->d:Lcom/gaia/ngallery/k/a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Lcom/gaia/ngallery/k/a$b;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/gaia/ngallery/k/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/l;)V
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/l;->d()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/l;Ljava/lang/Object;)V
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/l;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/a/l;)V
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/l;->d()V

    return-void
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/a/l;)V
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/l;->d()V

    return-void
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/a/l;)V
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/l;->d()V

    return-void
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/a/l;)V
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/l;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    .line 71
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/l;->c()V

    .line 72
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/l;->b:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/a/l;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.l.AnonymousClass1 (com.gaia.ngallery.ui.a.l$1)
.class Lcom/gaia/ngallery/ui/a/l$1;
.super Ljava/lang/Object;
.source "SilentExportAction.java"

# interfaces
.implements Lcom/gaia/ngallery/k/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/l;->a(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/a/l;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/l;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/l$1;->a:Lcom/gaia/ngallery/ui/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/l$1;->a:Lcom/gaia/ngallery/ui/a/l;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/l;->d(Lcom/gaia/ngallery/ui/a/l;)V

    .line 52
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/l$1;->a:Lcom/gaia/ngallery/ui/a/l;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/l;->e(Lcom/gaia/ngallery/ui/a/l;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    .line 44
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/l$1;->a:Lcom/gaia/ngallery/ui/a/l;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/a/l;->b(Lcom/gaia/ngallery/ui/a/l;)V

    .line 45
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/l$1;->a:Lcom/gaia/ngallery/ui/a/l;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/a/l;->c(Lcom/gaia/ngallery/ui/a/l;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/k/c;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/l$1;->a:Lcom/gaia/ngallery/ui/a/l;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/gaia/ngallery/ui/a/l;)V

    .line 39
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/l$1;->a:Lcom/gaia/ngallery/ui/a/l;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/gaia/ngallery/ui/a/l;Ljava/lang/Object;)V

    return-void
.end method
