###### Class com.gaia.ngallery.ui.GalleryActivity (com.gaia.ngallery.ui.GalleryActivity)
.class public Lcom/gaia/ngallery/ui/GalleryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GalleryActivity.java"


# static fields
.field public static final a:Ljava/lang/String; = "KEY_SHOW_PROVERSION_AD"

.field private static final b:Ljava/lang/String;

.field private static j:I

.field private static k:Z

.field private static l:Lcom/prism/commons/e/c;


# instance fields
.field private c:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private d:Landroid/support/v7/widget/Toolbar;

.field private e:Landroid/view/View;

.field private f:Lcom/gaia/ngallery/ui/b/a;

.field private g:Landroid/support/v7/widget/PopupMenu;

.field private h:Lcom/gaia/ngallery/j/a;

.field private i:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 53
    const-class v0, Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->b:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 65
    sput v0, Lcom/gaia/ngallery/ui/GalleryActivity;->j:I

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/gaia/ngallery/ui/GalleryActivity;->k:Z

    .line 69
    new-instance v1, Lcom/prism/commons/e/c;

    sget v2, Lcom/gaia/ngallery/ui/GalleryActivity;->j:I

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/prism/commons/e/a;

    new-instance v4, Lcom/prism/commons/e/a;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    sget v6, Lcom/gaia/ngallery/i$n;->perm_explain_read_storage:I

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    aput-object v4, v3, v0

    new-instance v0, Lcom/prism/commons/e/a;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    sget v5, Lcom/gaia/ngallery/i$n;->perm_explain_write_storage:I

    invoke-direct {v0, v4, v5, v7}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    aput-object v0, v3, v7

    invoke-direct {v1, v2, v3}, Lcom/prism/commons/e/c;-><init>(I[Lcom/prism/commons/e/a;)V

    sput-object v1, Lcom/gaia/ngallery/ui/GalleryActivity;->l:Lcom/prism/commons/e/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 52
    sget-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    .line 273
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/b;->b(I)Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gaia/ngallery/ui/AlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "WORK_DIR"

    .line 275
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-static {}, Lcom/gaia/ngallery/g;->a()Lcom/gaia/ngallery/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/g;->d()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    .line 169
    sget-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->l:Lcom/prism/commons/e/c;

    new-instance v1, Lcom/gaia/ngallery/ui/GalleryActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity$3;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, p0, v1}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/b/b;)V
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 295
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->f:Lcom/gaia/ngallery/ui/b/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 3

    .line 396
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->f:Lcom/gaia/ngallery/ui/b/a;

    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/GalleryActivity;I)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/GalleryActivity;Ljava/util/List;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 3

    .line 370
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->f()V

    .line 371
    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    .line 372
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->i(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 411
    new-instance v2, Lcom/gaia/ngallery/model/e;

    invoke-direct {v2, p0, v1}, Lcom/gaia/ngallery/model/e;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 417
    :cond_1e
    new-instance p1, Lcom/gaia/ngallery/ui/a/b;

    sget v1, Lcom/gaia/ngallery/i$n;->dialog_title_import_to:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/gaia/ngallery/ui/a/b;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI;

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 423
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$D4jFuYr0Y2ri2R-ExvI5DblPD2I;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$D4jFuYr0Y2ri2R-ExvI5DblPD2I;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/b;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 426
    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/ui/a/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 52
    sput-boolean p0, Lcom/gaia/ngallery/ui/GalleryActivity;->k:Z

    return p0
.end method

.method private b()V
    .registers 3

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->d()V

    return-void
.end method

.method private synthetic b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 3

    .line 365
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/e;->c()Ljava/io/File;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/gaia/ngallery/ui/a;->b(Landroid/app/Activity;Ljava/io/File;)V

    .line 366
    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    .line 367
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->h(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    const-string p1, ""

    const/4 p2, 0x1

    .line 392
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 393
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->d()V

    return-void
.end method

.method private synthetic b(Ljava/util/List;)V
    .registers 3

    .line 424
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->f:Lcom/gaia/ngallery/ui/b/a;

    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/GalleryActivity;)Lcom/gaia/ngallery/ui/b/a;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->f:Lcom/gaia/ngallery/ui/b/a;

    return-object p0
.end method

.method private c()V
    .registers 3

    .line 283
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/b;->c()I

    move-result v0

    if-nez v0, :cond_11

    .line 284
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 286
    :cond_11
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_18
    return-void
.end method

.method private synthetic c(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 3

    .line 360
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/e;->c()Ljava/io/File;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/gaia/ngallery/ui/a;->a(Landroid/app/Activity;Ljava/io/File;)V

    .line 361
    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    .line 362
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->g(Landroid/content/Context;)V

    return-void
.end method

.method private d()V
    .registers 3

    .line 291
    sget-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->b:Ljava/lang/String;

    const-string v1, "REFRESH ==================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 293
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$oDNDrPcb5tNFiV7xHywbyXuxguw;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$oDNDrPcb5tNFiV7xHywbyXuxguw;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/gaia/ngallery/b/b;->a(Landroid/content/Context;Lcom/gaia/ngallery/b/b$b;)V

    return-void
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->c()V

    return-void
.end method

.method private synthetic d(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 4

    .line 353
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/gaia/ngallery/ui/ImportMainActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x64

    .line 354
    invoke-virtual {p0, p2, v0}, Lcom/gaia/ngallery/ui/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 355
    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    .line 356
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method private e()V
    .registers 4

    .line 339
    sget v0, Lcom/gaia/ngallery/i$h;->multiple_actions:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    .line 340
    new-instance v1, Lcom/gaia/ngallery/ui/GalleryActivity$5;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/GalleryActivity$5;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;)V

    .line 352
    sget v1, Lcom/gaia/ngallery/i$h;->ft_import_video_photo:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U;

    invoke-direct {v2, p0, v0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    sget v1, Lcom/gaia/ngallery/i$h;->ft_take_a_photo:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHH-FBU;

    invoke-direct {v2, p0, v0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHH-FBU;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    sget v1, Lcom/gaia/ngallery/i$h;->ft_take_a_video:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM;

    invoke-direct {v2, p0, v0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    sget v1, Lcom/gaia/ngallery/i$h;->ft_add_album:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iXRDjl64a--1xbxyGzLX7uP-r5U;

    invoke-direct {v2, p0, v0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iXRDjl64a--1xbxyGzLX7uP-r5U;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .registers 3

    .line 388
    new-instance v0, Lcom/gaia/ngallery/ui/a/e;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/a/e;-><init>()V

    .line 389
    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$DrP8OsYSc-LVLXvfel7XFNwwBRU;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$DrP8OsYSc-LVLXvfel7XFNwwBRU;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/e;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 395
    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$3e4wa5zManixquxZiskgcTWBrwo;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$3e4wa5zManixquxZiskgcTWBrwo;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/e;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 398
    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/ui/a/e;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$3e4wa5zManixquxZiskgcTWBrwo(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Lcom/gaia/ngallery/model/AlbumFolder;)V

    return-void
.end method

.method public static synthetic lambda$D4jFuYr0Y2ri2R-ExvI5DblPD2I(Lcom/gaia/ngallery/ui/GalleryActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$DrP8OsYSc-LVLXvfel7XFNwwBRU(Lcom/gaia/ngallery/ui/GalleryActivity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$IMwKHqI746Fd3XYjb8CD89TK8AM(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Xz7lbAmFfDMKz8XdR9n2sObRm5U(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->d(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$fZ5yPBjFa5abDz-pxIW39jgN3Kw(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->d()V

    return-void
.end method

.method public static synthetic lambda$iAn0zOFi_sdTqwkxLF3JpWEHjlI(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$iXRDjl64a--1xbxyGzLX7uP-r5U(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$oDNDrPcb5tNFiV7xHywbyXuxguw(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/b/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Lcom/gaia/ngallery/b/b;)V

    return-void
.end method

.method public static synthetic lambda$zbKSnX3_M5nmIpkIHnz2NHH-FBU(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->c(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 6

    .line 300
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gaia/ngallery/b/b;->b(I)Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/e;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/e;->a(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_45

    .line 304
    :cond_1d
    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->g:Landroid/support/v7/widget/PopupMenu;

    .line 305
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->g:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v1, Lcom/gaia/ngallery/i$l;->menu_on_album:I

    iget-object v2, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->g:Landroid/support/v7/widget/PopupMenu;

    .line 306
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 305
    invoke-virtual {p1, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 308
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->g:Landroid/support/v7/widget/PopupMenu;

    new-instance v1, Lcom/gaia/ngallery/ui/GalleryActivity$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/gaia/ngallery/ui/GalleryActivity$4;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/model/AlbumFolder;I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 335
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->g:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void

    :cond_45
    :goto_45
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 378
    sget-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 384
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget p1, Lcom/gaia/ngallery/i$k;->activity_gallery:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->setContentView(I)V

    .line 83
    sget p1, Lcom/gaia/ngallery/i$h;->refresh:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 84
    sget p1, Lcom/gaia/ngallery/i$h;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->d:Landroid/support/v7/widget/Toolbar;

    .line 85
    sget p1, Lcom/gaia/ngallery/i$h;->empty_view:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->e:Landroid/view/View;

    .line 86
    sget p1, Lcom/gaia/ngallery/i$h;->fl_ad_container:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->i:Landroid/widget/FrameLayout;

    .line 87
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 88
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    sget v1, Lcom/gaia/ngallery/i$n;->module_name_gallery:I

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 91
    sget p1, Lcom/gaia/ngallery/i$h;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 92
    invoke-static {p0}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    .line 93
    div-int/2addr v1, v2

    .line 94
    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v3, p0, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 95
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    new-instance v2, Lcom/gaia/ngallery/ui/b/a;

    new-instance v3, Lcom/gaia/ngallery/ui/GalleryActivity$1;

    invoke-direct {v3, p0}, Lcom/gaia/ngallery/ui/GalleryActivity$1;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    invoke-direct {v2, p0, v1, v3}, Lcom/gaia/ngallery/ui/b/a;-><init>(Landroid/content/Context;ILcom/gaia/ngallery/f/c;)V

    iput-object v2, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->f:Lcom/gaia/ngallery/ui/b/a;

    .line 108
    iget-object v1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->f:Lcom/gaia/ngallery/ui/b/a;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_d6

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 110
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$fZ5yPBjFa5abDz-pxIW39jgN3Kw;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$fZ5yPBjFa5abDz-pxIW39jgN3Kw;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 111
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->e()V

    .line 112
    new-instance p1, Lcom/gaia/ngallery/j/a;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/j/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->h:Lcom/gaia/ngallery/j/a;

    .line 113
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->h:Lcom/gaia/ngallery/j/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/j/a;->a()V

    .line 114
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Landroid/content/Intent;)V

    .line 116
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/e;->h()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 117
    sget-object p1, Lcom/gaia/ngallery/ui/GalleryActivity;->b:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "show gallery banner ad"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 119
    invoke-static {}, Lcom/gaia/ngallery/f;->a()Lcom/prism/ads/commons2/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0, v0, v1}, Lcom/prism/ads/commons2/b;->a(Landroid/content/Context;Lcom/prism/ads/commons2/common/c;Landroid/view/ViewGroup;)V

    goto :goto_c2

    .line 122
    :cond_bc
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->i:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 124
    :goto_c2
    invoke-static {}, Lcom/gaia/ngallery/g;->a()Lcom/gaia/ngallery/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/g;->a(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/gaia/ngallery/g;->a()Lcom/gaia/ngallery/g;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/GalleryActivity$2;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/g;->a(Lcom/prism/ads/commons2/common/c;)V

    return-void

    :array_d6
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 217
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->a()Z

    move-result v0

    if-nez v0, :cond_15

    .line 218
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$l;->menu_gallery_activity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    .line 221
    :cond_15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .registers 1

    .line 251
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 431
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 432
    sget-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->b:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_d

    .line 258
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->finish()V

    goto :goto_17

    .line 259
    :cond_d
    sget v0, Lcom/gaia/ngallery/i$h;->action_standalone_version_ad:I

    if-ne p1, v0, :cond_17

    .line 260
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->q(Landroid/content/Context;)V

    .line 261
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->b()V

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 403
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 404
    sget-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->b:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
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

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 228
    sget-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->l:Lcom/prism/commons/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prism/commons/e/c;->a(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 233
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 234
    sget-object v0, Lcom/gaia/ngallery/ui/GalleryActivity;->b:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 236
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 237
    :cond_1d
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/app/Activity;)Z

    .line 238
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->h:Lcom/gaia/ngallery/j/a;

    invoke-virtual {v0}, Lcom/gaia/ngallery/j/a;->b()V

    .line 241
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity;->f:Lcom/gaia/ngallery/ui/b/a;

    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/b/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 246
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.GalleryActivity.AnonymousClass1 (com.gaia.ngallery.ui.GalleryActivity$1)
.class Lcom/gaia/ngallery/ui/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$1;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 3

    .line 99
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$1;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Lcom/gaia/ngallery/ui/GalleryActivity;I)V

    .line 100
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$1;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    .line 96
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity$1;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity$1;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .registers 3

    .line 96
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity$1;->b(Landroid/view/View;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.GalleryActivity.AnonymousClass2 (com.gaia.ngallery.ui.GalleryActivity$2)
.class Lcom/gaia/ngallery/ui/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/prism/ads/commons2/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$2;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

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

    .line 133
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$2;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/gaia/ngallery/a/a;->r(Landroid/content/Context;)V

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

    .line 146
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity$2;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gaia/ngallery/a/a;->s(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 147
    invoke-static {v0}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Z)Z

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public d()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity$2;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gaia/ngallery/a/a;->t(Landroid/content/Context;)V

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

###### Class com.gaia.ngallery.ui.GalleryActivity.AnonymousClass3 (com.gaia.ngallery.ui.GalleryActivity$3)
.class Lcom/gaia/ngallery/ui/GalleryActivity$3;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/prism/commons/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/GalleryActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;Landroid/content/Intent;)V
    .registers 3

    .line 169
    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/prism/commons/e/c;)V
    .registers 3

    .line 172
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {p2, p1, p0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    .line 173
    invoke-static {}, Lcom/gaia/ngallery/ui/GalleryActivity;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dealWithIntent request cancel"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 210
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {p2, p1, p0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    return-void
.end method

.method public b(ILcom/prism/commons/e/c;)V
    .registers 4

    .line 178
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p1

    iget-object p2, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/e;->b(Landroid/content/Context;)V

    .line 179
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->a:Landroid/content/Intent;

    const-string p2, "KEY_SHOW_PROVERSION_AD"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 180
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    .line 181
    :cond_1d
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->b(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    .line 182
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->a:Landroid/content/Intent;

    const-string p2, "KEY_START_GALLEY_CMD"

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3d

    .line 184
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/e;->c()Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/a;->a(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_94

    :cond_3d
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4e

    .line 186
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/e;->c()Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/a;->b(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_94

    .line 188
    :cond_4e
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SEND"

    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_77

    .line 190
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->a:Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_94

    .line 192
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Lcom/gaia/ngallery/ui/GalleryActivity;Ljava/util/List;)V

    goto :goto_94

    :cond_77
    const-string p2, "android.intent.action.SEND_MULTIPLE"

    .line 197
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 198
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->a:Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_94

    .line 200
    iget-object p2, p0, Lcom/gaia/ngallery/ui/GalleryActivity$3;->b:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p2, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->a(Lcom/gaia/ngallery/ui/GalleryActivity;Ljava/util/List;)V

    :cond_94
    :goto_94
    return-void
.end method

###### Class com.gaia.ngallery.ui.GalleryActivity.AnonymousClass4 (com.gaia.ngallery.ui.GalleryActivity$4)
.class Lcom/gaia/ngallery/ui/GalleryActivity$4;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/GalleryActivity;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/model/AlbumFolder;

.field final synthetic b:I

.field final synthetic c:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/model/AlbumFolder;I)V
    .registers 4

    .line 308
    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->c:Lcom/gaia/ngallery/ui/GalleryActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->a:Lcom/gaia/ngallery/model/AlbumFolder;

    iput p3, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(ILjava/lang/Void;)V
    .registers 3

    .line 315
    iget-object p2, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->c:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->c(Lcom/gaia/ngallery/ui/GalleryActivity;)Lcom/gaia/ngallery/ui/b/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gaia/ngallery/ui/b/a;->a(I)V

    .line 316
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->c:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->d(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .registers 3

    .line 323
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->c:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->c(Lcom/gaia/ngallery/ui/GalleryActivity;)Lcom/gaia/ngallery/ui/b/a;

    move-result-object p1

    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .line 326
    invoke-static {}, Lcom/gaia/ngallery/ui/GalleryActivity;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "onActionFailed"

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    iget-object p2, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->c:Lcom/gaia/ngallery/ui/GalleryActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rename "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Failed!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 328
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->c:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->b(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    return-void
.end method

.method public static synthetic lambda$7MoXyB558yXCgEfn01axUP8KdmY(Lcom/gaia/ngallery/ui/GalleryActivity$4;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity$4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$Jo0igvluACLJGwP7AC0N-5P7D4U(Lcom/gaia/ngallery/ui/GalleryActivity$4;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/GalleryActivity$4;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$W09hDeqkWh-f7zreZCRKsa1zdhA(Lcom/gaia/ngallery/ui/GalleryActivity$4;ILjava/lang/Void;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity$4;->a(ILjava/lang/Void;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 312
    sget v0, Lcom/gaia/ngallery/i$h;->menu_delete_album:I

    if-ne p1, v0, :cond_23

    .line 313
    new-instance p1, Lcom/gaia/ngallery/ui/a/g;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->a:Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gaia/ngallery/ui/a/g;-><init>(Ljava/lang/String;)V

    .line 314
    iget v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->b:I

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$W09hDeqkWh-f7zreZCRKsa1zdhA;

    invoke-direct {v1, p0, v0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$W09hDeqkWh-f7zreZCRKsa1zdhA;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity$4;I)V

    invoke-virtual {p1, v1}, Lcom/gaia/ngallery/ui/a/g;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 318
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->c:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/a/g;->a(Landroid/app/Activity;)V

    goto :goto_4f

    .line 319
    :cond_23
    sget v0, Lcom/gaia/ngallery/i$h;->menu_rename_album:I

    if-ne p1, v0, :cond_4f

    .line 320
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object p1

    iget v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->b:I

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/b/b;->b(I)Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object p1

    .line 321
    new-instance v0, Lcom/gaia/ngallery/ui/a/i;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/ui/a/i;-><init>(Ljava/lang/String;)V

    .line 322
    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$7MoXyB558yXCgEfn01axUP8KdmY;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$7MoXyB558yXCgEfn01axUP8KdmY;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/i;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 325
    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N-5P7D4U;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N-5P7D4U;-><init>(Lcom/gaia/ngallery/ui/GalleryActivity$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/i;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 330
    iget-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$4;->c:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/i;->a(Landroid/app/Activity;)V

    :cond_4f
    :goto_4f
    const/4 p1, 0x1

    return p1
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$4$7MoXyB558yXCgEfn01axUP8KdmY (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$4$7MoXyB558yXCgEfn01axUP8KdmY)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$7MoXyB558yXCgEfn01axUP8KdmY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity$4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$7MoXyB558yXCgEfn01axUP8KdmY;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$7MoXyB558yXCgEfn01axUP8KdmY;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity$4;->lambda$7MoXyB558yXCgEfn01axUP8KdmY(Lcom/gaia/ngallery/ui/GalleryActivity$4;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N5P7D4U (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N-5P7D4U)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N-5P7D4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity$4;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N-5P7D4U;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N-5P7D4U;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N-5P7D4U;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$Jo0igvluACLJGwP7AC0N-5P7D4U;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity$4;->lambda$Jo0igvluACLJGwP7AC0N-5P7D4U(Lcom/gaia/ngallery/ui/GalleryActivity$4;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$4$W09hDeqkWhf7zreZCRKsa1zdhA (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$4$W09hDeqkWh-f7zreZCRKsa1zdhA)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$W09hDeqkWh-f7zreZCRKsa1zdhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity$4;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$W09hDeqkWh-f7zreZCRKsa1zdhA;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;

    iput p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$W09hDeqkWh-f7zreZCRKsa1zdhA;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$W09hDeqkWh-f7zreZCRKsa1zdhA;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity$4;

    iget v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$4$W09hDeqkWh-f7zreZCRKsa1zdhA;->f$1:I

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/GalleryActivity$4;->lambda$W09hDeqkWh-f7zreZCRKsa1zdhA(Lcom/gaia/ngallery/ui/GalleryActivity$4;ILjava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.GalleryActivity.AnonymousClass5 (com.gaia.ngallery.ui.GalleryActivity$5)
.class Lcom/gaia/ngallery/ui/GalleryActivity$5;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/GalleryActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/gaia/ngallery/ui/GalleryActivity$5;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/gaia/ngallery/ui/GalleryActivity$5;->a:Lcom/gaia/ngallery/ui/GalleryActivity;

    const-string v1, "SCENCE_HOME"

    invoke-static {v0, v1}, Lcom/gaia/ngallery/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$3e4wa5zManixquxZiskgcTWBrwo (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$3e4wa5zManixquxZiskgcTWBrwo)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$3e4wa5zManixquxZiskgcTWBrwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$3e4wa5zManixquxZiskgcTWBrwo;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$3e4wa5zManixquxZiskgcTWBrwo;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$3e4wa5zManixquxZiskgcTWBrwo(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/model/AlbumFolder;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$D4jFuYr0Y2ri2RExvI5DblPD2I (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$D4jFuYr0Y2ri2R-ExvI5DblPD2I)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$D4jFuYr0Y2ri2R-ExvI5DblPD2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$D4jFuYr0Y2ri2R-ExvI5DblPD2I;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$D4jFuYr0Y2ri2R-ExvI5DblPD2I;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$D4jFuYr0Y2ri2R-ExvI5DblPD2I(Lcom/gaia/ngallery/ui/GalleryActivity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$DrP8OsYScLVLXvfel7XFNwwBRU (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$DrP8OsYSc-LVLXvfel7XFNwwBRU)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$DrP8OsYSc-LVLXvfel7XFNwwBRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$DrP8OsYSc-LVLXvfel7XFNwwBRU;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$DrP8OsYSc-LVLXvfel7XFNwwBRU;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$DrP8OsYSc-LVLXvfel7XFNwwBRU(Lcom/gaia/ngallery/ui/GalleryActivity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

.field private final synthetic f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM;->f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$IMwKHqI746Fd3XYjb8CD89TK8AM;->f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$IMwKHqI746Fd3XYjb8CD89TK8AM(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

.field private final synthetic f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U;->f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$Xz7lbAmFfDMKz8XdR9n2sObRm5U;->f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$Xz7lbAmFfDMKz8XdR9n2sObRm5U(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$fZ5yPBjFa5abDzpxIW39jgN3Kw (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$fZ5yPBjFa5abDz-pxIW39jgN3Kw)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$fZ5yPBjFa5abDz-pxIW39jgN3Kw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$fZ5yPBjFa5abDz-pxIW39jgN3Kw;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$fZ5yPBjFa5abDz-pxIW39jgN3Kw;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$fZ5yPBjFa5abDz-pxIW39jgN3Kw(Lcom/gaia/ngallery/ui/GalleryActivity;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iAn0zOFi_sdTqwkxLF3JpWEHjlI;

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

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$iAn0zOFi_sdTqwkxLF3JpWEHjlI(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$iXRDjl64a1xbxyGzLX7uPr5U (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$iXRDjl64a--1xbxyGzLX7uP-r5U)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iXRDjl64a--1xbxyGzLX7uP-r5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

.field private final synthetic f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iXRDjl64a--1xbxyGzLX7uP-r5U;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iXRDjl64a--1xbxyGzLX7uP-r5U;->f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iXRDjl64a--1xbxyGzLX7uP-r5U;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$iXRDjl64a--1xbxyGzLX7uP-r5U;->f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$iXRDjl64a--1xbxyGzLX7uP-r5U(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$oDNDrPcb5tNFiV7xHywbyXuxguw (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$oDNDrPcb5tNFiV7xHywbyXuxguw)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$oDNDrPcb5tNFiV7xHywbyXuxguw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/b/b$b;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$oDNDrPcb5tNFiV7xHywbyXuxguw;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    return-void
.end method


# virtual methods
.method public final onLoadSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$oDNDrPcb5tNFiV7xHywbyXuxguw;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    check-cast p1, Lcom/gaia/ngallery/b/b;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$oDNDrPcb5tNFiV7xHywbyXuxguw(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/b/b;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHHFBU (com.gaia.ngallery.ui.-$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHH-FBU)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHH-FBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

.field private final synthetic f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHH-FBU;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHH-FBU;->f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHH-FBU;->f$0:Lcom/gaia/ngallery/ui/GalleryActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$GalleryActivity$zbKSnX3_M5nmIpkIHnz2NHH-FBU;->f$1:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/GalleryActivity;->lambda$zbKSnX3_M5nmIpkIHnz2NHH-FBU(Lcom/gaia/ngallery/ui/GalleryActivity;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method
