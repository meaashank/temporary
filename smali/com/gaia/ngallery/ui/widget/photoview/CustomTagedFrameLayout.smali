###### Class com.gaia.ngallery.ui.widget.photoview.CustomTagedFrameLayout (com.gaia.ngallery.ui.widget.photoview.CustomTagedFrameLayout)
.class public Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CustomTagedFrameLayout.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/photoview/b;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getCustomTag()Ljava/lang/Object;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedFrameLayout;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public setCustomTag(Ljava/lang/Object;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedFrameLayout;->a:Ljava/lang/Object;

    return-void
.end method
