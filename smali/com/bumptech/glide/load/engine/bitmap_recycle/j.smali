###### Class com.bumptech.glide.load.engine.bitmap_recycle.j (com.bumptech.glide.load.engine.bitmap_recycle.j)
.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/j;
.super Ljava/lang/Object;
.source "LruArrayPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;
    }
.end annotation


# static fields
.field static final b:I = 0x8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final c:I = 0x400000

.field private static final d:I = 0x2


# instance fields
.field private final e:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->g:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->h:Ljava/util/Map;

    const/high16 v0, 0x400000

    .line 39
    iput v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->g:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->h:Ljava/util/Map;

    .line 48
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->i:I

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;",
            ")TT;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/a;

    move-result-object v0

    .line 98
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 100
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->b()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    .line 101
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->c(ILjava/lang/Class;)V

    :cond_20
    if-nez v1, :cond_52

    .line 105
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 106
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4c
    iget p1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a(I)Ljava/lang/Object;

    move-result-object v1

    :cond_52
    return-object v1
.end method

.method private a(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_14

    .line 183
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private a(ILjava/lang/Integer;)Z
    .registers 4

    if-eqz p2, :cond_12

    .line 127
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->c()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p1, p1, 0x8

    if-gt p2, p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private b(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/a<",
            "TT;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;

    if-nez v0, :cond_46

    .line 198
    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 199
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;-><init>()V

    goto :goto_25

    .line 200
    :cond_18
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 201
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;-><init>()V

    .line 206
    :goto_25
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 203
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No array pool found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    :goto_46
    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/bitmap_recycle/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/a<",
            "TT;>;"
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/a;

    move-result-object p1

    return-object p1
.end method

.method private b(I)Z
    .registers 3

    .line 122
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->i:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private c(I)V
    .registers 7

    .line 154
    :cond_0
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    if-le v0, p1, :cond_53

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/bitmap_recycle/a;

    move-result-object v1

    .line 158
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->b()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    .line 159
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->c(ILjava/lang/Class;)V

    .line 160
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evicted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_53
    return-void
.end method

.method private c(ILjava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p2

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_30

    .line 173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 176
    :cond_1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void

    .line 170
    :cond_30
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to decrement empty size, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private c()Z
    .registers 3

    .line 131
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->i:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    div-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private d()V
    .registers 2

    .line 150
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->i:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->c(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_1
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a(ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 89
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    move-result-object p1

    goto :goto_26

    .line 91
    :cond_20
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    move-result-object p1

    .line 93
    :goto_26
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-object p1

    :catchall_2c
    move-exception p1

    .line 85
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 136
    :try_start_2
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->c(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 137
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    .line 135
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_b

    .line 142
    :try_start_5
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a()V

    goto :goto_1a

    :catchall_9
    move-exception p1

    goto :goto_1c

    :cond_b
    const/16 v0, 0x14

    if-ge p1, v0, :cond_13

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1a

    .line 145
    :cond_13
    iget p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->i:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->c(I)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_9

    .line 147
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 140
    :goto_1c
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/a;

    move-result-object v1

    .line 63
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->a(Ljava/lang/Object;)I

    move-result v2

    .line 64
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->b()I

    move-result v1

    mul-int v1, v1, v2

    .line 65
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->b(I)Z

    move-result v3
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_56

    if-nez v3, :cond_1b

    .line 66
    monitor-exit p0

    return-void

    .line 68
    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    invoke-virtual {v3, v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v3, v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    .line 72
    iget v0, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    iget v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_40

    goto :goto_45

    :cond_40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v3, v0

    :goto_45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->j:I

    .line 75
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->d()V
    :try_end_54
    .catchall {:try_start_1b .. :try_end_54} :catchall_56

    .line 76
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    .line 59
    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method b()I
    .registers 9

    .line 214
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 215
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 216
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/a;

    move-result-object v5

    .line 217
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->g:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/NavigableMap;

    invoke-interface {v7, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int v6, v6, v4

    invoke-interface {v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->b()I

    move-result v4

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    goto :goto_27

    :cond_57
    return v1
.end method

.method public declared-synchronized b(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 79
    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.load.engine.bitmap_recycle.j.a (com.bumptech.glide.load.engine.bitmap_recycle.j$a)
.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;
.super Ljava/lang/Object;
.source "LruArrayPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;)V
    .registers 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;)V

    return-void
.end method

.method a(ILjava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 250
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    .line 251
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->c:Ljava/lang/Class;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 256
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 257
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    .line 258
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->c:Ljava/lang/Class;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->c:Ljava/lang/Class;

    if-ne v0, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    :cond_15
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 275
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 276
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->c:Ljava/lang/Class;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.bitmap_recycle.j.b (com.bumptech.glide.load.engine.bitmap_recycle.j$b)
.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/d<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;
    .registers 2

    .line 236
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;)V

    return-object v0
.end method

.method a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    .line 230
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;->a(ILjava/lang/Class;)V

    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j$b;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/j$a;

    move-result-object v0

    return-object v0
.end method
