###### Class com.gaia.ngallery.ui.widget.photoview.AttacherImageView (com.gaia.ngallery.ui.widget.photoview.AttacherImageView)
.class public Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "AttacherImageView.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/photoview/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/gaia/ngallery/ui/widget/photoview/e;

.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCustomTag()Ljava/lang/Object;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getPhotoViewAttacher()Lcom/gaia/ngallery/ui/widget/photoview/e;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    return-object v0
.end method

.method public setAttacher(Lcom/gaia/ngallery/ui/widget/photoview/e;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    return-void
.end method

.method public setCustomTag(Ljava/lang/Object;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->c:Ljava/lang/Object;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_d

    .line 49
    sget-object p1, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->a:Ljava/lang/String;

    const-string v0, "setImageDrawable null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 51
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImageDrawable height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " drawable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_3f
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    if-eqz p1, :cond_48

    .line 60
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->n()V

    :cond_48
    return-void
.end method
