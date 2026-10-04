###### Class com.gaia.ngallery.k.a (com.gaia.ngallery.k.a)
.class public Lcom/gaia/ngallery/k/a;
.super Landroid/os/AsyncTask;
.source "DecryptExportTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/k/a$b;,
        Lcom/gaia/ngallery/k/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/gaia/ngallery/k/a$b;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/k/c;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/gaia/ngallery/k/a$a;

.field private d:Ljava/lang/Throwable;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/gaia/ngallery/k/a;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/k/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gaia/ngallery/k/a$a;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/gaia/ngallery/k/a;->e:Z

    .line 38
    iput-object p1, p0, Lcom/gaia/ngallery/k/a;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/gaia/ngallery/k/a;->c:Lcom/gaia/ngallery/k/a$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/gaia/ngallery/k/a$b;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/gaia/ngallery/k/a$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/k/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    :try_start_1
    aget-object p1, p1, v0

    .line 55
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/gaia/ngallery/k/a$b;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/prism/commons/f/g;->a(Ljava/io/File;)V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v2, p1, Lcom/gaia/ngallery/k/a$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ff

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaia/ngallery/model/AlbumFile;

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/gaia/ngallery/k/a$b;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    new-instance v5, Lcom/gaia/ngallery/g/c;

    invoke-direct {v5, v4}, Lcom/gaia/ngallery/g/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/gaia/ngallery/g/c;->a()Lcom/gaia/ngallery/g/b;

    move-result-object v4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/gaia/ngallery/g/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/gaia/ngallery/g/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    iget-boolean v6, p0, Lcom/gaia/ngallery/k/a;->e:Z

    if-nez v6, :cond_78

    .line 63
    new-instance v5, Lcom/gaia/ngallery/g/j;

    new-instance v6, Lcom/gaia/ngallery/g/h;

    invoke-direct {v6, v4}, Lcom/gaia/ngallery/g/h;-><init>(Lcom/gaia/ngallery/g/d;)V

    invoke-direct {v5, v6}, Lcom/gaia/ngallery/g/j;-><init>(Lcom/gaia/ngallery/g/h;)V

    .line 64
    invoke-virtual {v5}, Lcom/gaia/ngallery/g/j;->a()Ljava/lang/String;

    move-result-object v5

    :cond_78
    const/4 v4, 0x1

    if-nez v5, :cond_9a

    .line 67
    sget-object v5, Lcom/gaia/ngallery/k/a;->a:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode name exeception. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v5, v4}, Lcom/gaia/ngallery/l/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    .line 70
    :cond_9a
    sget-object v6, Lcom/gaia/ngallery/k/a;->a:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " DecryptExportTaskexport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-static {v6, v4}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gaia/ngallery/g/g;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 72
    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/gaia/ngallery/k/a$1;

    invoke-direct {v6, p0}, Lcom/gaia/ngallery/k/a$1;-><init>(Lcom/gaia/ngallery/k/a;)V

    invoke-static {v4, v5, v6}, Lcom/gaia/ngallery/l/f;->b(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/l/f$a;)Z

    goto :goto_e0

    .line 79
    :cond_d7
    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x20

    invoke-static {v4, v5, v6}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 82
    :goto_e0
    new-instance v4, Lcom/gaia/ngallery/k/c;

    invoke-direct {v4, v3, v5}, Lcom/gaia/ngallery/k/c;-><init>(Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v3, p0, Lcom/gaia/ngallery/k/a;->b:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_fd} :catch_100

    goto/16 :goto_1c

    :cond_ff
    return-object v1

    :catch_100
    move-exception p1

    .line 87
    iput-object p1, p0, Lcom/gaia/ngallery/k/a;->d:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/k/c;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_b

    .line 102
    iget-object v0, p0, Lcom/gaia/ngallery/k/a;->c:Lcom/gaia/ngallery/k/a$a;

    invoke-interface {v0, p1}, Lcom/gaia/ngallery/k/a$a;->a(Ljava/util/List;)V

    goto :goto_12

    .line 104
    :cond_b
    iget-object p1, p0, Lcom/gaia/ngallery/k/a;->c:Lcom/gaia/ngallery/k/a$a;

    iget-object v0, p0, Lcom/gaia/ngallery/k/a;->d:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/k/a$a;->a(Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/gaia/ngallery/k/a;->e:Z

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, [Lcom/gaia/ngallery/k/a$b;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/a;->a([Lcom/gaia/ngallery/k/a$b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 2

    .line 109
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 110
    iget-object v0, p0, Lcom/gaia/ngallery/k/a;->c:Lcom/gaia/ngallery/k/a$a;

    invoke-interface {v0}, Lcom/gaia/ngallery/k/a$a;->a()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/a;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 95
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

###### Class com.gaia.ngallery.k.a.AnonymousClass1 (com.gaia.ngallery.k.a$1)
.class Lcom/gaia/ngallery/k/a$1;
.super Ljava/lang/Object;
.source "DecryptExportTask.java"

# interfaces
.implements Lcom/gaia/ngallery/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/k/a;->a([Lcom/gaia/ngallery/k/a$b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/k/a;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/k/a;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/gaia/ngallery/k/a$1;->a:Lcom/gaia/ngallery/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.gaia.ngallery.k.a.InterfaceC0055a (com.gaia.ngallery.k.a$a)
.class public interface abstract Lcom/gaia/ngallery/k/a$a;
.super Ljava/lang/Object;
.source "DecryptExportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/k/c;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.gaia.ngallery.k.a.b (com.gaia.ngallery.k.a$b)
.class public Lcom/gaia/ngallery/k/a$b;
.super Ljava/lang/Object;
.source "DecryptExportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
