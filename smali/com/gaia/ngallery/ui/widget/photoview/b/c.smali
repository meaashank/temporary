###### Class com.gaia.ngallery.ui.widget.photoview.b.c (com.gaia.ngallery.ui.widget.photoview.b.c)
.class public Lcom/gaia/ngallery/ui/widget/photoview/b/c;
.super Lcom/gaia/ngallery/ui/widget/photoview/b/d;
.source "PreGingerScroller.java"


# instance fields
.field private final a:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;-><init>()V

    .line 26
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/c;->a:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public a(IIIIIIIIII)V
    .registers 21

    move-object v0, p0

    .line 37
    iget-object v1, v0, Lcom/gaia/ngallery/ui/widget/photoview/b/c;->a:Landroid/widget/Scroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/c;->a:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/c;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/c;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/c;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/b/c;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method
