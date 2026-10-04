###### Class com.gaia.ngallery.ui.widget.photoview.CustomTagedImageView (com.gaia.ngallery.ui.widget.photoview.CustomTagedImageView)
.class public Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "CustomTagedImageView.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/photoview/b;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCustomTag()Ljava/lang/Object;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedImageView;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public setCustomTag(Ljava/lang/Object;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedImageView;->a:Ljava/lang/Object;

    return-void
.end method
