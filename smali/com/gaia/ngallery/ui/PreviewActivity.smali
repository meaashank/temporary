###### Class com.gaia.ngallery.ui.PreviewActivity (com.gaia.ngallery.ui.PreviewActivity)
.class public Lcom/gaia/ngallery/ui/PreviewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PreviewActivity.java"


# static fields
.field public static final a:Ljava/lang/String; = "PREVIEW_ALBUM_LIST"

.field public static final b:Ljava/lang/String; = "CURRENT_POSITION"

.field public static final c:Ljava/lang/String; = "CURRENT_DIR"

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Landroid/support/v7/widget/Toolbar;

.field private i:I

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/support/design/widget/AppBarLayout;

.field private p:Ljava/lang/String;

.field private q:Lcom/gaia/ngallery/j/a;

.field private r:Lcom/gaia/ngallery/ui/b/h;

.field private s:Landroid/view/View;

.field private t:Z

.field private u:Z

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->i:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->v:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/PreviewActivity;)Ljava/util/List;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    return-object p0
.end method

.method private synthetic a(FFF)V
    .registers 4

    .line 203
    iget-boolean p2, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->u:Z

    if-eqz p2, :cond_d

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_d

    .line 204
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->f()V

    :cond_d
    return-void
.end method

.method private a(I)V
    .registers 5

    .line 247
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPageSelected pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    .line 249
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/PreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_81

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->i:I

    if-ltz v0, :cond_81

    .line 253
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->i:I

    .line 254
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_81

    .line 256
    :try_start_65
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 257
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 258
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 260
    :cond_78
    invoke-virtual {v0}, Landroid/widget/VideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_81} :catch_81

    .line 265
    :catch_81
    :cond_81
    iput p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->i:I

    .line 267
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->g()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .registers 3

    .line 335
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    return-void
.end method

.method private a(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 5

    .line 340
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShare file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/gaia/ngallery/ui/a/k;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/ui/a/k;-><init>(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 342
    sget-object p1, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/k;->a(Lcom/prism/commons/a/a$b;)Lcom/prism/commons/a/a;

    .line 344
    sget-object p1, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/k;->a(Lcom/prism/commons/a/a$a;)Lcom/prism/commons/a/a;

    .line 346
    sget-object p1, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/k;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 350
    sget-object p1, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/k;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 354
    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/ui/a/k;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/PreviewActivity;I)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(I)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 388
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->b()V

    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->setResult(I)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .registers 3

    .line 416
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->v:Ljava/util/ArrayList;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 419
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 420
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->b()V

    goto :goto_2c

    .line 422
    :cond_1e
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 423
    iget p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(I)V

    :goto_2c
    return-void
.end method

.method private a(Z)V
    .registers 3

    .line 431
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->t:Z

    .line 432
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->g()V

    .line 433
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->r:Lcom/gaia/ngallery/ui/b/h;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/b/h;->a(Z)V

    return-void
.end method

.method private b()V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/PreviewActivity;->setResult(I)V

    goto :goto_1e

    .line 149
    :cond_d
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "KEY_EIDTOR_ITEMS"

    .line 151
    iget-object v2, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1a
    const/4 v1, -0x1

    .line 153
    invoke-virtual {p0, v1, v0}, Lcom/gaia/ngallery/ui/PreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    :goto_1e
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->finish()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .registers 3

    .line 334
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->b(Lcom/gaia/ngallery/model/AlbumFile;)V

    return-void
.end method

.method private b(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 6

    .line 358
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getRotation()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 359
    rem-int/lit8 v0, v0, 0x4

    .line 360
    sget-object v1, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRotate rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/model/AlbumFile;->setRotation(I)V

    .line 362
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 363
    iget-object v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->r:Lcom/gaia/ngallery/ui/b/h;

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/ui/b/h;->b(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3e

    .line 366
    sget-object p1, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    const-string v0, "doRotate current item view is null"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "current item view is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 369
    :cond_3e
    check-cast p1, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    .line 370
    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->getPhotoViewAttacher()Lcom/gaia/ngallery/ui/widget/photoview/e;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    .line 371
    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->g(F)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->d()V

    return-void
.end method

.method private static synthetic b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .line 348
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShare onFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic b(Ljava/util/List;)V
    .registers 3

    .line 392
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->v:Ljava/util/ArrayList;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 394
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 395
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->b()V

    goto :goto_2c

    .line 397
    :cond_1e
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 398
    iget p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(I)V

    :goto_2c
    return-void
.end method

.method private c()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 159
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_17

    .line 160
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    goto :goto_25

    .line 161
    :cond_17
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_25

    .line 162
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 165
    :cond_25
    :goto_25
    new-instance v0, Lcom/gaia/ngallery/ui/b/h;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    new-instance v2, Lcom/gaia/ngallery/ui/PreviewActivity$1;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/PreviewActivity$1;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/gaia/ngallery/ui/b/h;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/gaia/ngallery/f/c;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->r:Lcom/gaia/ngallery/ui/b/h;

    .line 201
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->r:Lcom/gaia/ngallery/ui/b/h;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$pPEn1NRjcfqEexdgo6_7mx8bi84;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$pPEn1NRjcfqEexdgo6_7mx8bi84;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/b/h;->a(Lcom/gaia/ngallery/ui/widget/photoview/e$e;)V

    .line 206
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->r:Lcom/gaia/ngallery/ui/b/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 207
    new-instance v0, Lcom/gaia/ngallery/ui/PreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/PreviewActivity$2;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    .line 214
    iget-object v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 215
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->h()V

    .line 216
    iget-object v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 217
    iget v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .registers 3

    .line 333
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->c(Lcom/gaia/ngallery/model/AlbumFile;)V

    return-void
.end method

.method private c(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 4

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance p1, Lcom/gaia/ngallery/ui/a/a;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/e;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/gaia/ngallery/ui/a/a;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ;

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/a;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 380
    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/ui/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic c(Ljava/util/List;)V
    .registers 1

    return-void
.end method

.method private d()V
    .registers 2

    .line 221
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->u:Z

    if-eqz v0, :cond_8

    .line 222
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->f()V

    goto :goto_b

    .line 224
    :cond_8
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->e()V

    :goto_b
    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .registers 3

    .line 332
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->d(Lcom/gaia/ngallery/model/AlbumFile;)V

    return-void
.end method

.method private d(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 3

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance p1, Lcom/gaia/ngallery/ui/a/c;

    invoke-direct {p1, v0}, Lcom/gaia/ngallery/ui/a/c;-><init>(Ljava/util/List;)V

    .line 387
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fV7-rsDILa0EyWJULyjiUHtEspE;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fV7-rsDILa0EyWJULyjiUHtEspE;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 391
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$_6BQ90cQxwJBR9l04oKhGfWD5BA;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$_6BQ90cQxwJBR9l04oKhGfWD5BA;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 401
    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/ui/a/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic d(Ljava/util/List;)V
    .registers 2

    .line 352
    sget-object p0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    const-string v0, "doShare onsuccess"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e()V
    .registers 6

    .line 229
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "show animation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/gaia/ngallery/l/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->o:Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/AppBarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 233
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->o:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    .line 234
    iput-boolean v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->u:Z

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .registers 3

    .line 331
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->e(Lcom/gaia/ngallery/model/AlbumFile;)V

    return-void
.end method

.method private e(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 4

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/model/AlbumFile;)Lcom/gaia/ngallery/b/a;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    .line 410
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/e;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 411
    new-instance p1, Lcom/gaia/ngallery/ui/a/h;

    invoke-direct {p1, v0}, Lcom/gaia/ngallery/ui/a/h;-><init>(Ljava/util/List;)V

    goto :goto_29

    .line 413
    :cond_24
    new-instance p1, Lcom/gaia/ngallery/ui/a/d;

    invoke-direct {p1, v0}, Lcom/gaia/ngallery/ui/a/d;-><init>(Ljava/util/List;)V

    .line 415
    :goto_29
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$NiCGEOnEeXfAa1WZJ9t77QVZHpU;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$NiCGEOnEeXfAa1WZJ9t77QVZHpU;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-interface {p1, v0}, Lcom/prism/commons/a/a;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 426
    invoke-interface {p1, p0}, Lcom/prism/commons/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private f()V
    .registers 5

    .line 238
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "hide animation"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->o:Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/AppBarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->o:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    .line 243
    iput-boolean v3, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->u:Z

    return-void
.end method

.method private g()V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    iget v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 274
    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->t:Z

    if-nez v0, :cond_1c

    .line 275
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23

    .line 277
    :cond_1c
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    return-void
.end method

.method private h()V
    .registers 7

    .line 320
    sget v0, Lcom/gaia/ngallery/i$h;->export_media:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 321
    sget v1, Lcom/gaia/ngallery/i$h;->move_media:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 322
    sget v2, Lcom/gaia/ngallery/i$h;->delete_media:I

    invoke-virtual {p0, v2}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 323
    sget v3, Lcom/gaia/ngallery/i$h;->share_media:I

    invoke-virtual {p0, v3}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 324
    sget v4, Lcom/gaia/ngallery/i$h;->rotate_media:I

    invoke-virtual {p0, v4}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->s:Landroid/view/View;

    const/4 v4, 0x1

    .line 325
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 326
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 327
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 328
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 329
    iget-object v5, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->s:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setClickable(Z)V

    .line 331
    new-instance v4, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$2kTtKQKris9JsCEvRIjWEhIdLIs;

    invoke-direct {v4, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$2kTtKQKris9JsCEvRIjWEhIdLIs;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$nrrNm6v83CyaFX9aBmpNRPG7alg;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$nrrNm6v83CyaFX9aBmpNRPG7alg;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$o8SZspA24M9UabtK8OSYVftJ6Us;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$o8SZspA24M9UabtK8OSYVftJ6Us;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->s:Landroid/view/View;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$SQIpoBhhU2ZKarJuQjrtB0pI_4A;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$SQIpoBhhU2ZKarJuQjrtB0pI_4A;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$h9WBV-w24e7b6gJj2jMKK2IbtM8;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$h9WBV-w24e7b6gJj2jMKK2IbtM8;-><init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic i()V
    .registers 0

    return-void
.end method

.method private static synthetic j()V
    .registers 0

    return-void
.end method

.method public static synthetic lambda$2kTtKQKris9JsCEvRIjWEhIdLIs(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$7jYGjdBV3YC6J3guIq74zaRwXwI()V
    .registers 0

    invoke-static {}, Lcom/gaia/ngallery/ui/PreviewActivity;->j()V

    return-void
.end method

.method public static synthetic lambda$DumkLv00HGfyC0pDxLwscrK0ylg()V
    .registers 0

    invoke-static {}, Lcom/gaia/ngallery/ui/PreviewActivity;->i()V

    return-void
.end method

.method public static synthetic lambda$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->c(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$NiCGEOnEeXfAa1WZJ9t77QVZHpU(Lcom/gaia/ngallery/ui/PreviewActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$SQIpoBhhU2ZKarJuQjrtB0pI_4A(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$_6BQ90cQxwJBR9l04oKhGfWD5BA(Lcom/gaia/ngallery/ui/PreviewActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$bWT91-KThrzIMx0ASbd9MvUVpnY(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->d(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$fV7-rsDILa0EyWJULyjiUHtEspE(Lcom/gaia/ngallery/ui/PreviewActivity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$fth1B9PHuF3OOTbrn5ny6ZN3UHI(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$h9WBV-w24e7b6gJj2jMKK2IbtM8(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$nrrNm6v83CyaFX9aBmpNRPG7alg(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$o8SZspA24M9UabtK8OSYVftJ6Us(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$pPEn1NRjcfqEexdgo6_7mx8bi84(Lcom/gaia/ngallery/ui/PreviewActivity;FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(FFF)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .line 130
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 79
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget p1, Lcom/gaia/ngallery/i$k;->activity_preview:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CURRENT_POSITION"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->f:I

    .line 90
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CURRENT_DIR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->p:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/b/b;->b(Ljava/lang/String;)Lcom/gaia/ngallery/b/a;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->e:Ljava/util/List;

    .line 94
    sget p1, Lcom/gaia/ngallery/i$h;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->h:Landroid/support/v7/widget/Toolbar;

    .line 95
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->h:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 96
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    sget p1, Lcom/gaia/ngallery/i$h;->appbar_layout:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->o:Landroid/support/design/widget/AppBarLayout;

    .line 98
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->o:Landroid/support/design/widget/AppBarLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    .line 99
    sget p1, Lcom/gaia/ngallery/i$h;->view_pager:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->g:Landroid/support/v4/view/ViewPager;

    .line 100
    sget p1, Lcom/gaia/ngallery/i$h;->edit_action_btns:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->j:Landroid/widget/LinearLayout;

    .line 101
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->c()V

    .line 104
    sget p1, Lcom/gaia/ngallery/i$a;->anim_preview_editorbar_in:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->k:Landroid/view/animation/Animation;

    .line 105
    sget p1, Lcom/gaia/ngallery/i$a;->anim_preview_editorbar_out:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->l:Landroid/view/animation/Animation;

    .line 106
    sget p1, Lcom/gaia/ngallery/i$a;->anim_preview_toolbar_in:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->m:Landroid/view/animation/Animation;

    .line 107
    sget p1, Lcom/gaia/ngallery/i$a;->anim_preview_toolbar_out:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->n:Landroid/view/animation/Animation;

    .line 109
    invoke-static {p0}, Lcom/gaia/ngallery/l/g;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(Z)V

    .line 110
    new-instance p1, Lcom/gaia/ngallery/j/a;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/j/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->q:Lcom/gaia/ngallery/j/a;

    .line 111
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->q:Lcom/gaia/ngallery/j/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/j/a;->a()V

    .line 112
    invoke-static {p0}, Lcom/prism/commons/f/d;->c(Landroid/content/Context;)I

    move-result p1

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e8

    .line 114
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 116
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 118
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->h:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->h:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->h:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->h:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->h:Landroid/support/v7/widget/Toolbar;

    .line 120
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result p1

    iget-object v3, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->h:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    .line 119
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/support/v7/widget/Toolbar;->setPadding(IIII)V

    .line 125
    :cond_e8
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->e()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$l;->menu_preview:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 136
    sget v0, Lcom/gaia/ngallery/i$h;->menu_auto_rotate:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->t:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 306
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_e

    .line 308
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->b()V

    goto :goto_20

    .line 310
    :cond_e
    sget v2, Lcom/gaia/ngallery/i$h;->menu_auto_rotate:I

    if-ne v0, v2, :cond_20

    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 312
    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/g;->b(Landroid/content/Context;Z)V

    .line 313
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(Z)V

    .line 314
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_20
    :goto_20
    return v1
.end method

.method protected onPause()V
    .registers 3

    .line 298
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 299
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->c(Landroid/content/Context;)V

    .line 301
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    const-string v1, "onPause over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 282
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 283
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 285
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 286
    :cond_1d
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/app/Activity;)Z

    .line 287
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity;->q:Lcom/gaia/ngallery/j/a;

    invoke-virtual {v0}, Lcom/gaia/ngallery/j/a;->b()V

    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 292
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 293
    sget-object v0, Lcom/gaia/ngallery/ui/PreviewActivity;->d:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.gaia.ngallery.ui.PreviewActivity.AnonymousClass1 (com.gaia.ngallery.ui.PreviewActivity$1)
.class Lcom/gaia/ngallery/ui/PreviewActivity$1;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/PreviewActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gaia/ngallery/f/c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity$1;->a:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 13

    .line 168
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity$1;->a:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(Lcom/gaia/ngallery/ui/PreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFile;

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/gaia/ngallery/i$h;->preview_video_play_btn:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_60

    .line 175
    move-object v0, p1

    check-cast v0, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedImageView;

    .line 176
    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedImageView;->getCustomTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    const/4 v1, 0x2

    .line 178
    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->getHeight()I

    move-result v4

    .line 179
    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->getWidth()I

    move-result v5

    if-le v5, v4, :cond_2b

    const/4 v1, 0x1

    .line 182
    :cond_2b
    invoke-static {}, Lcom/gaia/ngallery/ui/PreviewActivity;->a()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "video click:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " width:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v4, p0, Lcom/gaia/ngallery/ui/PreviewActivity$1;->a:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v4, v0, p2, v1}, Lcom/gaia/ngallery/ui/VideoPlayActivity;->a(Landroid/content/Context;Landroid/view/View;Lcom/gaia/ngallery/model/AlbumFile;I)V

    .line 190
    :cond_60
    invoke-static {}, Lcom/gaia/ngallery/ui/PreviewActivity;->a()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "clicked!!!! "

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    instance-of p1, p1, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    if-eqz p1, :cond_76

    .line 193
    iget-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity$1;->a:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->b(Lcom/gaia/ngallery/ui/PreviewActivity;)V

    :cond_76
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    .line 165
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/PreviewActivity$1;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .registers 3

    .line 165
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/PreviewActivity$1;->b(Landroid/view/View;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.PreviewActivity.AnonymousClass2 (com.gaia.ngallery.ui.PreviewActivity$2)
.class Lcom/gaia/ngallery/ui/PreviewActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "PreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/PreviewActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/gaia/ngallery/ui/PreviewActivity$2;->a:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/gaia/ngallery/ui/PreviewActivity$2;->a:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->a(Lcom/gaia/ngallery/ui/PreviewActivity;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$2kTtKQKris9JsCEvRIjWEhIdLIs (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$2kTtKQKris9JsCEvRIjWEhIdLIs)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$2kTtKQKris9JsCEvRIjWEhIdLIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$2kTtKQKris9JsCEvRIjWEhIdLIs;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$2kTtKQKris9JsCEvRIjWEhIdLIs;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$2kTtKQKris9JsCEvRIjWEhIdLIs(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$b;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$7jYGjdBV3YC6J3guIq74zaRwXwI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskStart()V
    .registers 1

    invoke-static {}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$7jYGjdBV3YC6J3guIq74zaRwXwI()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$a;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$DumkLv00HGfyC0pDxLwscrK0ylg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskComplete()V
    .registers 1

    invoke-static {}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$DumkLv00HGfyC0pDxLwscrK0ylg()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$Lc0NRt6cWMyeXB5FZc7Ip1sFrUQ(Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$NiCGEOnEeXfAa1WZJ9t77QVZHpU (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$NiCGEOnEeXfAa1WZJ9t77QVZHpU)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$NiCGEOnEeXfAa1WZJ9t77QVZHpU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$NiCGEOnEeXfAa1WZJ9t77QVZHpU;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$NiCGEOnEeXfAa1WZJ9t77QVZHpU;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$NiCGEOnEeXfAa1WZJ9t77QVZHpU(Lcom/gaia/ngallery/ui/PreviewActivity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$SQIpoBhhU2ZKarJuQjrtB0pI_4A (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$SQIpoBhhU2ZKarJuQjrtB0pI_4A)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$SQIpoBhhU2ZKarJuQjrtB0pI_4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$SQIpoBhhU2ZKarJuQjrtB0pI_4A;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$SQIpoBhhU2ZKarJuQjrtB0pI_4A;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$SQIpoBhhU2ZKarJuQjrtB0pI_4A(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$_6BQ90cQxwJBR9l04oKhGfWD5BA (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$_6BQ90cQxwJBR9l04oKhGfWD5BA)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$_6BQ90cQxwJBR9l04oKhGfWD5BA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$_6BQ90cQxwJBR9l04oKhGfWD5BA;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$_6BQ90cQxwJBR9l04oKhGfWD5BA;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$_6BQ90cQxwJBR9l04oKhGfWD5BA(Lcom/gaia/ngallery/ui/PreviewActivity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$bWT91KThrzIMx0ASbd9MvUVpnY (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$bWT91-KThrzIMx0ASbd9MvUVpnY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$bWT91-KThrzIMx0ASbd9MvUVpnY(Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$fV7rsDILa0EyWJULyjiUHtEspE (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$fV7-rsDILa0EyWJULyjiUHtEspE)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fV7-rsDILa0EyWJULyjiUHtEspE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fV7-rsDILa0EyWJULyjiUHtEspE;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fV7-rsDILa0EyWJULyjiUHtEspE;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$fV7-rsDILa0EyWJULyjiUHtEspE(Lcom/gaia/ngallery/ui/PreviewActivity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$fth1B9PHuF3OOTbrn5ny6ZN3UHI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$fth1B9PHuF3OOTbrn5ny6ZN3UHI(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$h9WBVw24e7b6gJj2jMKK2IbtM8 (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$h9WBV-w24e7b6gJj2jMKK2IbtM8)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$h9WBV-w24e7b6gJj2jMKK2IbtM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$h9WBV-w24e7b6gJj2jMKK2IbtM8;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$h9WBV-w24e7b6gJj2jMKK2IbtM8;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$h9WBV-w24e7b6gJj2jMKK2IbtM8(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$nrrNm6v83CyaFX9aBmpNRPG7alg (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$nrrNm6v83CyaFX9aBmpNRPG7alg)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$nrrNm6v83CyaFX9aBmpNRPG7alg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$nrrNm6v83CyaFX9aBmpNRPG7alg;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$nrrNm6v83CyaFX9aBmpNRPG7alg;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$nrrNm6v83CyaFX9aBmpNRPG7alg(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$o8SZspA24M9UabtK8OSYVftJ6Us (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$o8SZspA24M9UabtK8OSYVftJ6Us)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$o8SZspA24M9UabtK8OSYVftJ6Us;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$o8SZspA24M9UabtK8OSYVftJ6Us;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$o8SZspA24M9UabtK8OSYVftJ6Us;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$o8SZspA24M9UabtK8OSYVftJ6Us(Lcom/gaia/ngallery/ui/PreviewActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$PreviewActivity$pPEn1NRjcfqEexdgo6_7mx8bi84 (com.gaia.ngallery.ui.-$$Lambda$PreviewActivity$pPEn1NRjcfqEexdgo6_7mx8bi84)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$pPEn1NRjcfqEexdgo6_7mx8bi84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/photoview/e$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/PreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/PreviewActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$pPEn1NRjcfqEexdgo6_7mx8bi84;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    return-void
.end method


# virtual methods
.method public final onScaleChange(FFF)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$PreviewActivity$pPEn1NRjcfqEexdgo6_7mx8bi84;->f$0:Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/gaia/ngallery/ui/PreviewActivity;->lambda$pPEn1NRjcfqEexdgo6_7mx8bi84(Lcom/gaia/ngallery/ui/PreviewActivity;FFF)V

    return-void
.end method
