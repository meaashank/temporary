###### Class com.gaia.ngallery.ui.AlbumActivity (com.gaia.ngallery.ui.AlbumActivity)
.class public Lcom/gaia/ngallery/ui/AlbumActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AlbumActivity.java"


# static fields
.field public static final a:Ljava/lang/String; = "WORK_DIR"

.field public static final b:Ljava/lang/String; = "EXTR_INFO"

.field private static final d:Ljava/lang/String;

.field private static final e:I = 0x4

.field private static final y:I = 0x3e8

.field private static final z:Lcom/prism/commons/e/c;


# instance fields
.field private A:Landroid/support/v7/view/ActionMode$Callback;

.field protected c:Lcom/gaia/ngallery/ui/d;

.field private f:Lcom/gaia/ngallery/ui/b/g;

.field private g:Ljava/io/File;

.field private h:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

.field private i:Lcom/gaia/ngallery/ui/a;

.field private j:Lcom/gaia/ngallery/j/a;

.field private k:Lcom/gaia/ngallery/b/a;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/gaia/ngallery/model/AlbumFile;

.field private n:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private o:Landroid/support/v7/widget/AppCompatTextView;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:I

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/view/ViewGroup;

.field private v:Landroid/view/ViewGroup;

.field private w:Lcom/gaia/ngallery/ui/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/ui/b/f<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/support/v7/view/ActionMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 61
    const-class v0, Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/prism/commons/e/c;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/prism/commons/e/a;

    new-instance v2, Lcom/prism/commons/e/a;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    sget v4, Lcom/gaia/ngallery/i$n;->perm_explain_read_storage:I

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/prism/commons/e/a;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    sget v4, Lcom/gaia/ngallery/i$n;->perm_explain_write_storage:I

    invoke-direct {v2, v3, v4, v5}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    aput-object v2, v1, v5

    const/16 v2, 0x3e8

    invoke-direct {v0, v2, v1}, Lcom/prism/commons/e/c;-><init>(I[Lcom/prism/commons/e/a;)V

    sput-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->z:Lcom/prism/commons/e/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->r:I

    .line 109
    new-instance v0, Lcom/gaia/ngallery/ui/AlbumActivity$1;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/AlbumActivity$1;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->A:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/design/widget/CollapsingToolbarLayout;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->n:Landroid/support/design/widget/CollapsingToolbarLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->x:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/AlbumActivity;Lcom/gaia/ngallery/ui/b/f;)Lcom/gaia/ngallery/ui/b/f;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->w:Lcom/gaia/ngallery/ui/b/f;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 60
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gaia/ngallery/ui/PreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CURRENT_DIR"

    .line 425
    iget-object v2, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CURRENT_POSITION"

    .line 426
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x68

    .line 427
    invoke-virtual {p0, v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .registers 3

    const/4 p2, -0x1

    if-eq p1, p2, :cond_b

    .line 524
    sget-object p1, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    const-string p2, "updateItems null returned or no RESULT_OK from cameraActivity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 527
    :cond_b
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/content/Intent;I)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_21

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    goto :goto_21

    :cond_7
    const-string p2, "KEY_EIDTOR_ITEMS"

    .line 537
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 539
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v0, :cond_16

    goto :goto_20

    .line 542
    :cond_16
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Ljava/util/List;)V

    return-void

    :cond_20
    :goto_20
    return-void

    .line 533
    :cond_21
    :goto_21
    sget-object p1, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onPreviewResult return"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .registers 2

    .line 473
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-static {p0, p1}, Lcom/gaia/ngallery/ui/a;->b(Landroid/app/Activity;Ljava/io/File;)V

    .line 474
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->h:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    .line 475
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->h(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .registers 5

    .line 334
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_1a

    .line 335
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 336
    :goto_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/b/a;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    .line 436
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/AlbumActivity;I)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 378
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    .line 379
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/b;->b(Ljava/lang/String;)Lcom/gaia/ngallery/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    .line 380
    sget-object p1, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlbumPath this.albumCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->n:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/gaia/ngallery/model/AlbumFolder;->getDisplayAlbumName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6

    .line 497
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Remove album failed!"

    const/4 p2, 0x1

    .line 498
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method

.method private synthetic a(Ljava/lang/Void;)V
    .registers 2

    .line 500
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->finish()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->f:Lcom/gaia/ngallery/ui/b/g;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/b/g;->a(Ljava/util/List;)V

    .line 548
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->e()V

    return-void
.end method

.method private synthetic a([ILjava/util/List;)V
    .registers 6

    .line 323
    iget-object p2, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->x:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 324
    array-length p2, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_13

    aget v1, p1, v0

    .line 325
    iget-object v2, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->f:Lcom/gaia/ngallery/ui/b/g;

    invoke-virtual {v2, v1}, Lcom/gaia/ngallery/ui/b/g;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 327
    :cond_13
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->e()V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/AlbumActivity;I)I
    .registers 2

    .line 60
    iput p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->r:I

    return p1
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/v7/widget/AppCompatTextView;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->o:Landroid/support/v7/widget/AppCompatTextView;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->s:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$-MceI_EAi3_dH1ZbC32ntFcm7uU;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$-MceI_EAi3_dH1ZbC32ntFcm7uU;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->t:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$aGuMaJD6Mf29tFIKk2DfZNXXvns;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$aGuMaJD6Mf29tFIKk2DfZNXXvns;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->u:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$X8As5z5RjBvYFowkur92s6kjtA0;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$X8As5z5RjBvYFowkur92s6kjtA0;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->v:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$LaQ4BeEtJa4NkXoTLAnlDCKRlBU;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$LaQ4BeEtJa4NkXoTLAnlDCKRlBU;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .registers 2

    .line 468
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-static {p0, p1}, Lcom/gaia/ngallery/ui/a;->a(Landroid/app/Activity;Ljava/io/File;)V

    .line 469
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->h:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    .line 470
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->g(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .registers 2

    .line 491
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    .line 488
    sget-object p2, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    const-string v0, "onActionFailed "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Rename album failed!"

    const/4 p2, 0x1

    .line 489
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method

.method private synthetic b(Ljava/util/List;)V
    .registers 2

    .line 276
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->x:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    return-void
.end method

.method private synthetic b([ILjava/util/List;)V
    .registers 6

    .line 295
    iget-object p2, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->x:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 296
    array-length p2, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_13

    aget v1, p1, v0

    .line 297
    iget-object v2, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->f:Lcom/gaia/ngallery/ui/b/g;

    invoke-virtual {v2, v1}, Lcom/gaia/ngallery/ui/b/g;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 299
    :cond_13
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->e()V

    return-void
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/View;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->p:Landroid/view/View;

    return-object p0
.end method

.method private c()V
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/a;->f()I

    move-result v0

    if-lez v0, :cond_11

    .line 348
    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/b/a;->a(I)Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 349
    :goto_12
    sget-object v1, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverIfNeeded newCover:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " albumCover:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->m:Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3d

    .line 350
    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->m:Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/model/AlbumFile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    .line 352
    :cond_3d
    iput-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->m:Lcom/gaia/ngallery/model/AlbumFile;

    .line 353
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->d()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .registers 4

    .line 460
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    if-eqz v0, :cond_16

    const-string v0, "EXTRA_KEY_ALBUM_DIR"

    .line 462
    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    const/16 v0, 0x64

    .line 463
    invoke-virtual {p0, p1, v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 464
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->h:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    .line 465
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 319
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->x:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 320
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->h:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    return-object p0
.end method

.method private d()V
    .registers 5

    .line 356
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAlbumCover albumCover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->m:Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->m:Lcom/gaia/ngallery/model/AlbumFile;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 358
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->l:Landroid/widget/ImageView;

    sget v2, Lcom/gaia/ngallery/i$m;->ic_empty_album_cover:I

    invoke-static {v0, v2, v1}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    goto :goto_2d

    .line 360
    :cond_25
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->m:Lcom/gaia/ngallery/model/AlbumFile;

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    :goto_2d
    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .registers 8

    .line 305
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->w:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/b/f;->a()Ljava/util/List;

    move-result-object p1

    .line 306
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->w:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/b/f;->b()[I

    move-result-object v0

    .line 307
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 308
    array-length v1, v0

    new-array v1, v1, [I

    .line 309
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    .line 310
    :goto_16
    array-length v4, v0

    if-ge v3, v4, :cond_22

    sub-int v4, v2, v3

    .line 311
    aget v5, v0, v3

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 314
    :cond_22
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    iget-object v2, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    invoke-virtual {v2}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gaia/ngallery/e;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 315
    new-instance v0, Lcom/gaia/ngallery/ui/a/h;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/ui/a/h;-><init>(Ljava/util/List;)V

    goto :goto_3d

    .line 317
    :cond_38
    new-instance v0, Lcom/gaia/ngallery/ui/a/d;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/ui/a/d;-><init>(Ljava/util/List;)V

    .line 318
    :goto_3d
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$hVu01yany6i5t3U3TxyjOGAZuR0;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$hVu01yany6i5t3U3TxyjOGAZuR0;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-interface {v0, p1}, Lcom/prism/commons/a/a;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 322
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$McDlXgw-b-1iLTzt_19E7zN5hQY;

    invoke-direct {p1, p0, v1}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$McDlXgw-b-1iLTzt_19E7zN5hQY;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;[I)V

    invoke-interface {v0, p1}, Lcom/prism/commons/a/a;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 329
    invoke-interface {v0, p0}, Lcom/prism/commons/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 291
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->x:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 292
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->f()V

    return-void
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/View;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->q:Landroid/view/View;

    return-object p0
.end method

.method private e()V
    .registers 9

    .line 367
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->f:Lcom/gaia/ngallery/ui/b/g;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/b/g;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gaia/ngallery/model/AlbumFile;

    .line 368
    invoke-virtual {v4}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v7

    if-ne v7, v5, :cond_24

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 370
    :cond_24
    invoke-virtual {v4}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v4

    if-ne v4, v6, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 373
    :cond_2d
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->o:Landroid/support/v7/widget/AppCompatTextView;

    sget v4, Lcom/gaia/ngallery/i$n;->subtitle_album_media_count:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/gaia/ngallery/ui/AlbumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->c()V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .registers 8

    .line 281
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->w:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/b/f;->a()Ljava/util/List;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->w:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/b/f;->b()[I

    move-result-object v0

    .line 283
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 284
    array-length v1, v0

    new-array v1, v1, [I

    .line 285
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    .line 286
    :goto_16
    array-length v4, v0

    if-ge v3, v4, :cond_22

    sub-int v4, v2, v3

    .line 287
    aget v5, v0, v3

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 289
    :cond_22
    new-instance v0, Lcom/gaia/ngallery/ui/a/c;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/ui/a/c;-><init>(Ljava/util/List;)V

    .line 290
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$cWJGorrlmzrYasXI53A__w661Xo;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$cWJGorrlmzrYasXI53A__w661Xo;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 294
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs;

    invoke-direct {p1, p0, v1}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;[I)V

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/c;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 301
    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/ui/a/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 275
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->x:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    return-void
.end method

.method static synthetic f(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/b/g;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->f:Lcom/gaia/ngallery/ui/b/g;

    return-object p0
.end method

.method private f()V
    .registers 4

    .line 432
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    const-string v1, "refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$9d48fjkB7zv0GNza_5iDufuyQwg;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$9d48fjkB7zv0GNza_5iDufuyQwg;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/gaia/ngallery/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/gaia/ngallery/b/b$b;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .registers 4

    .line 273
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->w:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/b/f;->a()Ljava/util/List;

    move-result-object p1

    .line 274
    new-instance v0, Lcom/gaia/ngallery/ui/a/a;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/e;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/gaia/ngallery/ui/a/a;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 275
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Selnek3puf2eNBPXM-nzmQuazTc;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Selnek3puf2eNBPXM-nzmQuazTc;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/a;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 276
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$qw9mBDA7cisppG053ATQIeqvBnI;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$qw9mBDA7cisppG053ATQIeqvBnI;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/a;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 277
    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/ui/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic g(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/b/f;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->w:Lcom/gaia/ngallery/ui/b/f;

    return-object p0
.end method

.method private g()V
    .registers 3

    .line 441
    sget v0, Lcom/gaia/ngallery/i$h;->multiple_actions:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->h:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    .line 442
    sget v0, Lcom/gaia/ngallery/i$h;->ft_add_album:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;

    .line 443
    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->h:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;)V

    .line 444
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->h:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    new-instance v1, Lcom/gaia/ngallery/ui/AlbumActivity$4;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/AlbumActivity$4;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;)V

    .line 458
    sget v0, Lcom/gaia/ngallery/i$h;->ft_import_video_photo:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Io-xbaXrCKuwakZl4s0RFYFuLXo;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Io-xbaXrCKuwakZl4s0RFYFuLXo;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    sget v0, Lcom/gaia/ngallery/i$h;->ft_take_a_photo:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$YuuLo4xNqMrjuJAdLgeQ9GMyPFE;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$YuuLo4xNqMrjuJAdLgeQ9GMyPFE;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    sget v0, Lcom/gaia/ngallery/i$h;->ft_take_a_video:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$yBLjIG8_jveyLzyU_bIWVA9iWps;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$yBLjIG8_jveyLzyU_bIWVA9iWps;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .registers 3

    .line 267
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->w:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/b/f;->a()Ljava/util/List;

    move-result-object p1

    .line 268
    new-instance v0, Lcom/gaia/ngallery/ui/a/k;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/ui/a/k;-><init>(Ljava/util/List;)V

    .line 269
    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/ui/a/k;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic h(Lcom/gaia/ngallery/ui/AlbumActivity;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->r:I

    return p0
.end method

.method static synthetic i(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/v7/view/ActionMode;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->x:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method static synthetic j(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->s:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic k(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->t:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic l(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->u:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic lambda$-MceI_EAi3_dH1ZbC32ntFcm7uU(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->g(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$3nFPvuzqSV1qkMO60FtCG8ALVYw(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$7X_e8EZtOZXykVO01PyhCtNGEh0(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Void;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$9d48fjkB7zv0GNza_5iDufuyQwg(Lcom/gaia/ngallery/ui/AlbumActivity;Lcom/gaia/ngallery/b/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/b/a;)V

    return-void
.end method

.method public static synthetic lambda$Io-xbaXrCKuwakZl4s0RFYFuLXo(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$LaQ4BeEtJa4NkXoTLAnlDCKRlBU(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$McDlXgw-b-1iLTzt_19E7zN5hQY(Lcom/gaia/ngallery/ui/AlbumActivity;[ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->a([ILjava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$SKlf6DnAGNDtztEzS2ckIDqjhLs(Lcom/gaia/ngallery/ui/AlbumActivity;[ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->b([ILjava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$Selnek3puf2eNBPXM-nzmQuazTc(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$Svi5bHDPhowYVreAAxJWfqtxES8(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$X8As5z5RjBvYFowkur92s6kjtA0(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$YuuLo4xNqMrjuJAdLgeQ9GMyPFE(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$aGuMaJD6Mf29tFIKk2DfZNXXvns(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$cWJGorrlmzrYasXI53A__w661Xo(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$hVu01yany6i5t3U3TxyjOGAZuR0(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$qw9mBDA7cisppG053ATQIeqvBnI(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$u6eE9LvRp5C2rxiuceiB7MxyGGc(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$yBLjIG8_jveyLzyU_bIWVA9iWps(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->v:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic n(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/v7/view/ActionMode$Callback;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->A:Landroid/support/v7/view/ActionMode$Callback;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 402
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    const/4 v0, 0x1

    .line 403
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->setResult(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 508
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-eq p1, v0, :cond_36

    const/16 v0, 0x66

    if-eq p1, v0, :cond_36

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2e

    goto :goto_36

    :cond_2e
    const/16 v0, 0x68

    if-ne p1, v0, :cond_39

    .line 517
    invoke-direct {p0, p3, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Landroid/content/Intent;I)V

    goto :goto_39

    .line 513
    :cond_36
    :goto_36
    invoke-direct {p0, p2, p3}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(ILandroid/content/Intent;)V

    :cond_39
    :goto_39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 174
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    sget p1, Lcom/gaia/ngallery/i$k;->activity_album:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->setContentView(I)V

    .line 180
    sget p1, Lcom/gaia/ngallery/i$h;->ctl_layout:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->n:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 181
    sget p1, Lcom/gaia/ngallery/i$h;->tv_subtitle:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->o:Landroid/support/v7/widget/AppCompatTextView;

    .line 182
    sget p1, Lcom/gaia/ngallery/i$h;->v_action_mode_toolbar_expend_bg:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->p:Landroid/view/View;

    .line 183
    sget p1, Lcom/gaia/ngallery/i$h;->iv_album_cover:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->l:Landroid/widget/ImageView;

    .line 184
    sget p1, Lcom/gaia/ngallery/i$h;->share_media:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->s:Landroid/view/ViewGroup;

    .line 186
    sget p1, Lcom/gaia/ngallery/i$h;->export_media:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->t:Landroid/view/ViewGroup;

    .line 187
    sget p1, Lcom/gaia/ngallery/i$h;->move_media:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->u:Landroid/view/ViewGroup;

    .line 188
    sget p1, Lcom/gaia/ngallery/i$h;->delete_media:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->v:Landroid/view/ViewGroup;

    .line 189
    sget p1, Lcom/gaia/ngallery/i$h;->editor_act_editors:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->q:Landroid/view/View;

    .line 190
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->q:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    sget-object p1, Lcom/gaia/ngallery/ui/AlbumActivity;->z:Lcom/prism/commons/e/c;

    new-instance v0, Lcom/gaia/ngallery/ui/AlbumActivity$2;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/AlbumActivity$2;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    .line 208
    sget p1, Lcom/gaia/ngallery/i$h;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 210
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 211
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 212
    invoke-static {p0}, Lcom/prism/commons/f/d;->c(Landroid/content/Context;)I

    move-result v0

    .line 213
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_c7

    .line 214
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v4, 0x4000000

    .line 216
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 217
    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 218
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v0

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    .line 220
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v6

    .line 219
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/support/v7/widget/Toolbar;->setPadding(IIII)V

    .line 221
    sget p1, Lcom/gaia/ngallery/i$h;->appbar_layout:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 222
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    :cond_c7
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "WORK_DIR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_df

    .line 232
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 233
    :cond_df
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate, workDir="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Ljava/lang/String;)V

    .line 235
    sget p1, Lcom/gaia/ngallery/i$h;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 236
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 237
    new-instance v0, Lcom/gaia/ngallery/ui/d;

    sget v2, Lcom/gaia/ngallery/i$o;->CustomProgressDialog:I

    invoke-direct {v0, p0, v2}, Lcom/gaia/ngallery/ui/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->c:Lcom/gaia/ngallery/ui/d;

    .line 238
    invoke-static {p0}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;)I

    move-result v0

    div-int/2addr v0, v1

    .line 239
    new-instance v1, Lcom/gaia/ngallery/ui/b/g;

    new-instance v2, Lcom/gaia/ngallery/ui/AlbumActivity$3;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/AlbumActivity$3;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/gaia/ngallery/ui/b/g;-><init>(Landroid/content/Context;ILcom/gaia/ngallery/f/c;)V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->f:Lcom/gaia/ngallery/ui/b/g;

    .line 253
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->f:Lcom/gaia/ngallery/ui/b/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 255
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->f:Lcom/gaia/ngallery/ui/b/g;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->k:Lcom/gaia/ngallery/b/a;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/b/g;->a(Ljava/util/List;)V

    .line 256
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->e()V

    .line 257
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->g()V

    .line 258
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->b()V

    .line 261
    new-instance p1, Lcom/gaia/ngallery/j/a;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/j/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->j:Lcom/gaia/ngallery/j/a;

    .line 262
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->j:Lcom/gaia/ngallery/j/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/j/a;->a()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 386
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/e;->b(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/e;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_24

    .line 389
    :cond_19
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$l;->menu_album_activity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    .line 387
    :cond_24
    :goto_24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .registers 1

    .line 420
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 482
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_d

    .line 484
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->finish()V

    goto :goto_52

    .line 485
    :cond_d
    sget v0, Lcom/gaia/ngallery/i$h;->menu_rename_album:I

    if-ne p1, v0, :cond_30

    .line 486
    new-instance p1, Lcom/gaia/ngallery/ui/a/i;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gaia/ngallery/ui/a/i;-><init>(Ljava/lang/String;)V

    .line 487
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Svi5bHDPhowYVreAAxJWfqtxES8;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Svi5bHDPhowYVreAAxJWfqtxES8;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/i;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 491
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$u6eE9LvRp5C2rxiuceiB7MxyGGc;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$u6eE9LvRp5C2rxiuceiB7MxyGGc;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/i;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 492
    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/ui/a/i;->a(Landroid/app/Activity;)V

    goto :goto_52

    .line 494
    :cond_30
    sget v0, Lcom/gaia/ngallery/i$h;->menu_delete_album:I

    if-ne p1, v0, :cond_52

    .line 495
    new-instance p1, Lcom/gaia/ngallery/ui/a/g;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gaia/ngallery/ui/a/g;-><init>(Ljava/lang/String;)V

    .line 496
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$3nFPvuzqSV1qkMO60FtCG8ALVYw;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$3nFPvuzqSV1qkMO60FtCG8ALVYw;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/g;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 500
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$7X_e8EZtOZXykVO01PyhCtNGEh0;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$7X_e8EZtOZXykVO01PyhCtNGEh0;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/g;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 501
    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/ui/a/g;->a(Landroid/app/Activity;)V

    :cond_52
    :goto_52
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 555
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 556
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->c(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 397
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->z:Lcom/prism/commons/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prism/commons/e/c;->a(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 408
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 409
    sget-object v0, Lcom/gaia/ngallery/ui/AlbumActivity;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onResume to refresh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 411
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/AlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 412
    :cond_23
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/app/Activity;)Z

    .line 414
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity;->j:Lcom/gaia/ngallery/j/a;

    invoke-virtual {v0}, Lcom/gaia/ngallery/j/a;->b()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.AlbumActivity.AnonymousClass1 (com.gaia.ngallery.ui.AlbumActivity$1)
.class Lcom/gaia/ngallery/ui/AlbumActivity$1;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/AlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(I)V
    .registers 4

    if-nez p1, :cond_30

    .line 122
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->j(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V

    .line 123
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->k(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V

    .line 124
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->l(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V

    .line 125
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->m(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V

    goto :goto_5d

    .line 127
    :cond_30
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->j(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V

    .line 128
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->k(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V

    .line 129
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->l(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V

    .line 130
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->m(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/ViewGroup;Z)V

    :goto_5d
    return-void
.end method

.method public static synthetic lambda$pmfUXM2smMOOrZjwcM2QGtCshqM(Lcom/gaia/ngallery/ui/AlbumActivity$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a(I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->i(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 3

    .line 147
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget p2, Lcom/gaia/ngallery/i$h;->menu_album_select_all:I

    if-ne p1, p2, :cond_11

    .line 148
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->f(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/b/g;->e()V

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    sget v1, Lcom/gaia/ngallery/i$c;->gallerySuperTitleTextAppearanceActionMode:I

    invoke-static {v0, v1}, Lcom/prism/commons/f/t;->b(Landroid/content/Context;I)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/design/widget/CollapsingToolbarLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextAppearance(I)V

    .line 114
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    sget v1, Lcom/gaia/ngallery/i$c;->gallerySuperSubTitleTextAppearanceActionMode:I

    invoke-static {v0, v1}, Lcom/prism/commons/f/t;->b(Landroid/content/Context;I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->b(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/v7/widget/AppCompatTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 116
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->c(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->d(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->e(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->f(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/b/g;->a()Lcom/gaia/ngallery/ui/b/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Lcom/gaia/ngallery/ui/b/f;)Lcom/gaia/ngallery/ui/b/f;

    .line 120
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->g(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/b/f;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$1$pmfUXM2smMOOrZjwcM2QGtCshqM;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$1$pmfUXM2smMOOrZjwcM2QGtCshqM;-><init>(Lcom/gaia/ngallery/ui/AlbumActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/b/f;->a(Lcom/gaia/ngallery/ui/b/f$a;)V

    .line 133
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->f(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/AlbumActivity;->h(Lcom/gaia/ngallery/ui/AlbumActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/b/g;->a(I)V

    .line 134
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 135
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->i(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    const-string v0, "0 selected"

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/gaia/ngallery/i$l;->menu_album_actionmode:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .registers 4

    .line 155
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    sget v0, Lcom/gaia/ngallery/i$c;->gallerySuperTitleTextAppearance:I

    invoke-static {p1, v0}, Lcom/prism/commons/f/t;->b(Landroid/content/Context;I)I

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/design/widget/CollapsingToolbarLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextAppearance(I)V

    .line 157
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    sget v0, Lcom/gaia/ngallery/i$c;->gallerySuperSubTitleTextAppearance:I

    invoke-static {p1, v0}, Lcom/prism/commons/f/t;->b(Landroid/content/Context;I)I

    move-result p1

    .line 158
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->b(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/v7/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 159
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->c(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->d(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->e(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->f(Lcom/gaia/ngallery/ui/AlbumActivity;)Lcom/gaia/ngallery/ui/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/b/g;->b()V

    .line 163
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$1;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$1$pmfUXM2smMOOrZjwcM2QGtCshqM (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$1$pmfUXM2smMOOrZjwcM2QGtCshqM)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$1$pmfUXM2smMOOrZjwcM2QGtCshqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/ui/b/f$a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity$1;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$1$pmfUXM2smMOOrZjwcM2QGtCshqM;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity$1;

    return-void
.end method


# virtual methods
.method public final onSelectedCountChange(I)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$1$pmfUXM2smMOOrZjwcM2QGtCshqM;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity$1;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity$1;->lambda$pmfUXM2smMOOrZjwcM2QGtCshqM(Lcom/gaia/ngallery/ui/AlbumActivity$1;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.AlbumActivity.AnonymousClass2 (com.gaia.ngallery.ui.AlbumActivity$2)
.class Lcom/gaia/ngallery/ui/AlbumActivity$2;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/prism/commons/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/AlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$2;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/prism/commons/e/c;)V
    .registers 3

    .line 194
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$2;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-virtual {p2, p1, p0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    return-void
.end method

.method public a(ILcom/prism/commons/e/c;[Ljava/lang/String;[I)V
    .registers 5
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$2;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-virtual {p2, p1, p0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    return-void
.end method

.method public b(ILcom/prism/commons/e/c;)V
    .registers 3

    return-void
.end method

###### Class com.gaia.ngallery.ui.AlbumActivity.AnonymousClass3 (com.gaia.ngallery.ui.AlbumActivity$3)
.class Lcom/gaia/ngallery/ui/AlbumActivity$3;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/AlbumActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$3;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 3

    .line 242
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$3;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->a(Lcom/gaia/ngallery/ui/AlbumActivity;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    .line 239
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity$3;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 5

    .line 248
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$3;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->b(Lcom/gaia/ngallery/ui/AlbumActivity;I)I

    .line 249
    iget-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$3;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object p2, p0, Lcom/gaia/ngallery/ui/AlbumActivity$3;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->n(Lcom/gaia/ngallery/ui/AlbumActivity;)Landroid/support/v7/view/ActionMode$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    .line 250
    invoke-static {}, Lcom/gaia/ngallery/ui/AlbumActivity;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start action mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .registers 3

    .line 239
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity$3;->b(Landroid/view/View;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.AlbumActivity.AnonymousClass4 (com.gaia.ngallery.ui.AlbumActivity$4)
.class Lcom/gaia/ngallery/ui/AlbumActivity$4;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/AlbumActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/gaia/ngallery/ui/AlbumActivity$4;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/gaia/ngallery/ui/AlbumActivity$4;->a:Lcom/gaia/ngallery/ui/AlbumActivity;

    const-string v1, "SCENCE_ALBUM"

    invoke-static {v0, v1}, Lcom/gaia/ngallery/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$MceI_EAi3_dH1ZbC32ntFcm7uU (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$-MceI_EAi3_dH1ZbC32ntFcm7uU)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$-MceI_EAi3_dH1ZbC32ntFcm7uU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$-MceI_EAi3_dH1ZbC32ntFcm7uU;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$-MceI_EAi3_dH1ZbC32ntFcm7uU;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$-MceI_EAi3_dH1ZbC32ntFcm7uU(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$3nFPvuzqSV1qkMO60FtCG8ALVYw (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$3nFPvuzqSV1qkMO60FtCG8ALVYw)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$3nFPvuzqSV1qkMO60FtCG8ALVYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$3nFPvuzqSV1qkMO60FtCG8ALVYw;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$3nFPvuzqSV1qkMO60FtCG8ALVYw;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$3nFPvuzqSV1qkMO60FtCG8ALVYw(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$7X_e8EZtOZXykVO01PyhCtNGEh0 (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$7X_e8EZtOZXykVO01PyhCtNGEh0)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$7X_e8EZtOZXykVO01PyhCtNGEh0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$7X_e8EZtOZXykVO01PyhCtNGEh0;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$7X_e8EZtOZXykVO01PyhCtNGEh0;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$7X_e8EZtOZXykVO01PyhCtNGEh0(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$9d48fjkB7zv0GNza_5iDufuyQwg (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$9d48fjkB7zv0GNza_5iDufuyQwg)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$9d48fjkB7zv0GNza_5iDufuyQwg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/b/b$b;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$9d48fjkB7zv0GNza_5iDufuyQwg;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onLoadSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$9d48fjkB7zv0GNza_5iDufuyQwg;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    check-cast p1, Lcom/gaia/ngallery/b/a;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$9d48fjkB7zv0GNza_5iDufuyQwg(Lcom/gaia/ngallery/ui/AlbumActivity;Lcom/gaia/ngallery/b/a;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$IoxbaXrCKuwakZl4s0RFYFuLXo (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$Io-xbaXrCKuwakZl4s0RFYFuLXo)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Io-xbaXrCKuwakZl4s0RFYFuLXo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Io-xbaXrCKuwakZl4s0RFYFuLXo;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Io-xbaXrCKuwakZl4s0RFYFuLXo;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$Io-xbaXrCKuwakZl4s0RFYFuLXo(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$LaQ4BeEtJa4NkXoTLAnlDCKRlBU (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$LaQ4BeEtJa4NkXoTLAnlDCKRlBU)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$LaQ4BeEtJa4NkXoTLAnlDCKRlBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$LaQ4BeEtJa4NkXoTLAnlDCKRlBU;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$LaQ4BeEtJa4NkXoTLAnlDCKRlBU;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$LaQ4BeEtJa4NkXoTLAnlDCKRlBU(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$McDlXgwb1iLTzt_19E7zN5hQY (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$McDlXgw-b-1iLTzt_19E7zN5hQY)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$McDlXgw-b-1iLTzt_19E7zN5hQY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

.field private final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$McDlXgw-b-1iLTzt_19E7zN5hQY;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$McDlXgw-b-1iLTzt_19E7zN5hQY;->f$1:[I

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$McDlXgw-b-1iLTzt_19E7zN5hQY;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$McDlXgw-b-1iLTzt_19E7zN5hQY;->f$1:[I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$McDlXgw-b-1iLTzt_19E7zN5hQY(Lcom/gaia/ngallery/ui/AlbumActivity;[ILjava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

.field private final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs;->f$1:[I

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$SKlf6DnAGNDtztEzS2ckIDqjhLs;->f$1:[I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$SKlf6DnAGNDtztEzS2ckIDqjhLs(Lcom/gaia/ngallery/ui/AlbumActivity;[ILjava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$Selnek3puf2eNBPXMnzmQuazTc (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$Selnek3puf2eNBPXM-nzmQuazTc)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Selnek3puf2eNBPXM-nzmQuazTc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Selnek3puf2eNBPXM-nzmQuazTc;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Selnek3puf2eNBPXM-nzmQuazTc;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$Selnek3puf2eNBPXM-nzmQuazTc(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$Svi5bHDPhowYVreAAxJWfqtxES8 (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$Svi5bHDPhowYVreAAxJWfqtxES8)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Svi5bHDPhowYVreAAxJWfqtxES8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Svi5bHDPhowYVreAAxJWfqtxES8;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$Svi5bHDPhowYVreAAxJWfqtxES8;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$Svi5bHDPhowYVreAAxJWfqtxES8(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$X8As5z5RjBvYFowkur92s6kjtA0 (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$X8As5z5RjBvYFowkur92s6kjtA0)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$X8As5z5RjBvYFowkur92s6kjtA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$X8As5z5RjBvYFowkur92s6kjtA0;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$X8As5z5RjBvYFowkur92s6kjtA0;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$X8As5z5RjBvYFowkur92s6kjtA0(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$YuuLo4xNqMrjuJAdLgeQ9GMyPFE (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$YuuLo4xNqMrjuJAdLgeQ9GMyPFE)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$YuuLo4xNqMrjuJAdLgeQ9GMyPFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$YuuLo4xNqMrjuJAdLgeQ9GMyPFE;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$YuuLo4xNqMrjuJAdLgeQ9GMyPFE;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$YuuLo4xNqMrjuJAdLgeQ9GMyPFE(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$aGuMaJD6Mf29tFIKk2DfZNXXvns (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$aGuMaJD6Mf29tFIKk2DfZNXXvns)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$aGuMaJD6Mf29tFIKk2DfZNXXvns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$aGuMaJD6Mf29tFIKk2DfZNXXvns;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$aGuMaJD6Mf29tFIKk2DfZNXXvns;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$aGuMaJD6Mf29tFIKk2DfZNXXvns(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$cWJGorrlmzrYasXI53A__w661Xo (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$cWJGorrlmzrYasXI53A__w661Xo)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$cWJGorrlmzrYasXI53A__w661Xo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$cWJGorrlmzrYasXI53A__w661Xo;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$cWJGorrlmzrYasXI53A__w661Xo;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$cWJGorrlmzrYasXI53A__w661Xo(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$hVu01yany6i5t3U3TxyjOGAZuR0 (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$hVu01yany6i5t3U3TxyjOGAZuR0)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$hVu01yany6i5t3U3TxyjOGAZuR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$hVu01yany6i5t3U3TxyjOGAZuR0;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$hVu01yany6i5t3U3TxyjOGAZuR0;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$hVu01yany6i5t3U3TxyjOGAZuR0(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$qw9mBDA7cisppG053ATQIeqvBnI (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$qw9mBDA7cisppG053ATQIeqvBnI)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$qw9mBDA7cisppG053ATQIeqvBnI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$qw9mBDA7cisppG053ATQIeqvBnI;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$qw9mBDA7cisppG053ATQIeqvBnI;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$qw9mBDA7cisppG053ATQIeqvBnI(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$u6eE9LvRp5C2rxiuceiB7MxyGGc (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$u6eE9LvRp5C2rxiuceiB7MxyGGc)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$u6eE9LvRp5C2rxiuceiB7MxyGGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$u6eE9LvRp5C2rxiuceiB7MxyGGc;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$u6eE9LvRp5C2rxiuceiB7MxyGGc;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$u6eE9LvRp5C2rxiuceiB7MxyGGc(Lcom/gaia/ngallery/ui/AlbumActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$AlbumActivity$yBLjIG8_jveyLzyU_bIWVA9iWps (com.gaia.ngallery.ui.-$$Lambda$AlbumActivity$yBLjIG8_jveyLzyU_bIWVA9iWps)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$yBLjIG8_jveyLzyU_bIWVA9iWps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/AlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/AlbumActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$yBLjIG8_jveyLzyU_bIWVA9iWps;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$AlbumActivity$yBLjIG8_jveyLzyU_bIWVA9iWps;->f$0:Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/AlbumActivity;->lambda$yBLjIG8_jveyLzyU_bIWVA9iWps(Lcom/gaia/ngallery/ui/AlbumActivity;Landroid/view/View;)V

    return-void
.end method
