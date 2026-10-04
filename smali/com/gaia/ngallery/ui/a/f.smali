###### Class com.gaia.ngallery.ui.a.f (com.gaia.ngallery.ui.a.f)
.class public Lcom/gaia/ngallery/ui/a/f;
.super Ljava/lang/Object;
.source "NewAlbumDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/a/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/ui/a/f$a;)V
    .registers 12

    .line 25
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$k;->layout_new_album_dialog:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    sget v1, Lcom/gaia/ngallery/i$h;->new_album_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/TextInputEditText;

    if-eqz p2, :cond_1a

    .line 28
    invoke-virtual {v3, p2}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_1a
    sget p2, Lcom/gaia/ngallery/i$h;->new_album_textinput_layout:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/support/design/widget/TextInputLayout;

    .line 30
    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/gaia/ngallery/i$n;->confirm:I

    new-instance v0, Lcom/gaia/ngallery/ui/a/f$2;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/a/f$2;-><init>()V

    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/gaia/ngallery/i$n;->cancel:I

    new-instance v0, Lcom/gaia/ngallery/ui/a/f$1;

    invoke-direct {v0, p3}, Lcom/gaia/ngallery/ui/a/f$1;-><init>(Lcom/gaia/ngallery/ui/a/f$a;)V

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 48
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    .line 50
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    const/4 p1, -0x1

    .line 51
    invoke-virtual {v7, p1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/gaia/ngallery/ui/a/f$3;

    move-object v2, p2

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/gaia/ngallery/ui/a/f$3;-><init>(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Landroid/content/Context;Lcom/gaia/ngallery/ui/a/f$a;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.f.AnonymousClass1 (com.gaia.ngallery.ui.a.f$1)
.class final Lcom/gaia/ngallery/ui/a/f$1;
.super Ljava/lang/Object;
.source "NewAlbumDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/ui/a/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/a/f$a;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/a/f$a;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/f$1;->a:Lcom/gaia/ngallery/ui/a/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/f$1;->a:Lcom/gaia/ngallery/ui/a/f$a;

    invoke-interface {p1}, Lcom/gaia/ngallery/ui/a/f$a;->a()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.f.AnonymousClass2 (com.gaia.ngallery.ui.a.f$2)
.class final Lcom/gaia/ngallery/ui/a/f$2;
.super Ljava/lang/Object;
.source "NewAlbumDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/ui/a/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.f.AnonymousClass3 (com.gaia.ngallery.ui.a.f$3)
.class final Lcom/gaia/ngallery/ui/a/f$3;
.super Ljava/lang/Object;
.source "NewAlbumDialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/ui/a/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TextInputEditText;

.field final synthetic b:Landroid/support/design/widget/TextInputLayout;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/gaia/ngallery/ui/a/f$a;

.field final synthetic e:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputEditText;Landroid/support/design/widget/TextInputLayout;Landroid/content/Context;Lcom/gaia/ngallery/ui/a/f$a;Landroid/support/v7/app/AlertDialog;)V
    .registers 6

    .line 51
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/f$3;->a:Landroid/support/design/widget/TextInputEditText;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/f$3;->b:Landroid/support/design/widget/TextInputLayout;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/a/f$3;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/gaia/ngallery/ui/a/f$3;->d:Lcom/gaia/ngallery/ui/a/f$a;

    iput-object p5, p0, Lcom/gaia/ngallery/ui/a/f$3;->e:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 54
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/f$3;->a:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_49

    .line 59
    :cond_13
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 61
    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/f$3;->b:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/f$3;->c:Landroid/content/Context;

    sget v2, Lcom/gaia/ngallery/i$n;->dialog_error_album_name_exist:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_56

    .line 63
    :cond_3a
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/f$3;->d:Lcom/gaia/ngallery/ui/a/f$a;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/ui/a/f$a;->a(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/f$3;->e:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_56

    .line 57
    :cond_49
    :goto_49
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/f$3;->b:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/f$3;->c:Landroid/content/Context;

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_error_album_name_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_56
    return-void
.end method

###### Class com.gaia.ngallery.ui.a.f.a (com.gaia.ngallery.ui.a.f$a)
.class public interface abstract Lcom/gaia/ngallery/ui/a/f$a;
.super Ljava/lang/Object;
.source "NewAlbumDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method
