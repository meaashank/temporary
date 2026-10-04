###### Class com.gaia.ngallery.ui.a.e (com.gaia.ngallery.ui.a.e)
.class public Lcom/gaia/ngallery/ui/a/e;
.super Lcom/prism/commons/a/b;
.source "NewAlbumAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Lcom/gaia/ngallery/model/AlbumFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/gaia/ngallery/ui/a/e;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/gaia/ngallery/ui/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/e;)V
    .registers 1

    .line 21
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/e;Ljava/lang/Object;)V
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/e;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 29
    sget v0, Lcom/gaia/ngallery/i$n;->new_album_dialog_subtitle:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/a/e$1;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/e$1;-><init>(Lcom/gaia/ngallery/ui/a/e;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/gaia/ngallery/ui/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/ui/a/f$a;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.e.AnonymousClass1 (com.gaia.ngallery.ui.a.e$1)
.class Lcom/gaia/ngallery/ui/a/e$1;
.super Ljava/lang/Object;
.source "NewAlbumAction.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/e;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/a/e;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/e;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/e$1;->a:Lcom/gaia/ngallery/ui/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/io/File;Ljava/lang/String;)Lcom/gaia/ngallery/model/AlbumFolder;
    .registers 5

    .line 34
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 37
    invoke-static {}, Lcom/gaia/ngallery/ui/a/e;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create new album, name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance p1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {p1}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/model/AlbumFolder;->setId(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->setImgCount(I)V

    .line 42
    invoke-virtual {p1, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->setVidCount(I)V

    return-object p1

    .line 45
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create dir failed or existing file is no a dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 3

    .line 47
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 48
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/e$1;->a:Lcom/gaia/ngallery/ui/a/e;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/e;->a(Lcom/gaia/ngallery/ui/a/e;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Exception;)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/e$1;->a:Lcom/gaia/ngallery/ui/a/e;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/gaia/ngallery/ui/a/e;->a(Lcom/gaia/ngallery/ui/a/e;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$-kjoaXR03p8vmvCl3QILykZXkhw(Lcom/gaia/ngallery/ui/a/e$1;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/e$1;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$0weeKg9kacBcsTJ4zrwLqKMy5X4(Ljava/io/File;Ljava/lang/String;)Lcom/gaia/ngallery/model/AlbumFolder;
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/ui/a/e$1;->a(Ljava/io/File;Ljava/lang/String;)Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$FRkfoMBEofvY14Wk0kdWr-b4ndw(Lcom/gaia/ngallery/ui/a/e$1;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/e$1;->a(Lcom/gaia/ngallery/model/AlbumFolder;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/e$1;->a:Lcom/gaia/ngallery/ui/a/e;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/e;->a(Lcom/gaia/ngallery/ui/a/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4;

    invoke-direct {v2, v0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$FRkfoMBEofvY14Wk0kdWr-b4ndw;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$FRkfoMBEofvY14Wk0kdWr-b4ndw;-><init>(Lcom/gaia/ngallery/ui/a/e$1;)V

    .line 46
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$-kjoaXR03p8vmvCl3QILykZXkhw;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$-kjoaXR03p8vmvCl3QILykZXkhw;-><init>(Lcom/gaia/ngallery/ui/a/e$1;)V

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$e$1$kjoaXR03p8vmvCl3QILykZXkhw (com.gaia.ngallery.ui.a.-$$Lambda$e$1$-kjoaXR03p8vmvCl3QILykZXkhw)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$-kjoaXR03p8vmvCl3QILykZXkhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/e$1;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/e$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$-kjoaXR03p8vmvCl3QILykZXkhw;->f$0:Lcom/gaia/ngallery/ui/a/e$1;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$-kjoaXR03p8vmvCl3QILykZXkhw;->f$0:Lcom/gaia/ngallery/ui/a/e$1;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/e$1;->lambda$-kjoaXR03p8vmvCl3QILykZXkhw(Lcom/gaia/ngallery/ui/a/e$1;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4 (com.gaia.ngallery.ui.a.-$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Ljava/io/File;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$0weeKg9kacBcsTJ4zrwLqKMy5X4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gaia/ngallery/ui/a/e$1;->lambda$0weeKg9kacBcsTJ4zrwLqKMy5X4(Ljava/io/File;Ljava/lang/String;)Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$e$1$FRkfoMBEofvY14Wk0kdWrb4ndw (com.gaia.ngallery.ui.a.-$$Lambda$e$1$FRkfoMBEofvY14Wk0kdWr-b4ndw)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$FRkfoMBEofvY14Wk0kdWr-b4ndw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/e$1;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/e$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$FRkfoMBEofvY14Wk0kdWr-b4ndw;->f$0:Lcom/gaia/ngallery/ui/a/e$1;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$e$1$FRkfoMBEofvY14Wk0kdWr-b4ndw;->f$0:Lcom/gaia/ngallery/ui/a/e$1;

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/e$1;->lambda$FRkfoMBEofvY14Wk0kdWr-b4ndw(Lcom/gaia/ngallery/ui/a/e$1;Lcom/gaia/ngallery/model/AlbumFolder;)V

    return-void
.end method
