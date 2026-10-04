###### Class com.gaia.ngallery.ui.widget.photoview.b.a (com.gaia.ngallery.ui.widget.photoview.b.a)
.class public Lcom/gaia/ngallery/ui/widget/photoview/b/a;
.super Lcom/gaia/ngallery/ui/widget/photoview/b/d;
.source "GingerScroller.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field protected final a:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;-><init>()V

    .line 28
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/a;->a:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public a(IIIIIIIIII)V
    .registers 23

    move-object v0, p0

    .line 39
    iget-object v1, v0, Lcom/gaia/ngallery/ui/widget/photoview/b/a;->a:Landroid/widget/OverScroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/a;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/a;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/a;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/a;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/a;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method
