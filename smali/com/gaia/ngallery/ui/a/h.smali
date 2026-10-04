###### Class com.gaia.ngallery.ui.a.h (com.gaia.ngallery.ui.a.h)
.class public Lcom/gaia/ngallery/ui/a/h;
.super Lcom/prism/commons/a/b;
.source "RemoveFileAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/model/AlbumFile;",
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

.field private c:Lcom/gaia/ngallery/ui/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/gaia/ngallery/ui/a/h;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/h;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/gaia/ngallery/ui/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/h;->a(Landroid/content/Context;)V

    .line 41
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 54
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/h;->c()V

    .line 55
    new-instance p1, Lcom/gaia/ngallery/ui/a/h$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/gaia/ngallery/ui/a/h$a;-><init>(Lcom/gaia/ngallery/ui/a/h;Lcom/gaia/ngallery/ui/a/h$1;)V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/h;->c:Lcom/gaia/ngallery/ui/a/h$a;

    .line 56
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/h;->c:Lcom/gaia/ngallery/ui/a/h$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/h;->b:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/h$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 44
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 45
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/h;->b()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/h;)V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/h;->d()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/h;Ljava/lang/Object;)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/h;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/h;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/h;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$GnMfu2jBnR-A6-KX4t0n02CXWA0(Lcom/gaia/ngallery/ui/a/h;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/a/h;->a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$wR6IWZ0s3ce192RQiN58jKMt9V8(Lcom/gaia/ngallery/ui/a/h;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/h;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 8

    .line 36
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_title_remove:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gaia/ngallery/ui/a/h;->b:Ljava/util/List;

    .line 37
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_content_remove:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/a/h;->b:Ljava/util/List;

    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_button_positive_remove:I

    new-instance v2, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$GnMfu2jBnR-A6-KX4t0n02CXWA0;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$GnMfu2jBnR-A6-KX4t0n02CXWA0;-><init>(Lcom/gaia/ngallery/ui/a/h;Landroid/app/Activity;)V

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->cancel:I

    new-instance v2, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$wR6IWZ0s3ce192RQiN58jKMt9V8;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$wR6IWZ0s3ce192RQiN58jKMt9V8;-><init>(Lcom/gaia/ngallery/ui/a/h;)V

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/l;->a(Landroid/content/Context;Landroid/support/v7/app/AlertDialog;)V

    .line 49
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.h.AnonymousClass1 (com.gaia.ngallery.ui.a.h$1)
.class synthetic Lcom/gaia/ngallery/ui/a/h$1;
.super Ljava/lang/Object;
.source "RemoveFileAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.gaia.ngallery.ui.a.h.a (com.gaia.ngallery.ui.a.h$a)
.class Lcom/gaia/ngallery/ui/a/h$a;
.super Landroid/os/AsyncTask;
.source "RemoveFileAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/model/AlbumFile;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/a/h;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/gaia/ngallery/ui/a/h;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/h$a;->a:Lcom/gaia/ngallery/ui/a/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/h;Lcom/gaia/ngallery/ui/a/h$1;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/h$a;-><init>(Lcom/gaia/ngallery/ui/a/h;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Integer;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 74
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_6c

    aget-object v3, p1, v1

    .line 75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaia/ngallery/model/AlbumFile;

    .line 76
    invoke-virtual {v5}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gaia/ngallery/l/f;->i(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_45

    add-int/lit8 v2, v2, 0x1

    .line 78
    invoke-static {}, Lcom/gaia/ngallery/ui/a/h;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 81
    :cond_45
    invoke-static {}, Lcom/gaia/ngallery/ui/a/h;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " success"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 84
    :cond_67
    iput-object v3, p0, Lcom/gaia/ngallery/ui/a/h$a;->b:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 87
    :cond_6c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .registers 4

    .line 92
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/h$a;->a:Lcom/gaia/ngallery/ui/a/h;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/h;->a(Lcom/gaia/ngallery/ui/a/h;)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4c

    .line 95
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/h$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_44

    .line 96
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/h$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/model/AlbumFile;)Lcom/gaia/ngallery/b/a;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/h$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFile;

    .line 98
    invoke-virtual {p1, v1}, Lcom/gaia/ngallery/b/a;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_2d

    .line 100
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/gaia/ngallery/b/a;->a(J)V

    .line 102
    :cond_44
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/h$a;->a:Lcom/gaia/ngallery/ui/a/h;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/h$a;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/gaia/ngallery/ui/a/h;->a(Lcom/gaia/ngallery/ui/a/h;Ljava/lang/Object;)V

    goto :goto_67

    .line 104
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed files: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/h$a;->a:Lcom/gaia/ngallery/ui/a/h;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/a/h;->a(Lcom/gaia/ngallery/ui/a/h;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_67
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 67
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/h$a;->a([Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 67
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/h$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$h$GnMfu2jBnRA6KX4t0n02CXWA0 (com.gaia.ngallery.ui.a.-$$Lambda$h$GnMfu2jBnR-A6-KX4t0n02CXWA0)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$h$GnMfu2jBnR-A6-KX4t0n02CXWA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/h;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/h;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$GnMfu2jBnR-A6-KX4t0n02CXWA0;->f$0:Lcom/gaia/ngallery/ui/a/h;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$GnMfu2jBnR-A6-KX4t0n02CXWA0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$GnMfu2jBnR-A6-KX4t0n02CXWA0;->f$0:Lcom/gaia/ngallery/ui/a/h;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$GnMfu2jBnR-A6-KX4t0n02CXWA0;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/gaia/ngallery/ui/a/h;->lambda$GnMfu2jBnR-A6-KX4t0n02CXWA0(Lcom/gaia/ngallery/ui/a/h;Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$h$wR6IWZ0s3ce192RQiN58jKMt9V8 (com.gaia.ngallery.ui.a.-$$Lambda$h$wR6IWZ0s3ce192RQiN58jKMt9V8)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$h$wR6IWZ0s3ce192RQiN58jKMt9V8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/h;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$wR6IWZ0s3ce192RQiN58jKMt9V8;->f$0:Lcom/gaia/ngallery/ui/a/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$h$wR6IWZ0s3ce192RQiN58jKMt9V8;->f$0:Lcom/gaia/ngallery/ui/a/h;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/h;->lambda$wR6IWZ0s3ce192RQiN58jKMt9V8(Lcom/gaia/ngallery/ui/a/h;Landroid/content/DialogInterface;I)V

    return-void
.end method
