###### Class com.gaia.ngallery.ui.VideoPlayActivity (com.gaia.ngallery.ui.VideoPlayActivity)
.class public Lcom/gaia/ngallery/ui/VideoPlayActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/VideoPlayActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "PLAY_ALBUM_FILE"

.field public static final b:Ljava/lang/String; = "EXTRA_KEY_PLAYER_ORIENTATION"

.field private static final c:Ljava/lang/String;

.field private static final d:J = 0xea60L

.field private static final o:I = 0xc8


# instance fields
.field private e:Lcom/gaia/ngallery/j/b;

.field private f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

.field private g:Landroid/support/v7/widget/Toolbar;

.field private h:Z

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private p:Z

.field private q:Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

.field private r:Landroid/view/View$OnTouchListener;

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->p:Z

    .line 307
    new-instance v0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;-><init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->r:Landroid/view/View$OnTouchListener;

    .line 411
    new-instance v0, Lcom/gaia/ngallery/ui/VideoPlayActivity$5;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity$5;-><init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->s:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/VideoPlayActivity;Lcom/gaia/ngallery/ui/VideoPlayActivity$a;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->q:Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .registers 9

    .line 421
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/32 v1, 0x36ee80

    .line 423
    div-long v3, p1, v1

    long-to-int v3, v3

    .line 424
    rem-long/2addr p1, v1

    const-wide/32 v1, 0xea60

    div-long v4, p1, v1

    long-to-int v4, v4

    .line 425
    rem-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-lez v3, :cond_31

    const-string v2, "%02d"

    .line 428
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, p2

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_31
    const-string v2, "%02d"

    .line 431
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "%02d"

    .line 433
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/VideoPlayActivity;J)Ljava/lang/String;
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 168
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_27

    .line 171
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_26

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_26
    return-object p1

    :cond_27
    return-object p1
.end method

.method private a(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 143
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getRequestedOrientation()I

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->setRequestedOrientation(I)V

    goto :goto_22

    :cond_e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1b

    .line 147
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getRequestedOrientation()I

    move-result p1

    if-eq p1, v0, :cond_22

    .line 148
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->setRequestedOrientation(I)V

    goto :goto_22

    .line 152
    :cond_1b
    sget-object p1, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    const-string v0, "no EXTRA_KEY_PLAYER_ORIENTATION found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/gaia/ngallery/model/AlbumFile;I)V
    .registers 7

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_13

    const-string v1, "PLAY_ALBUM_FILE"

    .line 451
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "EXTRA_KEY_PLAYER_ORIENTATION"

    .line 452
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    :cond_13
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_39

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 460
    invoke-static {p1, p2, p3, v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p1

    .line 462
    invoke-virtual {p1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3c

    .line 464
    :cond_39
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_3c
    return-void
.end method

.method private a(Lcom/gaia/ngallery/model/AlbumFile;IZ)V
    .registers 6

    const/4 v0, 0x1

    .line 275
    :try_start_1
    sget v1, Lcom/gaia/ngallery/i$h;->player_view:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iput-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    if-eqz p3, :cond_12

    .line 277
    iget-object p3, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    invoke-virtual {p3, p0, p1, p2}, Lcom/gaia/ngallery/j/b;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;I)V

    .line 278
    :cond_12
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    new-instance p2, Lcom/gaia/ngallery/ui/VideoPlayActivity$3;

    invoke-direct {p2, p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity$3;-><init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 295
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setKeepScreenOn(Z)V

    .line 296
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/j/b;->a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    .line 299
    sget-object p1, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCreate VideoSurfaceView(:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4c

    goto :goto_61

    :catch_4c
    move-exception p1

    .line 301
    sget-object p2, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    const-string p3, "loadGalleryAsync exoplayer exception"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    sget p1, Lcom/gaia/ngallery/i$n;->video_unavailable:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_61
    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/VideoPlayActivity;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/support/v7/widget/Toolbar;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->g:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method private b()V
    .registers 5

    .line 127
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_a

    .line 128
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->d()V

    goto :goto_1d

    :cond_a
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->p:Z

    const/4 v0, 0x2

    .line 131
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/gaia/ngallery/ui/VideoPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity$1;-><init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1d
    return-void
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->q:Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    return-object p0
.end method

.method private c()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    invoke-virtual {v0}, Lcom/gaia/ngallery/j/b;->b()V

    :cond_9
    return-void
.end method

.method private d()V
    .registers 7

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c0

    .line 225
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    .line 227
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getWidth()I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getHeight()I

    move-result v1

    const/16 v2, 0x50

    .line 229
    invoke-static {p0, v2}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 230
    invoke-static {p0, v2}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 233
    invoke-static {p0}, Lcom/gaia/ngallery/ui/layout/a;->a(Landroid/content/Context;)Landroid/graphics/PointF;

    move-result-object v1

    .line 234
    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Lcom/prism/commons/f/d;->c(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/PointF;->y:F

    .line 235
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_4d

    .line 236
    invoke-static {p0}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v3

    .line 238
    new-instance v3, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v1, v3

    .line 240
    :cond_4d
    sget-object v3, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topoint x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " xScale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " yScale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPivotX(F)V

    .line 242
    iget-object v3, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPivotY(F)V

    .line 243
    iget-object v3, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/VideoPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity$2;-><init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_c3

    .line 258
    :cond_c0
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->finish()V

    :goto_c3
    return-void
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e()V

    return-void
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/j/b;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    return-object p0
.end method

.method private e()V
    .registers 4

    .line 439
    sget-object v0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "togglePlayerControls isPlayControlsVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->h:Z

    if-eqz v0, :cond_22

    .line 441
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    goto :goto_27

    .line 443
    :cond_22
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->showController()V

    :goto_27
    return-void
.end method

.method static synthetic f(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/TextView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->i:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic i(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic j(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/TextView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->d()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 266
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 267
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 64
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 72
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    if-nez p1, :cond_16

    .line 73
    invoke-static {p0}, Lcom/gaia/ngallery/j/b;->a(Landroid/content/Context;)Lcom/gaia/ngallery/j/b;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    .line 74
    :cond_16
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "PLAY_ALBUM_FILE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_51

    .line 75
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gaia/ngallery/g/g;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 76
    sget-object v2, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/gaia/ngallery/l/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->finish()V

    .line 79
    :cond_51
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_KEY_PLAYER_ORIENTATION"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    sget-object v3, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate albumFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " videoOrientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_9a

    .line 84
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    invoke-virtual {p1}, Lcom/gaia/ngallery/j/b;->d()Z

    move-result p1

    if-eqz p1, :cond_92

    .line 86
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    invoke-virtual {p1}, Lcom/gaia/ngallery/j/b;->c()Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object p1

    .line 87
    iget-object v2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e:Lcom/gaia/ngallery/j/b;

    invoke-virtual {v2}, Lcom/gaia/ngallery/j/b;->a()I

    move-result v2

    const/4 v3, 0x0

    goto :goto_9b

    .line 90
    :cond_92
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no video to play"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9a
    const/4 v3, 0x1

    .line 95
    :goto_9b
    invoke-direct {p0, v2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(I)V

    .line 98
    sget v4, Lcom/gaia/ngallery/i$k;->activity_video_play:I

    invoke-virtual {p0, v4}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->setContentView(I)V

    .line 100
    sget v4, Lcom/gaia/ngallery/i$h;->toolbar:I

    invoke-virtual {p0, v4}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    iput-object v4, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->g:Landroid/support/v7/widget/Toolbar;

    .line 101
    iget-object v4, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->g:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v4}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 102
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->g:Landroid/support/v7/widget/Toolbar;

    sget v4, Lcom/gaia/ngallery/i$g;->ic_minimize:I

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 106
    sget v1, Lcom/gaia/ngallery/i$h;->player_swipe_controls:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->i:Landroid/widget/RelativeLayout;

    .line 107
    sget v1, Lcom/gaia/ngallery/i$h;->iv_fast_forward_ic:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->j:Landroid/widget/ImageView;

    .line 108
    sget v1, Lcom/gaia/ngallery/i$h;->iv_fast_rewind_ic:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->k:Landroid/widget/ImageView;

    .line 109
    sget v1, Lcom/gaia/ngallery/i$h;->tv_seek_to:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->l:Landroid/widget/TextView;

    .line 110
    sget v1, Lcom/gaia/ngallery/i$h;->tv_seek_total:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->m:Landroid/widget/TextView;

    .line 111
    sget v1, Lcom/gaia/ngallery/i$h;->player_activity_root:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->n:Landroid/view/View;

    .line 113
    invoke-direct {p0, p1, v2, v3}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/model/AlbumFile;IZ)V

    .line 114
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->p:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 204
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$l;->menu_video_player:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .registers 1

    .line 199
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_d

    .line 212
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->d()V

    goto :goto_17

    .line 213
    :cond_d
    sget v0, Lcom/gaia/ngallery/i$h;->menu_close_player:I

    if-ne p1, v0, :cond_17

    .line 214
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c()V

    .line 215
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->finish()V

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 474
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 475
    sget-object v0, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 191
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 192
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 193
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 194
    :cond_16
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/app/Activity;)Z

    return-void
.end method

###### Class com.gaia.ngallery.ui.VideoPlayActivity.AnonymousClass1 (com.gaia.ngallery.ui.VideoPlayActivity$1)
.class Lcom/gaia/ngallery/ui/VideoPlayActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/VideoPlayActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$1;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$1;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.VideoPlayActivity.AnonymousClass2 (com.gaia.ngallery.ui.VideoPlayActivity$2)
.class Lcom/gaia/ngallery/ui/VideoPlayActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/VideoPlayActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$2;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$2;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->finish()V

    .line 250
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$2;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->overridePendingTransition(II)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.VideoPlayActivity.AnonymousClass3 (com.gaia.ngallery.ui.VideoPlayActivity$3)
.class Lcom/gaia/ngallery/ui/VideoPlayActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/model/AlbumFile;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$3;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_20

    .line 283
    invoke-static {}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "controller visible"

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$3;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->b(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$3;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p1, v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/ui/VideoPlayActivity;Z)Z

    goto :goto_3c

    .line 288
    :cond_20
    invoke-static {}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "controller invisible"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$3;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->b(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 291
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$3;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p1, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/ui/VideoPlayActivity;Z)Z

    :goto_3c
    return-void
.end method

###### Class com.gaia.ngallery.ui.VideoPlayActivity.AnonymousClass4 (com.gaia.ngallery.ui.VideoPlayActivity$4)
.class Lcom/gaia/ngallery/ui/VideoPlayActivity$4;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

.field private b:J

.field private c:F

.field private d:F


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V
    .registers 4

    .line 307
    iput-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 309
    iput-wide v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->b:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 310
    iput p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->c:F

    .line 311
    iput p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->d:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 315
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 316
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 317
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_7e

    goto :goto_7c

    .line 324
    :pswitch_10
    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 325
    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a(FF)J

    goto :goto_7c

    .line 326
    :cond_22
    iget p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->c:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_7c

    .line 327
    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    new-instance v1, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    iget v3, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->c:F

    iget v4, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->d:F

    invoke-direct {v1, v2, v3, v4}, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;-><init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;FF)V

    invoke-static {p2, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/ui/VideoPlayActivity;Lcom/gaia/ngallery/ui/VideoPlayActivity$a;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    .line 328
    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a(FF)J

    goto :goto_7c

    .line 333
    :pswitch_4a
    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    move-result-object p2

    if-eqz p2, :cond_62

    .line 334
    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->b(FF)V

    .line 335
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/ui/VideoPlayActivity;Lcom/gaia/ngallery/ui/VideoPlayActivity$a;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    goto :goto_67

    .line 337
    :cond_62
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->d(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V

    :goto_67
    const-wide/16 p1, -0x1

    .line 341
    iput-wide p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->b:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 342
    iput p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->c:F

    .line 343
    iput p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->d:F

    goto :goto_7c

    .line 319
    :pswitch_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->b:J

    .line 320
    iput p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->c:F

    .line 321
    iput v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$4;->d:F

    :cond_7c
    :goto_7c
    const/4 p1, 0x1

    return p1

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_72
        :pswitch_4a
        :pswitch_10
    .end packed-switch
.end method

###### Class com.gaia.ngallery.ui.VideoPlayActivity.AnonymousClass5 (com.gaia.ngallery.ui.VideoPlayActivity$5)
.class Lcom/gaia/ngallery/ui/VideoPlayActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$5;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$5;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->c(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/ui/VideoPlayActivity$a;

    move-result-object v0

    if-nez v0, :cond_13

    .line 416
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$5;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->h(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_13
    return-void
.end method

###### Class com.gaia.ngallery.ui.VideoPlayActivity.a (com.gaia.ngallery.ui.VideoPlayActivity$a)
.class Lcom/gaia/ngallery/ui/VideoPlayActivity$a;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/VideoPlayActivity;FF)V
    .registers 6

    .line 360
    iput-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->b:F

    .line 362
    iput p3, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->c:F

    .line 363
    iput p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->d:F

    .line 364
    iput p3, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->e:F

    .line 365
    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/j/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/j/b;->e()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->f:J

    .line 366
    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->e(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/gaia/ngallery/j/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/j/b;->f()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->g:J

    .line 367
    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->f(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-wide v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->f:J

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/ui/VideoPlayActivity;J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->h(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->g(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 369
    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->h(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 370
    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->getRequestedOrientation()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4f

    .line 372
    invoke-static {p1}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->h:I

    goto :goto_55

    .line 374
    :cond_4f
    invoke-static {p1}, Lcom/prism/commons/f/d;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->h:I

    :goto_55
    return-void
.end method


# virtual methods
.method a(F)J
    .registers 4

    .line 401
    iget v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->h:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x476a6000    # 60000.0f

    mul-float p1, p1, v0

    float-to-long v0, p1

    return-wide v0
.end method

.method a(FF)J
    .registers 10

    .line 380
    iget v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->d:F

    sub-float v0, p1, v0

    .line 381
    iget v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->b:F

    sub-float v1, p1, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_22

    .line 383
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->i(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->j(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_38

    :cond_22
    cmpg-float v0, v0, v4

    if-gez v0, :cond_38

    .line 386
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->j(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->i(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    :cond_38
    :goto_38
    iget-wide v2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->g:J

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a(F)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 390
    iget-wide v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v0

    if-lez v6, :cond_4a

    .line 391
    iget-wide v2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->f:J

    goto :goto_4f

    :cond_4a
    cmp-long v0, v2, v4

    if-gez v0, :cond_4f

    move-wide v2, v4

    .line 394
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->k(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v1, v2, v3}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Lcom/gaia/ngallery/ui/VideoPlayActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iput p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->d:F

    .line 396
    iput p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->e:F

    return-wide v2
.end method

.method b(FF)V
    .registers 5

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a(FF)J

    move-result-wide p1

    .line 406
    iget-object v0, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->l(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 407
    iget-object p1, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->h(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/gaia/ngallery/ui/VideoPlayActivity$a;->a:Lcom/gaia/ngallery/ui/VideoPlayActivity;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->g(Lcom/gaia/ngallery/ui/VideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
