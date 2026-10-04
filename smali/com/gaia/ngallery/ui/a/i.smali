###### Class com.gaia.ngallery.ui.a.i (com.gaia.ngallery.ui.a.i)
.class public Lcom/gaia/ngallery/ui/a/i;
.super Lcom/prism/commons/a/b;
.source "RenameAlbumAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/i;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/i;)Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/gaia/ngallery/ui/a/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/i;Ljava/lang/Object;)V
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/i;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/a/i;)V
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/i;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 7

    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    sget v1, Lcom/gaia/ngallery/i$n;->rename_album_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/gaia/ngallery/ui/a/i$1;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/a/i$1;-><init>(Lcom/gaia/ngallery/ui/a/i;)V

    invoke-static {p1, v1, v0, v2}, Lcom/gaia/ngallery/ui/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/ui/a/f$a;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.i.AnonymousClass1 (com.gaia.ngallery.ui.a.i$1)
.class Lcom/gaia/ngallery/ui/a/i$1;
.super Ljava/lang/Object;
.source "RenameAlbumAction.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/i;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/a/i;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/i;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/i$1;->a:Lcom/gaia/ngallery/ui/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/i$1;->a:Lcom/gaia/ngallery/ui/a/i;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/i;->b(Lcom/gaia/ngallery/ui/a/i;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 32
    new-instance v0, Lcom/gaia/ngallery/k/l;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/i$1;->a:Lcom/gaia/ngallery/ui/a/i;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/a/i;->a(Lcom/gaia/ngallery/ui/a/i;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/a/i$1$1;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/ui/a/i$1$1;-><init>(Lcom/gaia/ngallery/ui/a/i$1;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/gaia/ngallery/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/k/l$a;)V

    .line 44
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/gaia/ngallery/k/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.i.AnonymousClass1.C00611 (com.gaia.ngallery.ui.a.i$1$1)
.class Lcom/gaia/ngallery/ui/a/i$1$1;
.super Ljava/lang/Object;
.source "RenameAlbumAction.java"

# interfaces
.implements Lcom/gaia/ngallery/k/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/i$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gaia/ngallery/ui/a/i$1;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/i$1;Ljava/lang/String;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/i$1$1;->b:Lcom/gaia/ngallery/ui/a/i$1;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/i$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 35
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/i$1$1;->b:Lcom/gaia/ngallery/ui/a/i$1;

    iget-object v1, v1, Lcom/gaia/ngallery/ui/a/i$1;->a:Lcom/gaia/ngallery/ui/a/i;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/a/i;->a(Lcom/gaia/ngallery/ui/a/i;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gaia/ngallery/ui/a/i$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gaia/ngallery/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/i$1$1;->b:Lcom/gaia/ngallery/ui/a/i$1;

    iget-object v0, v0, Lcom/gaia/ngallery/ui/a/i$1;->a:Lcom/gaia/ngallery/ui/a/i;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/i$1$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gaia/ngallery/ui/a/i;->a(Lcom/gaia/ngallery/ui/a/i;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/i$1$1;->b:Lcom/gaia/ngallery/ui/a/i$1;

    iget-object v0, v0, Lcom/gaia/ngallery/ui/a/i$1;->a:Lcom/gaia/ngallery/ui/a/i;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/gaia/ngallery/ui/a/i;->a(Lcom/gaia/ngallery/ui/a/i;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
