###### Class com.gaia.ngallery.ui.a.d (com.gaia.ngallery.ui.a.d)
.class public Lcom/gaia/ngallery/ui/a/d;
.super Lcom/prism/commons/a/b;
.source "MoveToTrashAction.java"


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
.field private a:Lcom/gaia/ngallery/ui/a/c;

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

    .line 24
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/d;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/d;)V
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/d;->b()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/a/d;Landroid/app/Activity;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/d;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .registers 5

    .line 55
    new-instance v0, Lcom/gaia/ngallery/ui/a/c;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/d;->b:Ljava/util/List;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaia/ngallery/e;->e()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gaia/ngallery/ui/a/c;-><init>(Ljava/util/List;Ljava/io/File;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/a/d;->a:Lcom/gaia/ngallery/ui/a/c;

    .line 56
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/d;->a:Lcom/gaia/ngallery/ui/a/c;

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$TaboHQMm-dHt2XKB5T5UZm07V8o;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$TaboHQMm-dHt2XKB5T5UZm07V8o;-><init>(Lcom/gaia/ngallery/ui/a/d;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 57
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/d;->a:Lcom/gaia/ngallery/ui/a/c;

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$y6a-yBnKA3m6SdA_4_shWoDqU-0;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$y6a-yBnKA3m6SdA_4_shWoDqU-0;-><init>(Lcom/gaia/ngallery/ui/a/d;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 58
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/d;->a:Lcom/gaia/ngallery/ui/a/c;

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$LyEINM4Wk_CDrJooNluwsjizo5A;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$LyEINM4Wk_CDrJooNluwsjizo5A;-><init>(Lcom/gaia/ngallery/ui/a/d;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/prism/commons/a/a$c;)Lcom/prism/commons/a/a;

    .line 59
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/d;->a:Lcom/gaia/ngallery/ui/a/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/a/d;)V
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/d;->c()V

    return-void
.end method

.method public static synthetic lambda$LyEINM4Wk_CDrJooNluwsjizo5A(Lcom/gaia/ngallery/ui/a/d;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->b()V

    return-void
.end method

.method public static synthetic lambda$TaboHQMm-dHt2XKB5T5UZm07V8o(Lcom/gaia/ngallery/ui/a/d;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/prism/commons/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$y6a-yBnKA3m6SdA_4_shWoDqU-0(Lcom/gaia/ngallery/ui/a/d;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/prism/commons/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 8

    .line 31
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_title_movetotrash:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gaia/ngallery/ui/a/d;->b:Ljava/util/List;

    .line 32
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

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_content_movetotrash:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/a/d;->b:Ljava/util/List;

    .line 33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_button_positive_movetotrash:I

    new-instance v2, Lcom/gaia/ngallery/ui/a/d$2;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/ui/a/d$2;-><init>(Lcom/gaia/ngallery/ui/a/d;Landroid/app/Activity;)V

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->cancel:I

    new-instance v2, Lcom/gaia/ngallery/ui/a/d$1;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/a/d$1;-><init>(Lcom/gaia/ngallery/ui/a/d;)V

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/l;->a(Landroid/content/Context;Landroid/support/v7/app/AlertDialog;)V

    .line 51
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.d.AnonymousClass1 (com.gaia.ngallery.ui.a.d$1)
.class Lcom/gaia/ngallery/ui/a/d$1;
.super Ljava/lang/Object;
.source "MoveToTrashAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/d;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/a/d;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/d;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/d$1;->a:Lcom/gaia/ngallery/ui/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 45
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 46
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/d$1;->a:Lcom/gaia/ngallery/ui/a/d;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/a/d;->a(Lcom/gaia/ngallery/ui/a/d;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.d.AnonymousClass2 (com.gaia.ngallery.ui.a.d$2)
.class Lcom/gaia/ngallery/ui/a/d$2;
.super Ljava/lang/Object;
.source "MoveToTrashAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/d;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/gaia/ngallery/ui/a/d;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/d;Landroid/app/Activity;)V
    .registers 3

    .line 34
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/d$2;->b:Lcom/gaia/ngallery/ui/a/d;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/d$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 37
    iget-object p2, p0, Lcom/gaia/ngallery/ui/a/d$2;->b:Lcom/gaia/ngallery/ui/a/d;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/a/d;->b(Lcom/gaia/ngallery/ui/a/d;)V

    .line 38
    iget-object p2, p0, Lcom/gaia/ngallery/ui/a/d$2;->b:Lcom/gaia/ngallery/ui/a/d;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/d$2;->a:Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/gaia/ngallery/ui/a/d;->a(Lcom/gaia/ngallery/ui/a/d;Landroid/app/Activity;)V

    .line 39
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$d$LyEINM4Wk_CDrJooNluwsjizo5A (com.gaia.ngallery.ui.a.-$$Lambda$d$LyEINM4Wk_CDrJooNluwsjizo5A)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$d$LyEINM4Wk_CDrJooNluwsjizo5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$c;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/d;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$LyEINM4Wk_CDrJooNluwsjizo5A;->f$0:Lcom/gaia/ngallery/ui/a/d;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$LyEINM4Wk_CDrJooNluwsjizo5A;->f$0:Lcom/gaia/ngallery/ui/a/d;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/d;->lambda$LyEINM4Wk_CDrJooNluwsjizo5A(Lcom/gaia/ngallery/ui/a/d;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$d$TaboHQMmdHt2XKB5T5UZm07V8o (com.gaia.ngallery.ui.a.-$$Lambda$d$TaboHQMm-dHt2XKB5T5UZm07V8o)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$d$TaboHQMm-dHt2XKB5T5UZm07V8o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/d;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$TaboHQMm-dHt2XKB5T5UZm07V8o;->f$0:Lcom/gaia/ngallery/ui/a/d;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$TaboHQMm-dHt2XKB5T5UZm07V8o;->f$0:Lcom/gaia/ngallery/ui/a/d;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/d;->lambda$TaboHQMm-dHt2XKB5T5UZm07V8o(Lcom/gaia/ngallery/ui/a/d;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$d$y6ayBnKA3m6SdA_4_shWoDqU0 (com.gaia.ngallery.ui.a.-$$Lambda$d$y6a-yBnKA3m6SdA_4_shWoDqU-0)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$d$y6a-yBnKA3m6SdA_4_shWoDqU-0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/d;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$y6a-yBnKA3m6SdA_4_shWoDqU-0;->f$0:Lcom/gaia/ngallery/ui/a/d;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$d$y6a-yBnKA3m6SdA_4_shWoDqU-0;->f$0:Lcom/gaia/ngallery/ui/a/d;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/d;->lambda$y6a-yBnKA3m6SdA_4_shWoDqU-0(Lcom/gaia/ngallery/ui/a/d;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
