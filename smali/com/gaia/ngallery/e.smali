###### Class com.gaia.ngallery.e (com.gaia.ngallery.e)
.class public Lcom/gaia/ngallery/e;
.super Ljava/lang/Object;
.source "GalleryConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "Trash"


# instance fields
.field private c:Lcom/gaia/ngallery/f/b;

.field private d:Lcom/gaia/ngallery/f/b;

.field private e:Ljava/util/Locale;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private h:Ljava/io/File;

.field private i:Ljava/io/File;

.field private j:Ljava/io/File;

.field private k:Ljava/io/File;

.field private l:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/prism/bugreport/commons/b;

.field private p:Z

.field private q:Lcom/prism/a/a/a$a;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/gaia/ngallery/c;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/gaia/ngallery/e;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/gaia/ngallery/e$a;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->a(Lcom/gaia/ngallery/e$a;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_e

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->a(Lcom/gaia/ngallery/e$a;)Ljava/util/Locale;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Lcom/gaia/ngallery/e;->e:Ljava/util/Locale;

    .line 79
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->b(Lcom/gaia/ngallery/e$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e;->l:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->c(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaia/ngallery/e;->f:Ljava/io/File;

    .line 84
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->d(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e;->m:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->e(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e;->s:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/gaia/ngallery/e;->v()V

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->f(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaia/ngallery/e;->j:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/e;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "share_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaia/ngallery/e;->k:Ljava/io/File;

    .line 90
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->g(Lcom/gaia/ngallery/e$a;)Lcom/prism/bugreport/commons/b;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e;->o:Lcom/prism/bugreport/commons/b;

    .line 91
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->h(Lcom/gaia/ngallery/e$a;)Lcom/prism/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e;->q:Lcom/prism/a/a/a$a;

    .line 92
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->i(Lcom/gaia/ngallery/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gaia/ngallery/e;->p:Z

    .line 93
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->j(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e;->r:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->k(Lcom/gaia/ngallery/e$a;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e;->u:Ljava/util/ArrayList;

    .line 95
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->l(Lcom/gaia/ngallery/e$a;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e;->v:Ljava/util/ArrayList;

    .line 96
    invoke-static {p1}, Lcom/gaia/ngallery/e$a;->m(Lcom/gaia/ngallery/e$a;)Lcom/gaia/ngallery/c;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/e;->t:Lcom/gaia/ngallery/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaia/ngallery/e$a;Lcom/gaia/ngallery/e$1;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/e;-><init>(Lcom/gaia/ngallery/e$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/gaia/ngallery/e$a;
    .registers 3

    .line 48
    new-instance v0, Lcom/gaia/ngallery/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gaia/ngallery/e$a;-><init>(Landroid/content/Context;Lcom/gaia/ngallery/e$1;)V

    return-object v0
.end method

.method public static synthetic lambda$WOKRhOQRZAAPVpRsOMwKDcivYdw(Lcom/gaia/ngallery/e;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Lcom/gaia/ngallery/e;->w()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lcom/gaia/ngallery/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private v()V
    .registers 4

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/e;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/gaia/ngallery/e;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaia/ngallery/e;->g:Ljava/io/File;

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/e;->f:Ljava/io/File;

    const-string v2, "Trash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaia/ngallery/e;->h:Ljava/io/File;

    .line 105
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/e;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/gaia/ngallery/e;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaia/ngallery/e;->i:Ljava/io/File;

    return-void
.end method

.method private synthetic w()Ljava/lang/Integer;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/gaia/ngallery/e;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/gaia/ngallery/e;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 130
    iget-object v0, p0, Lcom/gaia/ngallery/e;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prism/commons/f/g;->a(Ljava/lang/String;)V

    :cond_19
    const/4 v0, 0x0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/gaia/ngallery/e;->t:Lcom/gaia/ngallery/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/gaia/ngallery/e;->p:Z

    return v0
.end method

.method public a(Lcom/gaia/ngallery/model/AlbumFolder;)Z
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/gaia/ngallery/e;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/io/File;)Z
    .registers 3

    .line 162
    invoke-virtual {p0}, Lcom/gaia/ngallery/e;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/io/File;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/gaia/ngallery/e;->f:Ljava/io/File;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 9

    .line 114
    iget-object p1, p0, Lcom/gaia/ngallery/e;->f:Ljava/io/File;

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result p1

    .line 115
    sget-object v0, Lcom/gaia/ngallery/e;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "gallery"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "root file is exit "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/gaia/ngallery/l/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lcom/gaia/ngallery/e;->g:Ljava/io/File;

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result p1

    .line 117
    sget-object v0, Lcom/gaia/ngallery/e;->a:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "gallery"

    aput-object v5, v2, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera file is exit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/gaia/ngallery/l/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object p1, p0, Lcom/gaia/ngallery/e;->h:Ljava/io/File;

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result p1

    .line 120
    sget-object v0, Lcom/gaia/ngallery/e;->a:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "gallery"

    aput-object v5, v2, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera file is exit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/gaia/ngallery/l/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object p1, p0, Lcom/gaia/ngallery/e;->i:Ljava/io/File;

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result p1

    .line 123
    sget-object v0, Lcom/gaia/ngallery/e;->a:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "gallery"

    aput-object v5, v2, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumbnail file is exit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/gaia/ngallery/l/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/gaia/ngallery/e;->j:Ljava/io/File;

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result p1

    .line 126
    sget-object v0, Lcom/gaia/ngallery/e;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "gallery"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "export file is exit "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/gaia/ngallery/-$$Lambda$e$WOKRhOQRZAAPVpRsOMwKDcivYdw;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/-$$Lambda$e$WOKRhOQRZAAPVpRsOMwKDcivYdw;-><init>(Lcom/gaia/ngallery/e;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public b(Lcom/gaia/ngallery/model/AlbumFolder;)Z
    .registers 3

    const-string v0, "Trash"

    .line 170
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/io/File;)Z
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/gaia/ngallery/e;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/io/File;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/gaia/ngallery/e;->g:Ljava/io/File;

    return-object v0
.end method

.method public d()Ljava/io/File;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/gaia/ngallery/e;->k:Ljava/io/File;

    return-object v0
.end method

.method public e()Ljava/io/File;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/gaia/ngallery/e;->h:Ljava/io/File;

    return-object v0
.end method

.method public f()Ljava/io/File;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/gaia/ngallery/e;->i:Ljava/io/File;

    return-object v0
.end method

.method public g()Ljava/io/File;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/gaia/ngallery/e;->j:Ljava/io/File;

    return-object v0
.end method

.method public h()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/gaia/ngallery/e;->t:Lcom/gaia/ngallery/c;

    iget-object v1, p0, Lcom/gaia/ngallery/e;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/gaia/ngallery/e;->t:Lcom/gaia/ngallery/c;

    iget-object v1, p0, Lcom/gaia/ngallery/e;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/gaia/ngallery/e;->t:Lcom/gaia/ngallery/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/gaia/ngallery/e;->t:Lcom/gaia/ngallery/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/gaia/ngallery/e;->t:Lcom/gaia/ngallery/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .registers 2

    .line 215
    iget-boolean v0, p0, Lcom/gaia/ngallery/e;->n:Z

    return v0
.end method

.method public n()Lcom/prism/bugreport/commons/b;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/gaia/ngallery/e;->o:Lcom/prism/bugreport/commons/b;

    return-object v0
.end method

.method public o()Lcom/prism/a/a/a$a;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/gaia/ngallery/e;->q:Lcom/prism/a/a/a$a;

    return-object v0
.end method

.method public p()Lcom/gaia/ngallery/f/b;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/gaia/ngallery/e;->c:Lcom/gaia/ngallery/f/b;

    return-object v0
.end method

.method public q()Lcom/gaia/ngallery/f/b;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/gaia/ngallery/e;->d:Lcom/gaia/ngallery/f/b;

    return-object v0
.end method

.method public r()Landroid/content/Context;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/gaia/ngallery/e;->l:Landroid/content/Context;

    return-object v0
.end method

.method public s()Ljava/util/Locale;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/gaia/ngallery/e;->e:Ljava/util/Locale;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/gaia/ngallery/e;->r:Ljava/lang/String;

    return-object v0
.end method

###### Class com.gaia.ngallery.e.AnonymousClass1 (com.gaia.ngallery.e$1)
.class synthetic Lcom/gaia/ngallery/e$1;
.super Ljava/lang/Object;
.source "GalleryConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.gaia.ngallery.e.a (com.gaia.ngallery.e$a)
.class public final Lcom/gaia/ngallery/e$a;
.super Ljava/lang/Object;
.source "GalleryConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/gaia/ngallery/f/b;

.field private b:Lcom/gaia/ngallery/f/b;

.field private c:Ljava/util/Locale;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:Z

.field private k:Lcom/prism/bugreport/commons/b;

.field private l:Lcom/prism/a/a/a$a;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Lcom/gaia/ngallery/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/gaia/ngallery/e$a;->j:Z

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/gaia/ngallery/e$a;->n:Ljava/util/ArrayList;

    .line 267
    iput-object v0, p0, Lcom/gaia/ngallery/e$a;->o:Ljava/util/ArrayList;

    const-string v0, "main album"

    .line 270
    iput-object v0, p0, Lcom/gaia/ngallery/e$a;->e:Ljava/lang/String;

    const-string v0, ".nomedia"

    .line 271
    iput-object v0, p0, Lcom/gaia/ngallery/e$a;->f:Ljava/lang/String;

    const-string v0, "export"

    .line 272
    iput-object v0, p0, Lcom/gaia/ngallery/e$a;->g:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->h:Landroid/content/Context;

    .line 274
    new-instance p1, Lcom/gaia/ngallery/c;

    invoke-direct {p1}, Lcom/gaia/ngallery/c;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->p:Lcom/gaia/ngallery/c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/gaia/ngallery/e$1;)V
    .registers 3

    .line 249
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/e$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/e$a;)Ljava/util/Locale;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->c:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic b(Lcom/gaia/ngallery/e$a;)Landroid/content/Context;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/gaia/ngallery/e$a;)Lcom/prism/bugreport/commons/b;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->k:Lcom/prism/bugreport/commons/b;

    return-object p0
.end method

.method static synthetic h(Lcom/gaia/ngallery/e$a;)Lcom/prism/a/a/a$a;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->l:Lcom/prism/a/a/a$a;

    return-object p0
.end method

.method static synthetic i(Lcom/gaia/ngallery/e$a;)Z
    .registers 1

    .line 249
    iget-boolean p0, p0, Lcom/gaia/ngallery/e$a;->j:Z

    return p0
.end method

.method static synthetic j(Lcom/gaia/ngallery/e$a;)Ljava/lang/String;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/gaia/ngallery/e$a;)Ljava/util/ArrayList;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l(Lcom/gaia/ngallery/e$a;)Ljava/util/ArrayList;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic m(Lcom/gaia/ngallery/e$a;)Lcom/gaia/ngallery/c;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/gaia/ngallery/e$a;->p:Lcom/gaia/ngallery/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/f/b;Lcom/gaia/ngallery/f/b;)Lcom/gaia/ngallery/e$a;
    .registers 3

    .line 279
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->a:Lcom/gaia/ngallery/f/b;

    .line 280
    iput-object p2, p0, Lcom/gaia/ngallery/e$a;->b:Lcom/gaia/ngallery/f/b;

    return-object p0
.end method

.method public a(Lcom/prism/a/a/a$a;)Lcom/gaia/ngallery/e$a;
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->l:Lcom/prism/a/a/a$a;

    return-object p0
.end method

.method public a(Lcom/prism/bugreport/commons/b;)Lcom/gaia/ngallery/e$a;
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->k:Lcom/prism/bugreport/commons/b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/gaia/ngallery/e$a;
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/gaia/ngallery/e$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/gaia/ngallery/e$a;"
        }
    .end annotation

    .line 315
    invoke-static {}, Lcom/gaia/ngallery/e;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gallery banner adsize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2c

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gaia/ngallery/e$a;->o:Ljava/util/ArrayList;

    goto :goto_2f

    :cond_2c
    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->o:Ljava/util/ArrayList;

    :goto_2f
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/gaia/ngallery/e$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/gaia/ngallery/e$a;"
        }
    .end annotation

    .line 306
    invoke-static {}, Lcom/gaia/ngallery/e;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gallery banner adsize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2c

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gaia/ngallery/e$a;->n:Ljava/util/ArrayList;

    goto :goto_2f

    :cond_2c
    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->n:Ljava/util/ArrayList;

    :goto_2f
    return-object p0
.end method

.method public a(Ljava/util/Locale;)Lcom/gaia/ngallery/e$a;
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->c:Ljava/util/Locale;

    return-object p0
.end method

.method public a(Z)Lcom/gaia/ngallery/e$a;
    .registers 2

    .line 324
    iput-boolean p1, p0, Lcom/gaia/ngallery/e$a;->i:Z

    return-object p0
.end method

.method public a()Lcom/gaia/ngallery/e;
    .registers 3

    .line 356
    new-instance v0, Lcom/gaia/ngallery/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gaia/ngallery/e;-><init>(Lcom/gaia/ngallery/e$a;Lcom/gaia/ngallery/e$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/gaia/ngallery/e$a;
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/gaia/ngallery/e$a;
    .registers 2

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/gaia/ngallery/e$a;
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/gaia/ngallery/e$a;
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/gaia/ngallery/e$a;->m:Ljava/lang/String;

    return-object p0
.end method

###### Class com.gaia.ngallery.$$Lambda$e$WOKRhOQRZAAPVpRsOMwKDcivYdw (com.gaia.ngallery.-$$Lambda$e$WOKRhOQRZAAPVpRsOMwKDcivYdw)
.class public final synthetic Lcom/gaia/ngallery/-$$Lambda$e$WOKRhOQRZAAPVpRsOMwKDcivYdw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/e;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/-$$Lambda$e$WOKRhOQRZAAPVpRsOMwKDcivYdw;->f$0:Lcom/gaia/ngallery/e;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/-$$Lambda$e$WOKRhOQRZAAPVpRsOMwKDcivYdw;->f$0:Lcom/gaia/ngallery/e;

    invoke-static {v0}, Lcom/gaia/ngallery/e;->lambda$WOKRhOQRZAAPVpRsOMwKDcivYdw(Lcom/gaia/ngallery/e;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
