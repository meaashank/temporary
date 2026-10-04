###### Class com.bumptech.glide.i (com.bumptech.glide.i)
.class public Lcom/bumptech/glide/i;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/i$c;,
        Lcom/bumptech/glide/i$d;,
        Lcom/bumptech/glide/i$b;,
        Lcom/bumptech/glide/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/bumptech/glide/i$d;

.field private final c:Lcom/bumptech/glide/m;

.field private final d:Lcom/bumptech/glide/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/i$a;Lcom/bumptech/glide/i$b;I)V
    .registers 6
    .param p1    # Lcom/bumptech/glide/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/i$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/i$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/m;",
            "Lcom/bumptech/glide/i$a<",
            "TT;>;",
            "Lcom/bumptech/glide/i$b<",
            "TT;>;I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/bumptech/glide/i;->h:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/bumptech/glide/i;->j:Z

    .line 125
    iput-object p1, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/m;

    .line 126
    iput-object p2, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/i$a;

    .line 127
    iput-object p3, p0, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/i$b;

    .line 128
    iput p4, p0, Lcom/bumptech/glide/i;->a:I

    .line 129
    new-instance p1, Lcom/bumptech/glide/i$d;

    add-int/2addr p4, v0

    invoke-direct {p1, p4}, Lcom/bumptech/glide/i$d;-><init>(I)V

    iput-object p1, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/i$d;

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 219
    :goto_2
    iget v2, p0, Lcom/bumptech/glide/i;->a:I

    if-ge v1, v2, :cond_14

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/m;

    iget-object v3, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/i$d;

    invoke-virtual {v3, v0, v0}, Lcom/bumptech/glide/i$d;->a(II)Lcom/bumptech/glide/i$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-void
.end method

.method private a(II)V
    .registers 7

    if-ge p1, p2, :cond_b

    .line 161
    iget v0, p0, Lcom/bumptech/glide/i;->f:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, p2

    goto :goto_12

    .line 165
    :cond_b
    iget v0, p0, Lcom/bumptech/glide/i;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p2

    .line 167
    :goto_12
    iget v2, p0, Lcom/bumptech/glide/i;->i:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 168
    iget v2, p0, Lcom/bumptech/glide/i;->i:I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, p2, :cond_35

    move p1, v1

    :goto_26
    if-ge p1, v0, :cond_45

    .line 173
    iget-object p2, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/i$a;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/i$a;->a(I)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lcom/bumptech/glide/i;->a(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    :cond_35
    add-int/lit8 p1, v0, -0x1

    :goto_37
    if-lt p1, v1, :cond_45

    .line 178
    iget-object p2, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/i$a;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/i$a;->a(I)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p1, v3}, Lcom/bumptech/glide/i;->a(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_37

    .line 182
    :cond_45
    iput v1, p0, Lcom/bumptech/glide/i;->g:I

    .line 183
    iput v0, p0, Lcom/bumptech/glide/i;->f:I

    return-void
.end method

.method private a(IZ)V
    .registers 4

    .line 150
    iget-boolean v0, p0, Lcom/bumptech/glide/i;->j:Z

    if-eq v0, p2, :cond_9

    .line 151
    iput-boolean p2, p0, Lcom/bumptech/glide/i;->j:Z

    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/i;->a()V

    :cond_9
    if-eqz p2, :cond_e

    .line 154
    iget p2, p0, Lcom/bumptech/glide/i;->a:I

    goto :goto_11

    :cond_e
    iget p2, p0, Lcom/bumptech/glide/i;->a:I

    neg-int p2, p2

    :goto_11
    add-int/2addr p2, p1

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/i;->a(II)V

    return-void
.end method

.method private a(Ljava/lang/Object;II)V
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/i$b;

    .line 205
    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/i$b;->a(Ljava/lang/Object;II)[I

    move-result-object p2

    if-nez p2, :cond_c

    return-void

    .line 209
    :cond_c
    iget-object p3, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/i$a;

    .line 210
    invoke-interface {p3, p1}, Lcom/bumptech/glide/i$a;->a(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    if-nez p1, :cond_15

    return-void

    .line 215
    :cond_15
    iget-object p3, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/i$d;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p3, v0, p2}, Lcom/bumptech/glide/i$d;->a(II)Lcom/bumptech/glide/i$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;)Lcom/bumptech/glide/request/a/o;

    return-void
.end method

.method private a(Ljava/util/List;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_13

    const/4 p3, 0x0

    :goto_7
    if-ge p3, v0, :cond_21

    .line 190
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/bumptech/glide/i;->a(Ljava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_21

    .line 194
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3, p2, v0}, Lcom/bumptech/glide/i;->a(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_21
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .line 140
    iput p4, p0, Lcom/bumptech/glide/i;->i:I

    .line 141
    iget p1, p0, Lcom/bumptech/glide/i;->h:I

    if-le p2, p1, :cond_c

    add-int/2addr p3, p2

    const/4 p1, 0x1

    .line 142
    invoke-direct {p0, p3, p1}, Lcom/bumptech/glide/i;->a(IZ)V

    goto :goto_14

    .line 143
    :cond_c
    iget p1, p0, Lcom/bumptech/glide/i;->h:I

    if-ge p2, p1, :cond_14

    const/4 p1, 0x0

    .line 144
    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/i;->a(IZ)V

    .line 146
    :cond_14
    :goto_14
    iput p2, p0, Lcom/bumptech/glide/i;->h:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method

###### Class com.bumptech.glide.i.a (com.bumptech.glide.i$a)
.class public interface abstract Lcom/bumptech/glide/i$a;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/bumptech/glide/l;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lcom/bumptech/glide/l<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract a(I)Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end method

###### Class com.bumptech.glide.i.b (com.bumptech.glide.i$b)
.class public interface abstract Lcom/bumptech/glide/i$b;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;II)[I
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation
.end method

###### Class com.bumptech.glide.i.c (com.bumptech.glide.i$c)
.class final Lcom/bumptech/glide/i$c;
.super Lcom/bumptech/glide/request/a/b;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/a/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/a/n;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 261
    iget v0, p0, Lcom/bumptech/glide/i$c;->b:I

    iget v1, p0, Lcom/bumptech/glide/i$c;->a:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/a/n;->a(II)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/b/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/b/f<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/bumptech/glide/request/a/n;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

###### Class com.bumptech.glide.i.d (com.bumptech.glide.i$d)
.class final Lcom/bumptech/glide/i$d;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/i$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 5

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {p1}, Lcom/bumptech/glide/h/l;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i$d;->a:Ljava/util/Queue;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_19

    .line 233
    iget-object v1, p0, Lcom/bumptech/glide/i$d;->a:Ljava/util/Queue;

    new-instance v2, Lcom/bumptech/glide/i$c;

    invoke-direct {v2}, Lcom/bumptech/glide/i$c;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_19
    return-void
.end method


# virtual methods
.method public a(II)Lcom/bumptech/glide/i$c;
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/bumptech/glide/i$d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i$c;

    .line 239
    iget-object v1, p0, Lcom/bumptech/glide/i$d;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 240
    iput p1, v0, Lcom/bumptech/glide/i$c;->b:I

    .line 241
    iput p2, v0, Lcom/bumptech/glide/i$c;->a:I

    return-object v0
.end method
