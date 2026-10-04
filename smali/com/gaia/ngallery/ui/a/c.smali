###### Class com.gaia.ngallery.ui.a.c (com.gaia.ngallery.ui.a.c)
.class public Lcom/gaia/ngallery/ui/a/c;
.super Lcom/prism/commons/a/b;
.source "MoveAction.java"


# annotations
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

.field private c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/gaia/ngallery/ui/a/c;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/a/c;->a:Ljava/lang/String;

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

    .line 32
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/c;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/c;-><init>(Ljava/util/List;)V

    .line 38
    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/c;->c:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/c;)Ljava/util/List;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/gaia/ngallery/ui/a/c;->b:Ljava/util/List;

    return-object p0
.end method

.method private synthetic a(Landroid/app/Activity;Ljava/io/File;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/c;->a(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/io/File;)V
    .registers 7

    .line 66
    sget-object v0, Lcom/gaia/ngallery/ui/a/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/gaia/ngallery/k/f;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/c;->b:Ljava/util/List;

    new-instance v2, Lcom/gaia/ngallery/ui/a/c$1;

    invoke-direct {v2, p0, p2}, Lcom/gaia/ngallery/ui/a/c$1;-><init>(Lcom/gaia/ngallery/ui/a/c;Ljava/io/File;)V

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/gaia/ngallery/k/f;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/io/File;Lcom/gaia/ngallery/k/f$a;)V

    .line 99
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/k/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/c;Ljava/lang/Object;)V
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/c;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dEDCXXf4-YkxcYm7JqEBZ9wXkqU(Lcom/gaia/ngallery/ui/a/c;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/prism/commons/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$gjYDY94rzX0mwKYYIcvO8ENJcsA(Lcom/gaia/ngallery/ui/a/c;Landroid/app/Activity;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/c;->a(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic lambda$jAXRMKqogKL1npF651Eydg6e44o(Lcom/gaia/ngallery/ui/a/c;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/c;->c:Ljava/io/File;

    if-nez v0, :cond_64

    .line 47
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/c;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 48
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/model/AlbumFile;)Lcom/gaia/ngallery/b/a;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaia/ngallery/e;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v0}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/gaia/ngallery/ui/a/j;

    sget v2, Lcom/gaia/ngallery/i$n;->move_to_dialog_titile:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/gaia/ngallery/ui/a/j;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 53
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA;-><init>(Lcom/gaia/ngallery/ui/a/c;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 54
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$dEDCXXf4-YkxcYm7JqEBZ9wXkqU;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$dEDCXXf4-YkxcYm7JqEBZ9wXkqU;-><init>(Lcom/gaia/ngallery/ui/a/c;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 55
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$jAXRMKqogKL1npF651Eydg6e44o;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$jAXRMKqogKL1npF651Eydg6e44o;-><init>(Lcom/gaia/ngallery/ui/a/c;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/prism/commons/a/a$c;)Lcom/prism/commons/a/a;

    .line 56
    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/j;->a(Landroid/app/Activity;)V

    goto :goto_69

    .line 59
    :cond_64
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/c;->c:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/a/c;->a(Landroid/content/Context;Ljava/io/File;)V

    :goto_69
    return-void
.end method

###### Class com.gaia.ngallery.ui.a.c.AnonymousClass1 (com.gaia.ngallery.ui.a.c$1)
.class Lcom/gaia/ngallery/ui/a/c$1;
.super Ljava/lang/Object;
.source "MoveAction.java"

# interfaces
.implements Lcom/gaia/ngallery/k/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/c;->a(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/gaia/ngallery/ui/a/c;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/c;Ljava/io/File;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/c$1;->b:Lcom/gaia/ngallery/ui/a/c;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/c$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .line 72
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/c$1;->b:Lcom/gaia/ngallery/ui/a/c;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/gaia/ngallery/ui/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_77

    .line 73
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/c$1;->b:Lcom/gaia/ngallery/ui/a/c;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/gaia/ngallery/ui/a/c;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/model/AlbumFile;)Lcom/gaia/ngallery/b/a;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/gaia/ngallery/ui/a/c$1;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/b/b;->b(Ljava/lang/String;)Lcom/gaia/ngallery/b/a;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/gaia/ngallery/ui/a/c$1;->b:Lcom/gaia/ngallery/ui/a/c;

    invoke-static {v3}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/gaia/ngallery/ui/a/c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gaia/ngallery/model/AlbumFile;

    .line 77
    new-instance v5, Lcom/gaia/ngallery/model/AlbumFile;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/gaia/ngallery/model/AlbumFile;-><init>(Ljava/io/File;)V

    const/4 v6, 0x1

    .line 78
    invoke-virtual {v5, v6}, Lcom/gaia/ngallery/model/AlbumFile;->setEncript(Z)V

    .line 79
    invoke-virtual {v4}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/gaia/ngallery/model/AlbumFile;->setMediaType(I)V

    .line 80
    invoke-virtual {v1, v5}, Lcom/gaia/ngallery/b/a;->b(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 81
    invoke-virtual {v0, v4}, Lcom/gaia/ngallery/b/a;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_41

    .line 83
    :cond_6d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    invoke-virtual {v0, v2, v3}, Lcom/gaia/ngallery/b/a;->a(J)V

    .line 85
    invoke-virtual {v1, v2, v3}, Lcom/gaia/ngallery/b/a;->a(J)V

    .line 89
    :cond_77
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/c$1;->b:Lcom/gaia/ngallery/ui/a/c;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/c$1;->b:Lcom/gaia/ngallery/ui/a/c;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/gaia/ngallery/ui/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/gaia/ngallery/ui/a/c;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .registers 4

    const-string v0, "Move File GaiaMoveFilesToDirTask Failed"

    .line 96
    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/c$1;->b:Lcom/gaia/ngallery/ui/a/c;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/gaia/ngallery/ui/a/c;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$c$dEDCXXf4YkxcYm7JqEBZ9wXkqU (com.gaia.ngallery.ui.a.-$$Lambda$c$dEDCXXf4-YkxcYm7JqEBZ9wXkqU)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$c$dEDCXXf4-YkxcYm7JqEBZ9wXkqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/c;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$dEDCXXf4-YkxcYm7JqEBZ9wXkqU;->f$0:Lcom/gaia/ngallery/ui/a/c;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$dEDCXXf4-YkxcYm7JqEBZ9wXkqU;->f$0:Lcom/gaia/ngallery/ui/a/c;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/c;->lambda$dEDCXXf4-YkxcYm7JqEBZ9wXkqU(Lcom/gaia/ngallery/ui/a/c;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA (com.gaia.ngallery.ui.a.-$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/c;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/c;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA;->f$0:Lcom/gaia/ngallery/ui/a/c;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA;->f$0:Lcom/gaia/ngallery/ui/a/c;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$gjYDY94rzX0mwKYYIcvO8ENJcsA;->f$1:Landroid/app/Activity;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/a/c;->lambda$gjYDY94rzX0mwKYYIcvO8ENJcsA(Lcom/gaia/ngallery/ui/a/c;Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$c$jAXRMKqogKL1npF651Eydg6e44o (com.gaia.ngallery.ui.a.-$$Lambda$c$jAXRMKqogKL1npF651Eydg6e44o)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$c$jAXRMKqogKL1npF651Eydg6e44o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$c;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/c;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$jAXRMKqogKL1npF651Eydg6e44o;->f$0:Lcom/gaia/ngallery/ui/a/c;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$c$jAXRMKqogKL1npF651Eydg6e44o;->f$0:Lcom/gaia/ngallery/ui/a/c;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/c;->lambda$jAXRMKqogKL1npF651Eydg6e44o(Lcom/gaia/ngallery/ui/a/c;)V

    return-void
.end method
