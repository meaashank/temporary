###### Class com.gaia.ngallery.ui.a.a (com.gaia.ngallery.ui.a.a)
.class public Lcom/gaia/ngallery/ui/a/a;
.super Lcom/prism/commons/a/b;
.source "ExportAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/k/c;",
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

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/gaia/ngallery/ui/a/a;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/a;->b:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 78
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/a;->b(Landroid/app/Activity;)Lcom/gaia/ngallery/ui/a/l;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/gaia/ngallery/ui/a/l;->a(Landroid/app/Activity;)V

    .line 79
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    .line 96
    invoke-virtual {p0, p2, p3}, Lcom/gaia/ngallery/ui/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/k/c;",
            ">;)V"
        }
    .end annotation

    const v0, 0x1020002

    .line 43
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    sget-object v2, Lcom/gaia/ngallery/ui/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showssSnackbar view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v2, Lcom/gaia/ngallery/i$n;->dialog_content_export_success:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/e;->g()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    .line 47
    invoke-static {v0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 48
    sget p2, Lcom/gaia/ngallery/i$n;->str_dismiss:I

    new-instance v0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 51
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 9

    .line 56
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_title_export_fail:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_content_export_fail:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/a/a;->b:Ljava/util/List;

    .line 58
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/gaia/ngallery/ui/a/a;->c:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->confirm:I

    new-instance v2, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI;

    invoke-direct {v2, p0, p2}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI;-><init>(Lcom/gaia/ngallery/ui/a/a;Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    .line 65
    invoke-static {p1, p2}, Lcom/gaia/ngallery/l/l;->a(Landroid/content/Context;Landroid/support/v7/app/AlertDialog;)V

    .line 66
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 83
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/a;->b()V

    return-void
.end method

.method private static synthetic a(Landroid/support/design/widget/Snackbar;Landroid/view/View;)V
    .registers 2

    .line 49
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 61
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)Lcom/gaia/ngallery/ui/a/l;
    .registers 6

    .line 91
    new-instance v0, Lcom/gaia/ngallery/ui/a/l;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/a/a;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/gaia/ngallery/ui/a/l;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    .line 92
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$9ocZidn6DJEUH1r7s68Lm_H5qm8;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$9ocZidn6DJEUH1r7s68Lm_H5qm8;-><init>(Lcom/gaia/ngallery/ui/a/a;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$b;)Lcom/prism/commons/a/a;

    .line 93
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$aKTuqQ6x24P78GvRSBxRAn0KcA8;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$aKTuqQ6x24P78GvRSBxRAn0KcA8;-><init>(Lcom/gaia/ngallery/ui/a/a;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$a;)Lcom/prism/commons/a/a;

    .line 94
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$4uUhUOJfg0vs5bQULxNgJed18yM;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$4uUhUOJfg0vs5bQULxNgJed18yM;-><init>(Lcom/gaia/ngallery/ui/a/a;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$c;)Lcom/prism/commons/a/a;

    .line 95
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM;-><init>(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 99
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$o2fcz3hiuKQ-RfgWY1BsZqBbuXA;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$o2fcz3hiuKQ-RfgWY1BsZqBbuXA;-><init>(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    return-object v0
.end method

.method private synthetic b(Landroid/app/Activity;Ljava/util/List;)V
    .registers 3

    .line 100
    invoke-virtual {p0, p2}, Lcom/gaia/ngallery/ui/a/a;->a(Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$4uUhUOJfg0vs5bQULxNgJed18yM(Lcom/gaia/ngallery/ui/a/a;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->b()V

    return-void
.end method

.method public static synthetic lambda$9ocZidn6DJEUH1r7s68Lm_H5qm8(Lcom/gaia/ngallery/ui/a/a;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->c()V

    return-void
.end method

.method public static synthetic lambda$AAy05sIeuecNC5pb46T0exqSBMg(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/a/a;->a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o(Landroid/support/design/widget/Snackbar;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/ui/a/a;->a(Landroid/support/design/widget/Snackbar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$JgV91_Xa6hXp9vkHQct9CmXClDI(Lcom/gaia/ngallery/ui/a/a;Ljava/lang/Throwable;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/a/a;->a(Ljava/lang/Throwable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$aKTuqQ6x24P78GvRSBxRAn0KcA8(Lcom/gaia/ngallery/ui/a/a;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->d()V

    return-void
.end method

.method public static synthetic lambda$eP8IlHx6heVcNCU63A6B2FbSmoM(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/a/a;->a(Landroid/app/Activity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$jTw42VVkuu1vE0SUGNxnHjorIgg(Lcom/gaia/ngallery/ui/a/a;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$o2fcz3hiuKQ-RfgWY1BsZqBbuXA(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->b(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 74
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/gaia/ngallery/i$n;->export_gallery_dialog_title:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->export_gallery_dialog_message:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->confirm:I

    new-instance v2, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg;-><init>(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;)V

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$n;->cancel:I

    new-instance v2, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$jTw42VVkuu1vE0SUGNxnHjorIgg;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$jTw42VVkuu1vE0SUGNxnHjorIgg;-><init>(Lcom/gaia/ngallery/ui/a/a;)V

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/l;->a(Landroid/content/Context;Landroid/support/v7/app/AlertDialog;)V

    .line 87
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$4uUhUOJfg0vs5bQULxNgJed18yM (com.gaia.ngallery.ui.a.-$$Lambda$a$4uUhUOJfg0vs5bQULxNgJed18yM)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$4uUhUOJfg0vs5bQULxNgJed18yM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$c;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/a;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$4uUhUOJfg0vs5bQULxNgJed18yM;->f$0:Lcom/gaia/ngallery/ui/a/a;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$4uUhUOJfg0vs5bQULxNgJed18yM;->f$0:Lcom/gaia/ngallery/ui/a/a;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/a;->lambda$4uUhUOJfg0vs5bQULxNgJed18yM(Lcom/gaia/ngallery/ui/a/a;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$9ocZidn6DJEUH1r7s68Lm_H5qm8 (com.gaia.ngallery.ui.a.-$$Lambda$a$9ocZidn6DJEUH1r7s68Lm_H5qm8)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$9ocZidn6DJEUH1r7s68Lm_H5qm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$b;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/a;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$9ocZidn6DJEUH1r7s68Lm_H5qm8;->f$0:Lcom/gaia/ngallery/ui/a/a;

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskStart()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$9ocZidn6DJEUH1r7s68Lm_H5qm8;->f$0:Lcom/gaia/ngallery/ui/a/a;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/a;->lambda$9ocZidn6DJEUH1r7s68Lm_H5qm8(Lcom/gaia/ngallery/ui/a/a;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg (com.gaia.ngallery.ui.a.-$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/a;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg;->f$0:Lcom/gaia/ngallery/ui/a/a;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg;->f$0:Lcom/gaia/ngallery/ui/a/a;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$AAy05sIeuecNC5pb46T0exqSBMg;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->lambda$AAy05sIeuecNC5pb46T0exqSBMg(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o (com.gaia.ngallery.ui.a.-$$Lambda$a$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method public synthetic constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o;->f$0:Landroid/support/design/widget/Snackbar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o;->f$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/a;->lambda$Eu6iI1Qxn9mOTZ1uEueQx31Ol5o(Landroid/support/design/widget/Snackbar;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI (com.gaia.ngallery.ui.a.-$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/a;

.field private final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/a;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI;->f$0:Lcom/gaia/ngallery/ui/a/a;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI;->f$0:Lcom/gaia/ngallery/ui/a/a;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$JgV91_Xa6hXp9vkHQct9CmXClDI;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->lambda$JgV91_Xa6hXp9vkHQct9CmXClDI(Lcom/gaia/ngallery/ui/a/a;Ljava/lang/Throwable;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$aKTuqQ6x24P78GvRSBxRAn0KcA8 (com.gaia.ngallery.ui.a.-$$Lambda$a$aKTuqQ6x24P78GvRSBxRAn0KcA8)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$aKTuqQ6x24P78GvRSBxRAn0KcA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/a;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$aKTuqQ6x24P78GvRSBxRAn0KcA8;->f$0:Lcom/gaia/ngallery/ui/a/a;

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskComplete()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$aKTuqQ6x24P78GvRSBxRAn0KcA8;->f$0:Lcom/gaia/ngallery/ui/a/a;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/a;->lambda$aKTuqQ6x24P78GvRSBxRAn0KcA8(Lcom/gaia/ngallery/ui/a/a;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM (com.gaia.ngallery.ui.a.-$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/a;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM;->f$0:Lcom/gaia/ngallery/ui/a/a;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM;->f$0:Lcom/gaia/ngallery/ui/a/a;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$eP8IlHx6heVcNCU63A6B2FbSmoM;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->lambda$eP8IlHx6heVcNCU63A6B2FbSmoM(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$jTw42VVkuu1vE0SUGNxnHjorIgg (com.gaia.ngallery.ui.a.-$$Lambda$a$jTw42VVkuu1vE0SUGNxnHjorIgg)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$jTw42VVkuu1vE0SUGNxnHjorIgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/a;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$jTw42VVkuu1vE0SUGNxnHjorIgg;->f$0:Lcom/gaia/ngallery/ui/a/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$jTw42VVkuu1vE0SUGNxnHjorIgg;->f$0:Lcom/gaia/ngallery/ui/a/a;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/a;->lambda$jTw42VVkuu1vE0SUGNxnHjorIgg(Lcom/gaia/ngallery/ui/a/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$a$o2fcz3hiuKQRfgWY1BsZqBbuXA (com.gaia.ngallery.ui.a.-$$Lambda$a$o2fcz3hiuKQ-RfgWY1BsZqBbuXA)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$a$o2fcz3hiuKQ-RfgWY1BsZqBbuXA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/a;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$o2fcz3hiuKQ-RfgWY1BsZqBbuXA;->f$0:Lcom/gaia/ngallery/ui/a/a;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$o2fcz3hiuKQ-RfgWY1BsZqBbuXA;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$o2fcz3hiuKQ-RfgWY1BsZqBbuXA;->f$0:Lcom/gaia/ngallery/ui/a/a;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$a$o2fcz3hiuKQ-RfgWY1BsZqBbuXA;->f$1:Landroid/app/Activity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/a/a;->lambda$o2fcz3hiuKQ-RfgWY1BsZqBbuXA(Lcom/gaia/ngallery/ui/a/a;Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method
