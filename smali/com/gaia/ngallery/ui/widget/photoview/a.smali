###### Class com.gaia.ngallery.ui.widget.photoview.a (com.gaia.ngallery.ui.widget.photoview.a)
.class public Lcom/gaia/ngallery/ui/widget/photoview/a;
.super Ljava/lang/Object;
.source "Compat.java"


# static fields
.field private static final a:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 2

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 30
    invoke-static {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_a
    const-wide/16 v0, 0x10

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_f
    return-void
.end method

.method private static b(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
