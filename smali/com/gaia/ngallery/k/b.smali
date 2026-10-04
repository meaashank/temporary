###### Class com.gaia.ngallery.k.b (com.gaia.ngallery.k.b)
.class public Lcom/gaia/ngallery/k/b;
.super Landroid/os/AsyncTask;
.source "EncryptImportTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/k/b$b;,
        Lcom/gaia/ngallery/k/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/gaia/ngallery/k/b$b;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/model/AlbumFile;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/gaia/ngallery/k/b$a;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/gaia/ngallery/k/b;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/k/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gaia/ngallery/k/b$a;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/gaia/ngallery/k/b;->b:Lcom/gaia/ngallery/k/b$a;

    .line 47
    iput-object p1, p0, Lcom/gaia/ngallery/k/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/gaia/ngallery/k/b$b;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/gaia/ngallery/k/b$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 53
    aget-object p1, p1, v1

    .line 54
    iget-object v2, p1, Lcom/gaia/ngallery/k/b$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaia/ngallery/model/b;

    .line 55
    invoke-interface {v3}, Lcom/gaia/ngallery/model/b;->a()Ljava/lang/String;

    move-result-object v4

    .line 56
    sget-object v5, Lcom/gaia/ngallery/k/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground loop fileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/gaia/ngallery/model/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_3b

    goto :goto_e

    :cond_3b
    const-string v5, "."

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_48

    .line 61
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    :cond_48
    new-instance v5, Ljava/io/File;

    iget-object v7, p1, Lcom/gaia/ngallery/k/b$b;->c:Ljava/io/File;

    invoke-direct {v5, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 66
    new-instance v5, Lcom/gaia/ngallery/g/c;

    new-instance v7, Lcom/gaia/ngallery/g/b;

    invoke-direct {v7, v4}, Lcom/gaia/ngallery/g/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/gaia/ngallery/g/c;-><init>(Lcom/gaia/ngallery/g/b;)V

    .line 67
    new-instance v4, Lcom/gaia/ngallery/g/j;

    new-instance v7, Lcom/gaia/ngallery/g/h;

    invoke-direct {v7, v5}, Lcom/gaia/ngallery/g/h;-><init>(Lcom/gaia/ngallery/g/d;)V

    invoke-direct {v4, v7}, Lcom/gaia/ngallery/g/j;-><init>(Lcom/gaia/ngallery/g/h;)V

    .line 68
    invoke-virtual {v4}, Lcom/gaia/ngallery/g/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 70
    sget-object v5, Lcom/gaia/ngallery/k/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground loop dest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_84

    goto :goto_e

    .line 75
    :cond_84
    sget-object v5, Lcom/gaia/ngallery/k/b;->a:Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encryptCopy  src="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/gaia/ngallery/model/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; dst="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :try_start_aa
    invoke-static {v3, v4}, Lcom/gaia/ngallery/e/c;->a(Lcom/gaia/ngallery/model/b;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_da

    .line 88
    new-instance v5, Lcom/gaia/ngallery/model/AlbumFile;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/gaia/ngallery/model/AlbumFile;-><init>(Ljava/io/File;)V

    .line 90
    invoke-static {v4}, Lcom/gaia/ngallery/g/g;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c2

    const/4 v4, 0x2

    .line 91
    invoke-virtual {v5, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setMediaType(I)V

    goto :goto_c5

    .line 97
    :cond_c2
    invoke-virtual {v5, v6}, Lcom/gaia/ngallery/model/AlbumFile;->setMediaType(I)V

    .line 100
    :goto_c5
    iget-boolean v4, p1, Lcom/gaia/ngallery/k/b$b;->b:Z

    if-nez v4, :cond_d2

    .line 101
    instance-of v4, v3, Lcom/gaia/ngallery/model/d;

    if-eqz v4, :cond_d2

    .line 102
    check-cast v3, Lcom/gaia/ngallery/model/d;

    invoke-interface {v3}, Lcom/gaia/ngallery/model/d;->c()Z

    .line 106
    :cond_d2
    invoke-virtual {v5, v6}, Lcom/gaia/ngallery/model/AlbumFile;->setEncript(Z)V

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :catch_da
    move-exception v3

    .line 82
    sget-object v4, Lcom/gaia/ngallery/k/b;->a:Ljava/lang/String;

    const-string v5, "encryption failed "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    iget-object v4, p0, Lcom/gaia/ngallery/k/b;->c:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/gaia/ngallery/d;->b(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 115
    :cond_e9
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v1

    iget-object p1, p1, Lcom/gaia/ngallery/k/b$b;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/b/b;->b(Ljava/lang/String;)Lcom/gaia/ngallery/b/a;

    move-result-object p1

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaia/ngallery/model/AlbumFile;

    .line 117
    invoke-virtual {p1, v2}, Lcom/gaia/ngallery/b/a;->b(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_fb

    .line 118
    :cond_10b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/gaia/ngallery/b/a;->a(J)V

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/gaia/ngallery/k/b;->b:Lcom/gaia/ngallery/k/b$a;

    invoke-interface {v0, p1}, Lcom/gaia/ngallery/k/b$a;->a(Ljava/util/List;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)V
    .registers 2

    .line 136
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, [Lcom/gaia/ngallery/k/b$b;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/b;->a([Lcom/gaia/ngallery/k/b$b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 30
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/b;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 124
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/b;->a([Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.k.b.a (com.gaia.ngallery.k.b$a)
.class public interface abstract Lcom/gaia/ngallery/k/b$a;
.super Ljava/lang/Object;
.source "EncryptImportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.gaia.ngallery.k.b.C0056b (com.gaia.ngallery.k.b$b)
.class public Lcom/gaia/ngallery/k/b$b;
.super Ljava/lang/Object;
.source "EncryptImportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/b;
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
            "Lcom/gaia/ngallery/model/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
