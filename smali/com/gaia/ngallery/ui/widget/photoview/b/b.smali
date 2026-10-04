###### Class com.gaia.ngallery.ui.widget.photoview.b.b (com.gaia.ngallery.ui.widget.photoview.b.b)
.class public Lcom/gaia/ngallery/ui/widget/photoview/b/b;
.super Lcom/gaia/ngallery/ui/widget/photoview/b/a;
.source "IcsScroller.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/b/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/b;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method
