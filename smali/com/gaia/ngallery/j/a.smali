###### Class com.gaia.ngallery.j.a (com.gaia.ngallery.j.a)
.class public Lcom/gaia/ngallery/j/a;
.super Ljava/lang/Object;
.source "FloatingPlayerDelegate.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

.field private d:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/gaia/ngallery/j/a;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/j/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/gaia/ngallery/j/a;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/j/a;)Landroid/app/Activity;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/gaia/ngallery/j/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/gaia/ngallery/j/a;)Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/gaia/ngallery/j/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .registers 4

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setUseController(Z)V

    const/4 v1, 0x4

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setResizeMode(I)V

    .line 78
    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->removeAllViewsInLayout()V

    .line 79
    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/gaia/ngallery/j/a;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->b:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/gaia/ngallery/i$k;->layout_floating_player:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    sget v1, Lcom/gaia/ngallery/i$h;->floating_dock_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    iput-object v0, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    .line 45
    iget-object v0, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->b:Landroid/app/Activity;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 47
    iget-object v0, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->b:Landroid/app/Activity;

    const v2, 0x106000c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setBackgroundColor(I)V

    .line 48
    iget-object v0, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    new-instance v1, Lcom/gaia/ngallery/j/a$1;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/j/a$1;-><init>(Lcom/gaia/ngallery/j/a;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a()V

    return-void
.end method

.method public b()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/gaia/ngallery/j/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gaia/ngallery/j/b;->a(Landroid/content/Context;)Lcom/gaia/ngallery/j/b;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/gaia/ngallery/j/b;->d()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 62
    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a()V

    .line 64
    invoke-direct {p0}, Lcom/gaia/ngallery/j/a;->d()Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    move-result-object v1

    iput-object v1, p0, Lcom/gaia/ngallery/j/a;->d:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .line 65
    iget-object v1, p0, Lcom/gaia/ngallery/j/a;->d:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/j/b;->a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    goto :goto_2a

    .line 67
    :cond_23
    iget-object v0, p0, Lcom/gaia/ngallery/j/a;->c:Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setVisibility(I)V

    :goto_2a
    return-void
.end method

###### Class com.gaia.ngallery.j.a.AnonymousClass1 (com.gaia.ngallery.j.a$1)
.class Lcom/gaia/ngallery/j/a$1;
.super Ljava/lang/Object;
.source "FloatingPlayerDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/j/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/j/a;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/j/a;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/gaia/ngallery/j/a$1;->a:Lcom/gaia/ngallery/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 51
    invoke-static {}, Lcom/gaia/ngallery/j/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "layout onclick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/gaia/ngallery/j/a$1;->a:Lcom/gaia/ngallery/j/a;

    invoke-static {p1}, Lcom/gaia/ngallery/j/a;->a(Lcom/gaia/ngallery/j/a;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/j/a$1;->a:Lcom/gaia/ngallery/j/a;

    invoke-static {v0}, Lcom/gaia/ngallery/j/a;->b(Lcom/gaia/ngallery/j/a;)Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Landroid/content/Context;Landroid/view/View;Lcom/gaia/ngallery/model/AlbumFile;I)V

    return-void
.end method
