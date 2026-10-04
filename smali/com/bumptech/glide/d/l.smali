###### Class com.bumptech.glide.d.l (com.bumptech.glide.d.l)
.class public Lcom/bumptech/glide/d/l;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d/l$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "com.bumptech.glide.manager"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final d:Ljava/lang/String; = "RMRetriever"

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:Ljava/lang/String; = "key"

.field private static final n:Lcom/bumptech/glide/d/l$a;


# instance fields
.field final b:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/d/k;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/bumptech/glide/d/o;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Lcom/bumptech/glide/m;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/bumptech/glide/d/l$a;

.field private final k:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 486
    new-instance v0, Lcom/bumptech/glide/d/l$1;

    invoke-direct {v0}, Lcom/bumptech/glide/d/l$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/d/l;->n:Lcom/bumptech/glide/d/l$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/d/l$a;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/d/l$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->b:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->c:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->k:Landroid/support/v4/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->l:Landroid/support/v4/util/ArrayMap;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/l;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_29

    goto :goto_2b

    .line 80
    :cond_29
    sget-object p1, Lcom/bumptech/glide/d/l;->n:Lcom/bumptech/glide/d/l$a;

    :goto_2b
    iput-object p1, p0, Lcom/bumptech/glide/d/l;->j:Lcom/bumptech/glide/d/l$a;

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/bumptech/glide/d/l;->i:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->l:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 242
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/d/l;->l:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/d/l;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    const v0, 0x1020002

    .line 246
    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    .line 248
    :goto_16
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 249
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->l:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_27

    goto :goto_36

    .line 253
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_36

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_16

    .line 259
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/bumptech/glide/d/l;->l:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->k:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 217
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/d/l;->k:Landroid/support/v4/util/ArrayMap;

    .line 216
    invoke-static {v0, v1}, Lcom/bumptech/glide/d/l;->a(Ljava/util/Collection;Ljava/util/Map;)V

    const v0, 0x1020002

    .line 219
    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    .line 221
    :goto_1a
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 222
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->k:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2b

    goto :goto_3a

    .line 226
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_3a

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1a

    .line 233
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/bumptech/glide/d/l;->k:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    return-object v0
.end method

.method private a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/d/k;
    .registers 5
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    .line 358
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/k;

    if-nez v0, :cond_41

    .line 360
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/k;

    if-nez v0, :cond_41

    .line 362
    new-instance v0, Lcom/bumptech/glide/d/k;

    invoke-direct {v0}, Lcom/bumptech/glide/d/k;-><init>()V

    .line 363
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/d/k;->a(Landroid/app/Fragment;)V

    if-eqz p3, :cond_25

    .line 365
    invoke-virtual {v0}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/d/a;->a()V

    .line 367
    :cond_25
    iget-object p2, p0, Lcom/bumptech/glide/d/l;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    const-string p3, "com.bumptech.glide.manager"

    invoke-virtual {p2, v0, p3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 369
    iget-object p2, p0, Lcom/bumptech/glide/d/l;->i:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_41
    return-object v0
.end method

.method private a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/d/o;
    .registers 5
    .param p1    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    .line 411
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/o;

    if-nez v0, :cond_41

    .line 413
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/o;

    if-nez v0, :cond_41

    .line 415
    new-instance v0, Lcom/bumptech/glide/d/o;

    invoke-direct {v0}, Lcom/bumptech/glide/d/o;-><init>()V

    .line 416
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/d/o;->a(Landroid/support/v4/app/Fragment;)V

    if-eqz p3, :cond_25

    .line 418
    invoke-virtual {v0}, Lcom/bumptech/glide/d/o;->a()Lcom/bumptech/glide/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/d/a;->a()V

    .line 420
    :cond_25
    iget-object p2, p0, Lcom/bumptech/glide/d/l;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const-string p3, "com.bumptech.glide.manager"

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 422
    iget-object p2, p0, Lcom/bumptech/glide/d/l;->i:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_41
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/m;
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-direct {p0, p2, p3, p4}, Lcom/bumptech/glide/d/l;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/d/k;

    move-result-object p2

    .line 383
    invoke-virtual {p2}, Lcom/bumptech/glide/d/k;->b()Lcom/bumptech/glide/m;

    move-result-object p3

    if-nez p3, :cond_1f

    .line 386
    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p3

    .line 387
    iget-object p4, p0, Lcom/bumptech/glide/d/l;->j:Lcom/bumptech/glide/d/l$a;

    .line 389
    invoke-virtual {p2}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bumptech/glide/d/k;->c()Lcom/bumptech/glide/d/m;

    move-result-object v1

    .line 388
    invoke-interface {p4, p3, v0, v1, p1}, Lcom/bumptech/glide/d/l$a;->a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p3

    .line 390
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/d/k;->a(Lcom/bumptech/glide/m;)V

    :cond_1f
    return-object p3
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/m;
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 435
    invoke-direct {p0, p2, p3, p4}, Lcom/bumptech/glide/d/l;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/d/o;

    move-result-object p2

    .line 436
    invoke-virtual {p2}, Lcom/bumptech/glide/d/o;->b()Lcom/bumptech/glide/m;

    move-result-object p3

    if-nez p3, :cond_1f

    .line 439
    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p3

    .line 440
    iget-object p4, p0, Lcom/bumptech/glide/d/l;->j:Lcom/bumptech/glide/d/l$a;

    .line 442
    invoke-virtual {p2}, Lcom/bumptech/glide/d/o;->a()Lcom/bumptech/glide/d/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bumptech/glide/d/o;->c()Lcom/bumptech/glide/d/m;

    move-result-object v1

    .line 441
    invoke-interface {p4, p3, v0, v1, p1}, Lcom/bumptech/glide/d/l$a;->a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p3

    .line 443
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/d/o;->a(Lcom/bumptech/glide/m;)V

    :cond_1f
    return-object p3
.end method

.method private a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V
    .registers 5
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/ArrayMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2f

    .line 272
    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 273
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 274
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/d/l;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_e

    .line 279
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/d/l;->b(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    :cond_32
    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/util/Map;)V
    .registers 4
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 203
    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_7

    .line 205
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_7

    .line 208
    :cond_1c
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bumptech/glide/d/l;->a(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_7

    :cond_2f
    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/bumptech/glide/m;
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->h:Lcom/bumptech/glide/m;

    if-nez v0, :cond_2c

    .line 88
    monitor-enter p0

    .line 89
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/d/l;->h:Lcom/bumptech/glide/m;

    if-nez v0, :cond_27

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/bumptech/glide/d/l;->j:Lcom/bumptech/glide/d/l$a;

    new-instance v2, Lcom/bumptech/glide/d/b;

    invoke-direct {v2}, Lcom/bumptech/glide/d/b;-><init>()V

    new-instance v3, Lcom/bumptech/glide/d/g;

    invoke-direct {v3}, Lcom/bumptech/glide/d/g;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 98
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/d/l$a;->a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/d/l;->h:Lcom/bumptech/glide/m;

    .line 104
    :cond_27
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw p1

    .line 107
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/bumptech/glide/d/l;->h:Lcom/bumptech/glide/m;

    return-object p1
.end method

.method private b(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V
    .registers 7
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/ArrayMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 290
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/d/l;->m:Landroid/os/Bundle;

    const-string v2, "key"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 293
    :try_start_b
    iget-object v1, p0, Lcom/bumptech/glide/d/l;->m:Landroid/os/Bundle;

    const-string v2, "key"

    invoke-virtual {p1, v1, v2}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    move-object v0, v1

    :catch_14
    if-nez v0, :cond_17

    return-void

    .line 300
    :cond_17
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 301
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_31

    .line 303
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/d/l;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    :cond_31
    move v0, v3

    goto :goto_1
.end method

.method private c(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 311
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 312
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 313
    :cond_7
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    .line 314
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/l;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method private static c(Landroid/app/Activity;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_15

    .line 323
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method private static d(Landroid/app/Activity;)Z
    .registers 1

    .line 404
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 154
    invoke-static {}, Lcom/bumptech/glide/h/l;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 155
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 157
    :cond_f
    invoke-static {p1}, Lcom/bumptech/glide/d/l;->c(Landroid/app/Activity;)V

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 160
    invoke-static {p1}, Lcom/bumptech/glide/d/l;->d(Landroid/app/Activity;)Z

    move-result v2

    .line 159
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Fragment;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 336
    invoke-static {}, Lcom/bumptech/glide/h/l;->d()Z

    move-result v0

    if-nez v0, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_13

    goto :goto_24

    .line 339
    :cond_13
    invoke-virtual {p1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 337
    :cond_24
    :goto_24
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 333
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;)Lcom/bumptech/glide/m;
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_36

    .line 114
    invoke-static {}, Lcom/bumptech/glide/h/l;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_31

    .line 115
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_17

    .line 116
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 117
    :cond_17
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_22

    .line 118
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/app/Activity;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 119
    :cond_22
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_31

    .line 120
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 124
    :cond_31
    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 113
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/bumptech/glide/h/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 144
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 146
    :cond_1c
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/m;
    .registers 5
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 129
    invoke-static {}, Lcom/bumptech/glide/h/l;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 130
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 132
    :cond_f
    invoke-static {p1}, Lcom/bumptech/glide/d/l;->c(Landroid/app/Activity;)V

    .line 133
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-static {p1}, Lcom/bumptech/glide/d/l;->d(Landroid/app/Activity;)Z

    move-result v2

    .line 134
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;)Lcom/bumptech/glide/m;
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 167
    invoke-static {}, Lcom/bumptech/glide/h/l;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 171
    :cond_13
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/l;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_36

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 184
    :cond_36
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_4d

    .line 185
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/d/l;->a(Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 186
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/m;

    move-result-object p1

    goto :goto_4c

    :cond_48
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/d/l;->a(Landroid/app/Activity;)Lcom/bumptech/glide/m;

    move-result-object p1

    :goto_4c
    return-object p1

    .line 190
    :cond_4d
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/d/l;->a(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_58

    .line 192
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/d/l;->a(Landroid/app/Activity;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    .line 194
    :cond_58
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/app/Fragment;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/app/Activity;)Lcom/bumptech/glide/d/k;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/d/l;->d(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x0

    .line 348
    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/d/k;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/d/o;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 398
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/d/l;->d(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x0

    .line 397
    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/d/l;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/d/o;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 453
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_46

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_21

    .line 460
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/FragmentManager;

    .line 462
    iget-object p1, p0, Lcom/bumptech/glide/d/l;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_21

    .line 455
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    .line 457
    iget-object p1, p0, Lcom/bumptech/glide/d/l;->b:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_21
    if-eqz v2, :cond_44

    if-nez p1, :cond_44

    const-string p1, "RMRetriever"

    const/4 v0, 0x5

    .line 468
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, "RMRetriever"

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return v2

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_16
        :pswitch_a
    .end packed-switch
.end method

###### Class com.bumptech.glide.d.l.AnonymousClass1 (com.bumptech.glide.d.l$1)
.class Lcom/bumptech/glide/d/l$1;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Lcom/bumptech/glide/d/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)Lcom/bumptech/glide/m;
    .registers 6
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/d/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 491
    new-instance v0, Lcom/bumptech/glide/m;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)V

    return-object v0
.end method

###### Class com.bumptech.glide.d.l.a (com.bumptech.glide.d.l$a)
.class public interface abstract Lcom/bumptech/glide/d/l$a;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)Lcom/bumptech/glide/m;
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/d/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
