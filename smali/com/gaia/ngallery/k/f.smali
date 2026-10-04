###### Class com.gaia.ngallery.k.f (com.gaia.ngallery.k.f)
.class public Lcom/gaia/ngallery/k/f;
.super Landroid/os/AsyncTask;
.source "GaiaMoveFilesToDirTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/k/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/gaia/ngallery/k/f$a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/gaia/ngallery/k/f;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/k/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/io/File;Lcom/gaia/ngallery/k/f$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;",
            "Ljava/io/File;",
            "Lcom/gaia/ngallery/k/f$a;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p4, p0, Lcom/gaia/ngallery/k/f;->b:Lcom/gaia/ngallery/k/f$a;

    .line 35
    iput-object p2, p0, Lcom/gaia/ngallery/k/f;->c:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/gaia/ngallery/k/f;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    .line 41
    sget-object p1, Lcom/gaia/ngallery/k/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bet to move file: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gaia/ngallery/k/f;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/gaia/ngallery/k/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFile;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gaia/ngallery/k/f;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    new-instance v4, Lcom/gaia/ngallery/g/c;

    invoke-direct {v4, v2}, Lcom/gaia/ngallery/g/c;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v2, Lcom/gaia/ngallery/g/j;

    new-instance v5, Lcom/gaia/ngallery/g/h;

    invoke-direct {v5, v4}, Lcom/gaia/ngallery/g/h;-><init>(Lcom/gaia/ngallery/g/d;)V

    invoke-direct {v2, v5}, Lcom/gaia/ngallery/g/j;-><init>(Lcom/gaia/ngallery/g/h;)V

    .line 48
    invoke-virtual {v2}, Lcom/gaia/ngallery/g/j;->a()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gaia/ngallery/k/f$1;

    invoke-direct {v5, p0}, Lcom/gaia/ngallery/k/f$1;-><init>(Lcom/gaia/ngallery/k/f;)V

    invoke-static {v4, v2, v5}, Lcom/gaia/ngallery/l/f;->d(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/l/f$a;)Z

    .line 57
    sget-object v4, Lcom/gaia/ngallery/k/f;->a:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveToDir "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gaia/ngallery/g/g;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 60
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaia/ngallery/e;->f()Ljava/io/File;

    move-result-object v4

    .line 61
    invoke-static {v4, v2}, Lcom/gaia/ngallery/l/m;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 62
    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/gaia/ngallery/l/m;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 63
    new-instance v4, Lcom/gaia/ngallery/k/f$2;

    invoke-direct {v4, p0}, Lcom/gaia/ngallery/k/f$2;-><init>(Lcom/gaia/ngallery/k/f;)V

    invoke-static {v1, v2, v4}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z

    .line 68
    sget-object v4, Lcom/gaia/ngallery/k/f;->a:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move thumbnail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    .line 68
    invoke-static {v4, v5}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_e9
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lcom/gaia/ngallery/k/f;->b:Lcom/gaia/ngallery/k/f$a;

    invoke-interface {p1}, Lcom/gaia/ngallery/k/f$a;->a()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 23
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/f;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 77
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

###### Class com.gaia.ngallery.k.f.AnonymousClass1 (com.gaia.ngallery.k.f$1)
.class Lcom/gaia/ngallery/k/f$1;
.super Ljava/lang/Object;
.source "GaiaMoveFilesToDirTask.java"

# interfaces
.implements Lcom/gaia/ngallery/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/k/f;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/k/f;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/k/f;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/gaia/ngallery/k/f$1;->a:Lcom/gaia/ngallery/k/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.gaia.ngallery.k.f.AnonymousClass2 (com.gaia.ngallery.k.f$2)
.class Lcom/gaia/ngallery/k/f$2;
.super Ljava/lang/Object;
.source "GaiaMoveFilesToDirTask.java"

# interfaces
.implements Lcom/gaia/ngallery/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/k/f;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/k/f;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/k/f;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/gaia/ngallery/k/f$2;->a:Lcom/gaia/ngallery/k/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.gaia.ngallery.k.f.a (com.gaia.ngallery.k.f$a)
.class public interface abstract Lcom/gaia/ngallery/k/f$a;
.super Ljava/lang/Object;
.source "GaiaMoveFilesToDirTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method
