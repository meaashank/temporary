###### Class com.gaia.ngallery.ui.ImportMainActivity (com.gaia.ngallery.ui.ImportMainActivity)
.class public Lcom/gaia/ngallery/ui/ImportMainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ImportMainActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/b;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String; = "list_host_dir_fragment"


# instance fields
.field protected a:Lcom/gaia/ngallery/ui/d;

.field private d:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private e:Landroid/support/v7/widget/Toolbar;

.field private f:Lcom/gaia/ngallery/ui/b/e;

.field private g:Lcom/gaia/ngallery/k/i;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/gaia/ngallery/k/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/ImportMainActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/ImportMainActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/ImportMainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->h:Ljava/util/ArrayList;

    return-object p1
.end method

.method private synthetic a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    const/16 p1, -0x3e8

    .line 227
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->setResult(I)V

    .line 228
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->finish()V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .registers 4

    .line 231
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_RETURN_ALBUMFILES"

    .line 232
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->setResult(ILandroid/content/Intent;)V

    .line 234
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->d()V

    return-void
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/ImportMainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Lcom/gaia/ngallery/ui/ImportMainActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/ImportMainActivity;)Lcom/gaia/ngallery/ui/b/e;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->f:Lcom/gaia/ngallery/ui/b/e;

    return-object p0
.end method

.method private d()V
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 190
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    .line 191
    invoke-virtual {v0}, Lcom/gaia/ngallery/k/i;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_19

    .line 192
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/k/i;->cancel(Z)Z

    .line 195
    :cond_19
    new-instance v0, Lcom/gaia/ngallery/k/i;

    const/4 v2, 0x2

    new-instance v3, Lcom/gaia/ngallery/ui/ImportMainActivity$4;

    invoke-direct {v3, p0}, Lcom/gaia/ngallery/ui/ImportMainActivity$4;-><init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    invoke-direct {v0, p0, v2, v3}, Lcom/gaia/ngallery/k/i;-><init>(Landroid/content/Context;ILcom/gaia/ngallery/k/i$a;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v2, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/gaia/ngallery/k/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic lambda$w4OxyxKH5-LDYvCO32Hmyoh8W_U(Lcom/gaia/ngallery/ui/ImportMainActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$xI92XhUAVQ8wy9XXCEB5l4r-C7c(Lcom/gaia/ngallery/ui/ImportMainActivity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/ImportMainActivity;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->a:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->a:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/d;->dismiss()V

    .line 275
    :cond_d
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->a:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/d;->show()V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/b;",
            ">;)V"
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/gaia/ngallery/ui/a/b;

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_title_import_to:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->i:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/gaia/ngallery/ui/a/b;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 224
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$T4ACIOs4jqjsxRIhAebdduRpN8g;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$T4ACIOs4jqjsxRIhAebdduRpN8g;-><init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/prism/commons/a/a$b;)Lcom/prism/commons/a/a;

    .line 225
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$m0gTNQgIyvGrLDS4WVs1o6B3CBk;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$m0gTNQgIyvGrLDS4WVs1o6B3CBk;-><init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/prism/commons/a/a$a;)Lcom/prism/commons/a/a;

    .line 226
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$xI92XhUAVQ8wy9XXCEB5l4r-C7c;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$xI92XhUAVQ8wy9XXCEB5l4r-C7c;-><init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 230
    new-instance p1, Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$w4OxyxKH5-LDYvCO32Hmyoh8W_U;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$w4OxyxKH5-LDYvCO32Hmyoh8W_U;-><init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 236
    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/ui/a/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected b()V
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->a:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 280
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->a:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/d;->dismiss()V

    :cond_d
    return-void
.end method

.method public finish()V
    .registers 3

    .line 180
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 181
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    .line 182
    invoke-virtual {v0}, Lcom/gaia/ngallery/k/i;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_17

    .line 183
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/k/i;->cancel(Z)Z

    .line 185
    :cond_17
    invoke-static {}, Lcom/gaia/ngallery/h;->a()Lcom/gaia/ngallery/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/h;->d()V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 263
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 264
    instance-of v1, v0, Lcom/gaia/ngallery/ui/g;

    if-eqz v1, :cond_15

    .line 265
    check-cast v0, Lcom/gaia/ngallery/ui/g;

    invoke-interface {v0}, Lcom/gaia/ngallery/ui/g;->b()V

    goto :goto_18

    .line 267
    :cond_15
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/gaia/ngallery/i$k;->activity_import_main:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->setContentView(I)V

    .line 59
    sget p1, Lcom/gaia/ngallery/i$h;->refresh:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 60
    sget p1, Lcom/gaia/ngallery/i$h;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->e:Landroid/support/v7/widget/Toolbar;

    .line 61
    iget-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->e:Landroid/support/v7/widget/Toolbar;

    sget v0, Lcom/gaia/ngallery/i$n;->import_media_title:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->e:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 63
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-static {}, Lcom/gaia/ngallery/h;->a()Lcom/gaia/ngallery/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/h;->a(Landroid/content/Context;)V

    .line 65
    sget p1, Lcom/gaia/ngallery/i$h;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 66
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance v0, Lcom/gaia/ngallery/ui/c/a;

    .line 69
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/gaia/ngallery/i$f;->recycle_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 70
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/gaia/ngallery/i$e;->divide_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/gaia/ngallery/ui/c/a;-><init>(Landroid/content/Context;III)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 72
    new-instance v0, Lcom/gaia/ngallery/ui/b/e;

    new-instance v1, Lcom/gaia/ngallery/ui/ImportMainActivity$1;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/ImportMainActivity$1;-><init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/gaia/ngallery/ui/b/e;-><init>(Landroid/content/Context;Lcom/gaia/ngallery/f/c;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->f:Lcom/gaia/ngallery/ui/b/e;

    .line 102
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->f:Lcom/gaia/ngallery/ui/b/e;

    invoke-virtual {v0, v3}, Lcom/gaia/ngallery/ui/b/e;->a(Z)V

    .line 103
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->f:Lcom/gaia/ngallery/ui/b/e;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 104
    iget-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_c6

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 105
    iget-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/gaia/ngallery/ui/ImportMainActivity$2;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/ImportMainActivity$2;-><init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 111
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/gaia/ngallery/i$k;->layout_host_internal_storage_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->f:Lcom/gaia/ngallery/ui/b/e;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/b/e;->a(Landroid/view/View;)V

    .line 113
    new-instance p1, Lcom/gaia/ngallery/ui/d;

    sget v0, Lcom/gaia/ngallery/i$o;->CustomProgressDialog:I

    invoke-direct {p1, p0, v0}, Lcom/gaia/ngallery/ui/d;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->a:Lcom/gaia/ngallery/ui/d;

    .line 114
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_KEY_ALBUM_DIR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->i:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/gaia/ngallery/h;->a()Lcom/gaia/ngallery/h;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/ImportMainActivity$3;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/ImportMainActivity$3;-><init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/h;->a(Lcom/prism/ads/commons2/common/c;)V

    return-void

    nop

    :array_c6
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method protected onDestroy()V
    .registers 3

    .line 161
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    .line 163
    invoke-virtual {v0}, Lcom/gaia/ngallery/k/i;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_17

    .line 164
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->g:Lcom/gaia/ngallery/k/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/k/i;->cancel(Z)Z

    .line 166
    :cond_17
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity;->j:Lcom/gaia/ngallery/k/b;

    invoke-static {v0}, Lcom/gaia/ngallery/g/g;->a(Landroid/os/AsyncTask;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_c

    .line 173
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->finish()V

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 155
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 156
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 146
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 147
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 148
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 149
    :cond_16
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/app/Activity;)Z

    .line 150
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->d()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.ImportMainActivity.AnonymousClass1 (com.gaia.ngallery.ui.ImportMainActivity$1)
.class Lcom/gaia/ngallery/ui/ImportMainActivity$1;
.super Ljava/lang/Object;
.source "ImportMainActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/ImportMainActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/gaia/ngallery/ui/ImportMainActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$1;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 6

    const p1, 0x1020002

    if-nez p2, :cond_28

    .line 76
    invoke-static {}, Lcom/gaia/ngallery/ui/f;->a()Lcom/gaia/ngallery/ui/f;

    move-result-object p2

    .line 77
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$1;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "list_host_dir_fragment"

    .line 79
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "list_host_dir_fragment:choice"

    .line 80
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 82
    iget-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$1;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/a/a;->k(Landroid/content/Context;)V

    goto :goto_6e

    .line 84
    :cond_28
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$1;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->a(Lcom/gaia/ngallery/ui/ImportMainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 85
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {v0, p2}, Lcom/gaia/ngallery/ui/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/gaia/ngallery/ui/e;

    move-result-object p2

    .line 87
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$1;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "fragment_choice"

    .line 89
    invoke-virtual {v0, p1, p2, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "fragment:choice"

    .line 90
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 92
    invoke-static {}, Lcom/gaia/ngallery/ui/ImportMainActivity;->c()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "fagment was call"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$1;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/a/a;->j(Landroid/content/Context;)V

    :goto_6e
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    .line 72
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/ImportMainActivity$1;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .registers 3

    .line 72
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/ImportMainActivity$1;->b(Landroid/view/View;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.ImportMainActivity.AnonymousClass2 (com.gaia.ngallery.ui.ImportMainActivity$2)
.class Lcom/gaia/ngallery/ui/ImportMainActivity$2;
.super Ljava/lang/Object;
.source "ImportMainActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/ImportMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/ImportMainActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$2;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$2;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->b(Lcom/gaia/ngallery/ui/ImportMainActivity;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.ImportMainActivity.AnonymousClass3 (com.gaia.ngallery.ui.ImportMainActivity$3)
.class Lcom/gaia/ngallery/ui/ImportMainActivity$3;
.super Ljava/lang/Object;
.source "ImportMainActivity.java"

# interfaces
.implements Lcom/prism/ads/commons2/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/ImportMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/ImportMainActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$3;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .line 121
    iget-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$3;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/gaia/ngallery/a/a;->u(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public c()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$3;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gaia/ngallery/a/a;->v(Landroid/content/Context;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public d()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$3;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gaia/ngallery/a/a;->w(Landroid/content/Context;)V

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

###### Class com.gaia.ngallery.ui.ImportMainActivity.AnonymousClass4 (com.gaia.ngallery.ui.ImportMainActivity$4)
.class Lcom/gaia/ngallery/ui/ImportMainActivity$4;
.super Ljava/lang/Object;
.source "ImportMainActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/k/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/ImportMainActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/ImportMainActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$4;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$4;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->c(Lcom/gaia/ngallery/ui/ImportMainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 201
    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$4;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->a(Lcom/gaia/ngallery/ui/ImportMainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 202
    iget-object p1, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$4;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->d(Lcom/gaia/ngallery/ui/ImportMainActivity;)Lcom/gaia/ngallery/ui/b/e;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/ImportMainActivity$4;->a:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->a(Lcom/gaia/ngallery/ui/ImportMainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/b/e;->a(Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$ImportMainActivity$w4OxyxKH5LDYvCO32Hmyoh8W_U (com.gaia.ngallery.ui.-$$Lambda$ImportMainActivity$w4OxyxKH5-LDYvCO32Hmyoh8W_U)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$w4OxyxKH5-LDYvCO32Hmyoh8W_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$w4OxyxKH5-LDYvCO32Hmyoh8W_U;->f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$w4OxyxKH5-LDYvCO32Hmyoh8W_U;->f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/ImportMainActivity;->lambda$w4OxyxKH5-LDYvCO32Hmyoh8W_U(Lcom/gaia/ngallery/ui/ImportMainActivity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$ImportMainActivity$xI92XhUAVQ8wy9XXCEB5l4rC7c (com.gaia.ngallery.ui.-$$Lambda$ImportMainActivity$xI92XhUAVQ8wy9XXCEB5l4r-C7c)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$xI92XhUAVQ8wy9XXCEB5l4r-C7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$xI92XhUAVQ8wy9XXCEB5l4r-C7c;->f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$ImportMainActivity$xI92XhUAVQ8wy9XXCEB5l4r-C7c;->f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/ImportMainActivity;->lambda$xI92XhUAVQ8wy9XXCEB5l4r-C7c(Lcom/gaia/ngallery/ui/ImportMainActivity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$T4ACIOs4jqjsxRIhAebdduRpN8g (com.gaia.ngallery.ui.-$$Lambda$T4ACIOs4jqjsxRIhAebdduRpN8g)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$T4ACIOs4jqjsxRIhAebdduRpN8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$b;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$T4ACIOs4jqjsxRIhAebdduRpN8g;->f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskStart()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$T4ACIOs4jqjsxRIhAebdduRpN8g;->f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->a()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$m0gTNQgIyvGrLDS4WVs1o6B3CBk (com.gaia.ngallery.ui.-$$Lambda$m0gTNQgIyvGrLDS4WVs1o6B3CBk)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$m0gTNQgIyvGrLDS4WVs1o6B3CBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/ImportMainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$m0gTNQgIyvGrLDS4WVs1o6B3CBk;->f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskComplete()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$m0gTNQgIyvGrLDS4WVs1o6B3CBk;->f$0:Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/ImportMainActivity;->b()V

    return-void
.end method
