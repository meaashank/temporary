###### Class com.bumptech.glide.request.a.e (com.bumptech.glide.request.a.e)
.class public abstract Lcom/bumptech/glide/request/a/e;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/o<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "CustomViewTarget"

.field private static final d:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/request/a/e$a;

.field private f:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    sget v0, Lcom/bumptech/glide/k$f;->glide_custom_view_target_tag:I

    sput v0, Lcom/bumptech/glide/request/a/e;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/request/a/e;->a:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/bumptech/glide/request/a/e$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/e$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/e;->e:Lcom/bumptech/glide/request/a/e$a;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 268
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->a:Landroid/view/View;

    iget v1, p0, Lcom/bumptech/glide/request/a/e;->i:I

    if-nez v1, :cond_9

    sget v1, Lcom/bumptech/glide/request/a/e;->d:I

    goto :goto_b

    :cond_9
    iget v1, p0, Lcom/bumptech/glide/request/a/e;->i:I

    :goto_b
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private j()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->a:Landroid/view/View;

    iget v1, p0, Lcom/bumptech/glide/request/a/e;->i:I

    if-nez v1, :cond_9

    sget v1, Lcom/bumptech/glide/request/a/e;->d:I

    goto :goto_b

    :cond_9
    iget v1, p0, Lcom/bumptech/glide/request/a/e;->i:I

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->f:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a/e;->h:Z

    if-eqz v0, :cond_9

    goto :goto_14

    .line 281
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/request/a/e;->f:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a/e;->h:Z

    return-void

    :cond_14
    :goto_14
    return-void
.end method

.method private l()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->f:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a/e;->h:Z

    if-nez v0, :cond_9

    goto :goto_14

    .line 290
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/request/a/e;->f:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a/e;->h:Z

    return-void

    :cond_14
    :goto_14
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/bumptech/glide/request/a/e;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/request/a/e<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 169
    iget v0, p0, Lcom/bumptech/glide/request/a/e;->i:I

    if-nez v0, :cond_7

    .line 172
    iput p1, p0, Lcom/bumptech/glide/request/a/e;->i:I

    return-object p0

    .line 170
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot change the tag id once it has been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lcom/bumptech/glide/request/c;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 231
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/e;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 233
    instance-of v1, v0, Lcom/bumptech/glide/request/c;

    if-eqz v1, :cond_d

    .line 234
    check-cast v0, Lcom/bumptech/glide/request/c;

    return-object v0

    .line 236
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 209
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->e:Lcom/bumptech/glide/request/a/e$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a/e$a;->b()V

    .line 211
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a/e;->d(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-boolean p1, p0, Lcom/bumptech/glide/request/a/e;->g:Z

    if-nez p1, :cond_f

    .line 213
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/e;->l()V

    :cond_f
    return-void
.end method

.method public final a(Lcom/bumptech/glide/request/a/n;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 193
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->e:Lcom/bumptech/glide/request/a/e$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a/e$a;->a(Lcom/bumptech/glide/request/a/n;)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/request/c;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 224
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/bumptech/glide/request/a/e;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/e<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->e:Lcom/bumptech/glide/request/a/e$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/request/a/e$a;->b:Z

    return-object p0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 203
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/e;->k()V

    .line 204
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a/e;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Lcom/bumptech/glide/request/a/n;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->e:Lcom/bumptech/glide/request/a/e$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a/e$a;->b(Lcom/bumptech/glide/request/a/n;)V

    return-void
.end method

.method public final c()Lcom/bumptech/glide/request/a/e;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/e<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->f:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_5

    return-object p0

    .line 141
    :cond_5
    new-instance v0, Lcom/bumptech/glide/request/a/e$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/a/e$1;-><init>(Lcom/bumptech/glide/request/a/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/e;->f:Landroid/view/View$OnAttachStateChangeListener;

    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/e;->k()V

    return-object p0
.end method

.method public final d()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e;->a:Landroid/view/View;

    return-object v0
.end method

.method protected abstract d(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method final e()V
    .registers 3

    .line 250
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a/e;->a()Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 251
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 252
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->a()V

    :cond_f
    return-void
.end method

.method protected e(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method final f()V
    .registers 3

    .line 259
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a/e;->a()Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 261
    iput-boolean v1, p0, Lcom/bumptech/glide/request/a/e;->g:Z

    .line 262
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a/e;->g:Z

    :cond_f
    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/request/a/e;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.request.a.e.AnonymousClass1 (com.bumptech.glide.request.a.e$1)
.class Lcom/bumptech/glide/request/a/e$1;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/request/a/e;->c()Lcom/bumptech/glide/request/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/a/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/a/e;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/bumptech/glide/request/a/e$1;->a:Lcom/bumptech/glide/request/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 144
    iget-object p1, p0, Lcom/bumptech/glide/request/a/e$1;->a:Lcom/bumptech/glide/request/a/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a/e;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 149
    iget-object p1, p0, Lcom/bumptech/glide/request/a/e$1;->a:Lcom/bumptech/glide/request/a/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a/e;->f()V

    return-void
.end method

###### Class com.bumptech.glide.request.a.e.a (com.bumptech.glide.request.a.e$a)
.class final Lcom/bumptech/glide/request/a/e$a;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/e$a$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final c:I


# instance fields
.field b:Z

.field private final d:Landroid/view/View;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bumptech/glide/request/a/e$a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->e:Ljava/util/List;

    .line 308
    iput-object p1, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    return-void
.end method

.method private a(III)I
    .registers 6

    sub-int v0, p2, p3

    if-lez v0, :cond_5

    return v0

    .line 425
    :cond_5
    iget-boolean v0, p0, Lcom/bumptech/glide/request/a/e$a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    sub-int/2addr p1, p3

    if-lez p1, :cond_17

    return p1

    .line 452
    :cond_17
    iget-object p1, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_3d

    const/4 p1, -0x2

    if-ne p2, p1, :cond_3d

    const-string p1, "CustomViewTarget"

    const/4 p2, 0x4

    .line 453
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "CustomViewTarget"

    const-string p2, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    .line 454
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_32
    iget-object p1, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/request/a/e$a;->a(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_3d
    return v1
.end method

.method private static a(Landroid/content/Context;)I
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 313
    sget-object v0, Lcom/bumptech/glide/request/a/e$a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_2c

    const-string v0, "window"

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 316
    invoke-static {p0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 317
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 318
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 319
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/a/e$a;->a:Ljava/lang/Integer;

    .line 321
    :cond_2c
    sget-object p0, Lcom/bumptech/glide/request/a/e$a;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private a(II)V
    .registers 5

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/request/a/e$a;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/a/n;

    .line 330
    invoke-interface {v1, p1, p2}, Lcom/bumptech/glide/request/a/n;->a(II)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private a(I)Z
    .registers 3

    if-gtz p1, :cond_9

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method private b(II)Z
    .registers 3

    .line 396
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/e$a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/a/e$a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private c()I
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    iget-object v1, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 402
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 403
    :goto_19
    iget-object v2, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/request/a/e$a;->a(III)I

    move-result v0

    return v0
.end method

.method private d()I
    .registers 4

    .line 407
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 408
    iget-object v1, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 409
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 410
    :goto_19
    iget-object v2, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/request/a/e$a;->a(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method a()V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 340
    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/e$a;->d()I

    move-result v0

    .line 341
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/e$a;->c()I

    move-result v1

    .line 342
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/a/e$a;->b(II)Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    .line 346
    :cond_18
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/a/e$a;->a(II)V

    .line 347
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a/e$a;->b()V

    return-void
.end method

.method a(Lcom/bumptech/glide/request/a/n;)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 351
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/e$a;->d()I

    move-result v0

    .line 352
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/e$a;->c()I

    move-result v1

    .line 353
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/a/e$a;->b(II)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 354
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/a/n;->a(II)V

    return-void

    .line 360
    :cond_12
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 361
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1f
    iget-object p1, p0, Lcom/bumptech/glide/request/a/e$a;->f:Lcom/bumptech/glide/request/a/e$a$a;

    if-nez p1, :cond_35

    .line 364
    iget-object p1, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 365
    new-instance v0, Lcom/bumptech/glide/request/a/e$a$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/a/e$a$a;-><init>(Lcom/bumptech/glide/request/a/e$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->f:Lcom/bumptech/glide/request/a/e$a$a;

    .line 366
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->f:Lcom/bumptech/glide/request/a/e$a$a;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_35
    return-void
.end method

.method b()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 389
    iget-object v1, p0, Lcom/bumptech/glide/request/a/e$a;->f:Lcom/bumptech/glide/request/a/e$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_11
    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->f:Lcom/bumptech/glide/request/a/e$a$a;

    .line 392
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method b(Lcom/bumptech/glide/request/a/n;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.bumptech.glide.request.a.e.a.ViewTreeObserverOnPreDrawListenerC0043a (com.bumptech.glide.request.a.e$a$a)
.class final Lcom/bumptech/glide/request/a/e$a$a;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/a/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bumptech/glide/request/a/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/a/e$a;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/e$a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    const-string v0, "CustomViewTarget"

    const/4 v1, 0x2

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "CustomViewTarget"

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1f
    iget-object v0, p0, Lcom/bumptech/glide/request/a/e$a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/a/e$a;

    if-eqz v0, :cond_2c

    .line 489
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a/e$a;->a()V

    :cond_2c
    const/4 v0, 0x1

    return v0
.end method
