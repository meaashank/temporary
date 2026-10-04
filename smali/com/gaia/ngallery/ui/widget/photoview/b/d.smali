###### Class com.gaia.ngallery.ui.widget.photoview.b.d (com.gaia.ngallery.ui.widget.photoview.b.d)
.class public abstract Lcom/gaia/ngallery/ui/widget/photoview/b/d;
.super Ljava/lang/Object;
.source "ScrollerProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/gaia/ngallery/ui/widget/photoview/b/d;
    .registers 3

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_c

    .line 26
    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/b/c;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/b/c;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 27
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_18

    .line 28
    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/b/a;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/b/a;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 30
    :cond_18
    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/b/b;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/b/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(IIIIIIIIII)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method
