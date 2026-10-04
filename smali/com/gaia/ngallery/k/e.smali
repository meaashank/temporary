###### Class com.gaia.ngallery.k.e (com.gaia.ngallery.k.e)
.class public Lcom/gaia/ngallery/k/e;
.super Landroid/os/AsyncTask;
.source "GaiaListSubFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/k/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/gaia/ngallery/k/e$a;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/gaia/ngallery/k/e$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/gaia/ngallery/k/e$a;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/gaia/ngallery/k/e$a;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    aget-object p1, p1, v0

    .line 46
    iget-object v0, p1, Lcom/gaia/ngallery/k/e$a;->d:Ljava/io/FileFilter;

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lcom/gaia/ngallery/k/e$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/gaia/ngallery/k/e$a;->d:Ljava/io/FileFilter;

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/f;->b(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    goto :goto_16

    .line 49
    :cond_10
    iget-object v0, p1, Lcom/gaia/ngallery/k/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaia/ngallery/l/f;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 51
    :goto_16
    iput-object p1, p0, Lcom/gaia/ngallery/k/e;->a:Lcom/gaia/ngallery/k/e$a;

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 60
    iget-object v1, p0, Lcom/gaia/ngallery/k/e;->a:Lcom/gaia/ngallery/k/e$a;

    iget-object v1, v1, Lcom/gaia/ngallery/k/e$a;->b:Lcom/gaia/ngallery/f/d;

    invoke-interface {v1, v0, p1}, Lcom/gaia/ngallery/f/d;->a(ILjava/lang/Object;)V

    goto :goto_1f

    .line 61
    :cond_e
    iget-object p1, p0, Lcom/gaia/ngallery/k/e;->a:Lcom/gaia/ngallery/k/e$a;

    iget-object p1, p1, Lcom/gaia/ngallery/k/e$a;->c:Lcom/gaia/ngallery/f/d;

    if-eqz p1, :cond_1f

    .line 62
    iget-object p1, p0, Lcom/gaia/ngallery/k/e;->a:Lcom/gaia/ngallery/k/e$a;

    iget-object p1, p1, Lcom/gaia/ngallery/k/e$a;->c:Lcom/gaia/ngallery/f/d;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/gaia/ngallery/f/d;->a(ILjava/lang/Object;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    check-cast p1, [Lcom/gaia/ngallery/k/e$a;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/e;->a([Lcom/gaia/ngallery/k/e$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 16
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/e;->a(Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.k.e.a (com.gaia.ngallery.k.e$a)
.class public Lcom/gaia/ngallery/k/e$a;
.super Ljava/lang/Object;
.source "GaiaListSubFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/gaia/ngallery/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/d<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lcom/gaia/ngallery/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/io/FileFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gaia/ngallery/f/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gaia/ngallery/f/d<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/gaia/ngallery/k/e$a;-><init>(Ljava/lang/String;Ljava/io/FileFilter;Lcom/gaia/ngallery/f/d;Lcom/gaia/ngallery/f/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;Lcom/gaia/ngallery/f/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Lcom/gaia/ngallery/f/d<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gaia/ngallery/k/e$a;-><init>(Ljava/lang/String;Ljava/io/FileFilter;Lcom/gaia/ngallery/f/d;Lcom/gaia/ngallery/f/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;Lcom/gaia/ngallery/f/d;Lcom/gaia/ngallery/f/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Lcom/gaia/ngallery/f/d<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;",
            "Lcom/gaia/ngallery/f/d<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gaia/ngallery/k/e$a;->a:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/gaia/ngallery/k/e$a;->b:Lcom/gaia/ngallery/f/d;

    .line 27
    iput-object p4, p0, Lcom/gaia/ngallery/k/e$a;->c:Lcom/gaia/ngallery/f/d;

    .line 28
    iput-object p2, p0, Lcom/gaia/ngallery/k/e$a;->d:Ljava/io/FileFilter;

    return-void
.end method
