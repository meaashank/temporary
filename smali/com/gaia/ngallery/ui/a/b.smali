###### Class com.gaia.ngallery.ui.a.b (com.gaia.ngallery.ui.a.b)
.class public Lcom/gaia/ngallery/ui/a/b;
.super Lcom/prism/commons/a/b;
.source "ImportAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/model/AlbumFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/b;->a:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lcom/gaia/ngallery/ui/a/b;->b:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;Ljava/io/File;)V
    .registers 4

    .line 37
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/b;->a:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/gaia/ngallery/ui/a/b;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/b;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/b;->c()V

    .line 48
    new-instance v0, Lcom/gaia/ngallery/ui/a/b$1;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/a/b$1;-><init>(Lcom/gaia/ngallery/ui/a/b;)V

    invoke-static {p1, p2, p3, v0}, Lcom/gaia/ngallery/e/c;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/File;Lcom/gaia/ngallery/k/b$a;)Lcom/gaia/ngallery/k/b;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/b;->d()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/b;Ljava/lang/Object;)V
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/b;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/b;->d()V

    return-void
.end method

.method public static synthetic lambda$JNnCaTDCLVvzseSoz-4cMUuSa7U(Lcom/gaia/ngallery/ui/a/b;Landroid/app/Activity;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/b;->a(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic lambda$SAYK98kqZmYtGeyHRoOU4bhJqC0(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->d()V

    return-void
.end method

.method public static synthetic lambda$WHFnrJfuGmZqBGweUM2BoBaLPoM(Lcom/gaia/ngallery/ui/a/b;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/prism/commons/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$Z9IfMxo341M4ZuFRe7LLdBAAi_4(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->c()V

    return-void
.end method

.method public static synthetic lambda$s_RnEOL4rotAPol8QShCSdlYhtE(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 30
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 31
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/a/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/gaia/ngallery/ui/a/b;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/File;)V

    goto :goto_57

    .line 33
    :cond_11
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/gaia/ngallery/ui/a/j;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/a/b;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/gaia/ngallery/ui/a/j;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$JNnCaTDCLVvzseSoz-4cMUuSa7U;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$JNnCaTDCLVvzseSoz-4cMUuSa7U;-><init>(Lcom/gaia/ngallery/ui/a/b;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 38
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$Z9IfMxo341M4ZuFRe7LLdBAAi_4;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$Z9IfMxo341M4ZuFRe7LLdBAAi_4;-><init>(Lcom/gaia/ngallery/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/prism/commons/a/a$b;)Lcom/prism/commons/a/a;

    .line 39
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$SAYK98kqZmYtGeyHRoOU4bhJqC0;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$SAYK98kqZmYtGeyHRoOU4bhJqC0;-><init>(Lcom/gaia/ngallery/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/prism/commons/a/a$a;)Lcom/prism/commons/a/a;

    .line 40
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$WHFnrJfuGmZqBGweUM2BoBaLPoM;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$WHFnrJfuGmZqBGweUM2BoBaLPoM;-><init>(Lcom/gaia/ngallery/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 41
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$s_RnEOL4rotAPol8QShCSdlYhtE;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$s_RnEOL4rotAPol8QShCSdlYhtE;-><init>(Lcom/gaia/ngallery/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/prism/commons/a/a$c;)Lcom/prism/commons/a/a;

    .line 42
    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/j;->a(Landroid/app/Activity;)V

    :goto_57
    return-void
.end method

###### Class com.gaia.ngallery.ui.a.b.AnonymousClass1 (com.gaia.ngallery.ui.a.b$1)
.class Lcom/gaia/ngallery/ui/a/b$1;
.super Ljava/lang/Object;
.source "ImportAction.java"

# interfaces
.implements Lcom/gaia/ngallery/k/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/b;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/a/b;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/b$1;->a:Lcom/gaia/ngallery/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/b$1;->a:Lcom/gaia/ngallery/ui/a/b;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/gaia/ngallery/ui/a/b;)V

    .line 52
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/b$1;->a:Lcom/gaia/ngallery/ui/a/b;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/gaia/ngallery/ui/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/b$1;->a:Lcom/gaia/ngallery/ui/a/b;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/a/b;->b(Lcom/gaia/ngallery/ui/a/b;)V

    const-string p1, "EncryptionUtils.encryptAlbumFiles faile"

    .line 59
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/b$1;->a:Lcom/gaia/ngallery/ui/a/b;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/gaia/ngallery/ui/a/b;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$b$JNnCaTDCLVvzseSoz4cMUuSa7U (com.gaia.ngallery.ui.a.-$$Lambda$b$JNnCaTDCLVvzseSoz-4cMUuSa7U)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$b$JNnCaTDCLVvzseSoz-4cMUuSa7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/b;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/b;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$JNnCaTDCLVvzseSoz-4cMUuSa7U;->f$0:Lcom/gaia/ngallery/ui/a/b;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$JNnCaTDCLVvzseSoz-4cMUuSa7U;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$JNnCaTDCLVvzseSoz-4cMUuSa7U;->f$0:Lcom/gaia/ngallery/ui/a/b;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$JNnCaTDCLVvzseSoz-4cMUuSa7U;->f$1:Landroid/app/Activity;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/a/b;->lambda$JNnCaTDCLVvzseSoz-4cMUuSa7U(Lcom/gaia/ngallery/ui/a/b;Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$b$SAYK98kqZmYtGeyHRoOU4bhJqC0 (com.gaia.ngallery.ui.a.-$$Lambda$b$SAYK98kqZmYtGeyHRoOU4bhJqC0)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$b$SAYK98kqZmYtGeyHRoOU4bhJqC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/b;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$SAYK98kqZmYtGeyHRoOU4bhJqC0;->f$0:Lcom/gaia/ngallery/ui/a/b;

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskComplete()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$SAYK98kqZmYtGeyHRoOU4bhJqC0;->f$0:Lcom/gaia/ngallery/ui/a/b;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/b;->lambda$SAYK98kqZmYtGeyHRoOU4bhJqC0(Lcom/gaia/ngallery/ui/a/b;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$b$WHFnrJfuGmZqBGweUM2BoBaLPoM (com.gaia.ngallery.ui.a.-$$Lambda$b$WHFnrJfuGmZqBGweUM2BoBaLPoM)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$b$WHFnrJfuGmZqBGweUM2BoBaLPoM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/b;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$WHFnrJfuGmZqBGweUM2BoBaLPoM;->f$0:Lcom/gaia/ngallery/ui/a/b;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$WHFnrJfuGmZqBGweUM2BoBaLPoM;->f$0:Lcom/gaia/ngallery/ui/a/b;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/b;->lambda$WHFnrJfuGmZqBGweUM2BoBaLPoM(Lcom/gaia/ngallery/ui/a/b;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$b$Z9IfMxo341M4ZuFRe7LLdBAAi_4 (com.gaia.ngallery.ui.a.-$$Lambda$b$Z9IfMxo341M4ZuFRe7LLdBAAi_4)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$b$Z9IfMxo341M4ZuFRe7LLdBAAi_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$b;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/b;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$Z9IfMxo341M4ZuFRe7LLdBAAi_4;->f$0:Lcom/gaia/ngallery/ui/a/b;

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskStart()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$Z9IfMxo341M4ZuFRe7LLdBAAi_4;->f$0:Lcom/gaia/ngallery/ui/a/b;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/b;->lambda$Z9IfMxo341M4ZuFRe7LLdBAAi_4(Lcom/gaia/ngallery/ui/a/b;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$b$s_RnEOL4rotAPol8QShCSdlYhtE (com.gaia.ngallery.ui.a.-$$Lambda$b$s_RnEOL4rotAPol8QShCSdlYhtE)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$b$s_RnEOL4rotAPol8QShCSdlYhtE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$c;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/b;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$s_RnEOL4rotAPol8QShCSdlYhtE;->f$0:Lcom/gaia/ngallery/ui/a/b;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$b$s_RnEOL4rotAPol8QShCSdlYhtE;->f$0:Lcom/gaia/ngallery/ui/a/b;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/b;->lambda$s_RnEOL4rotAPol8QShCSdlYhtE(Lcom/gaia/ngallery/ui/a/b;)V

    return-void
.end method
