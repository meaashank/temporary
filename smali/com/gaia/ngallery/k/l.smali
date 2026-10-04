###### Class com.gaia.ngallery.k.l (com.gaia.ngallery.k.l)
.class public Lcom/gaia/ngallery/k/l;
.super Landroid/os/AsyncTask;
.source "MoveFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/k/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/gaia/ngallery/k/l$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/k/l$a;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/gaia/ngallery/k/l;->b:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/gaia/ngallery/k/l;->a:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/gaia/ngallery/k/l;->c:Lcom/gaia/ngallery/k/l$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4

    .line 31
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/gaia/ngallery/k/l;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/k/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destination "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already exist!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_2f
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x0

    return-object p1

    :cond_37
    const-string p1, "File.renameTo return false"

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4

    .line 47
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_b

    .line 49
    iget-object p1, p0, Lcom/gaia/ngallery/k/l;->c:Lcom/gaia/ngallery/k/l$a;

    invoke-interface {p1}, Lcom/gaia/ngallery/k/l$a;->a()V

    goto :goto_15

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/gaia/ngallery/k/l;->c:Lcom/gaia/ngallery/k/l$a;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gaia/ngallery/k/l$a;->a(Ljava/lang/Exception;)V

    :goto_15
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/l;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/l;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.k.l.a (com.gaia.ngallery.k.l$a)
.class public interface abstract Lcom/gaia/ngallery/k/l$a;
.super Ljava/lang/Object;
.source "MoveFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method
