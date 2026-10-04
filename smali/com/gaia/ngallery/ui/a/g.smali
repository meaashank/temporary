###### Class com.gaia.ngallery.ui.a.g (com.gaia.ngallery.ui.a.g)
.class public Lcom/gaia/ngallery/ui/a/g;
.super Lcom/prism/commons/a/b;
.source "RemoveAlbumAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 41
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/g;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 43
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/gaia/ngallery/ui/a/g;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/b/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/g;->a(Ljava/lang/Object;)V

    goto :goto_31

    .line 46
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FileUtils delete return false : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gaia/ngallery/ui/a/g;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/gaia/ngallery/ui/a/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_31
    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 38
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/g;->b()V

    return-void
.end method

.method public static synthetic lambda$VdVp7-dRevH6mDoQYo_xTRhwhTU(Lcom/gaia/ngallery/ui/a/g;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/g;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$a9uiNL1XfP6u_uXF2yky4uyIEbU(Lcom/gaia/ngallery/ui/a/g;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/g;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 8

    .line 32
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/g;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/g;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 33
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/g;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 35
    :cond_11
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    sget v1, Lcom/gaia/ngallery/i$n;->delete_album:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/gaia/ngallery/ui/a/g;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 37
    sget p1, Lcom/gaia/ngallery/i$n;->check_user_sure_delete_album:I

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 38
    sget p1, Lcom/gaia/ngallery/i$n;->cancel:I

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$g$VdVp7-dRevH6mDoQYo_xTRhwhTU;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$g$VdVp7-dRevH6mDoQYo_xTRhwhTU;-><init>(Lcom/gaia/ngallery/ui/a/g;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39
    sget p1, Lcom/gaia/ngallery/i$n;->confirm:I

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$g$a9uiNL1XfP6u_uXF2yky4uyIEbU;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$g$a9uiNL1XfP6u_uXF2yky4uyIEbU;-><init>(Lcom/gaia/ngallery/ui/a/g;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/g;->b:Landroid/app/Dialog;

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$g$VdVp7dRevH6mDoQYo_xTRhwhTU (com.gaia.ngallery.ui.a.-$$Lambda$g$VdVp7-dRevH6mDoQYo_xTRhwhTU)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$g$VdVp7-dRevH6mDoQYo_xTRhwhTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/g;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$g$VdVp7-dRevH6mDoQYo_xTRhwhTU;->f$0:Lcom/gaia/ngallery/ui/a/g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$g$VdVp7-dRevH6mDoQYo_xTRhwhTU;->f$0:Lcom/gaia/ngallery/ui/a/g;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/g;->lambda$VdVp7-dRevH6mDoQYo_xTRhwhTU(Lcom/gaia/ngallery/ui/a/g;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$g$a9uiNL1XfP6u_uXF2yky4uyIEbU (com.gaia.ngallery.ui.a.-$$Lambda$g$a9uiNL1XfP6u_uXF2yky4uyIEbU)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$g$a9uiNL1XfP6u_uXF2yky4uyIEbU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/g;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$g$a9uiNL1XfP6u_uXF2yky4uyIEbU;->f$0:Lcom/gaia/ngallery/ui/a/g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$g$a9uiNL1XfP6u_uXF2yky4uyIEbU;->f$0:Lcom/gaia/ngallery/ui/a/g;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/g;->lambda$a9uiNL1XfP6u_uXF2yky4uyIEbU(Lcom/gaia/ngallery/ui/a/g;Landroid/content/DialogInterface;I)V

    return-void
.end method
