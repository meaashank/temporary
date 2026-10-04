###### Class com.bumptech.glide.load.engine.c.a (com.bumptech.glide.load.engine.c.a)
.class final Lcom/bumptech/glide/load/engine/c/a;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/c/a$a;,
        Lcom/bumptech/glide/load/engine/c/a$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "PreFillRunner"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final b:J = 0x20L

.field static final c:J = 0x28L

.field static final d:I = 0x4

.field static final e:J

.field private static final f:Lcom/bumptech/glide/load/engine/c/a$a;


# instance fields
.field private final g:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private final h:Lcom/bumptech/glide/load/engine/a/j;

.field private final i:Lcom/bumptech/glide/load/engine/c/c;

.field private final j:Lcom/bumptech/glide/load/engine/c/a$a;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/engine/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private m:J

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Lcom/bumptech/glide/load/engine/c/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/c/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/c/a;->f:Lcom/bumptech/glide/load/engine/c/a$a;

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/c/a;->e:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/engine/a/j;Lcom/bumptech/glide/load/engine/c/c;)V
    .registers 10

    .line 72
    sget-object v4, Lcom/bumptech/glide/load/engine/c/a;->f:Lcom/bumptech/glide/load/engine/c/a$a;

    new-instance v5, Landroid/os/Handler;

    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/c/a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/engine/a/j;Lcom/bumptech/glide/load/engine/c/c;Lcom/bumptech/glide/load/engine/c/a$a;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/engine/a/j;Lcom/bumptech/glide/load/engine/c/c;Lcom/bumptech/glide/load/engine/c/a$a;Landroid/os/Handler;)V
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->k:Ljava/util/Set;

    const-wide/16 v0, 0x28

    .line 65
    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/c/a;->m:J

    .line 87
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 88
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c/a;->h:Lcom/bumptech/glide/load/engine/a/j;

    .line 89
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/c/a;->i:Lcom/bumptech/glide/load/engine/c/c;

    .line 90
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/c/a;->j:Lcom/bumptech/glide/load/engine/c/a$a;

    .line 91
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/c/a;->l:Landroid/os/Handler;

    return-void
.end method

.method private a(J)Z
    .registers 6

    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->j:Lcom/bumptech/glide/load/engine/c/a$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c/a$a;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x20

    cmp-long v2, v0, p1

    if-ltz v2, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method private c()J
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->h:Lcom/bumptech/glide/load/engine/a/j;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/j;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c/a;->h:Lcom/bumptech/glide/load/engine/a/j;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/a/j;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private d()J
    .registers 7

    .line 162
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/c/a;->m:J

    .line 163
    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/c/a;->m:J

    const-wide/16 v4, 0x4

    mul-long v2, v2, v4

    sget-wide v4, Lcom/bumptech/glide/load/engine/c/a;->e:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/c/a;->m:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/c/a;->n:Z

    return-void
.end method

.method b()Z
    .registers 11
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->j:Lcom/bumptech/glide/load/engine/c/a$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c/a$a;->a()J

    move-result-wide v0

    .line 105
    :cond_6
    :goto_6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c/a;->i:Lcom/bumptech/glide/load/engine/c/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/c;->c()Z

    move-result v2

    if-nez v2, :cond_b2

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/c/a;->a(J)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 106
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c/a;->i:Lcom/bumptech/glide/load/engine/c/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/c;->a()Lcom/bumptech/glide/load/engine/c/d;

    move-result-object v2

    .line 108
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c/a;->k:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 109
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c/a;->k:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 112
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->a()I

    move-result v4

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->b()I

    move-result v5

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 111
    invoke-interface {v3, v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_4a

    .line 116
    :cond_3a
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 115
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 121
    :goto_4a
    invoke-static {v3}, Lcom/bumptech/glide/h/l;->b(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 125
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c/a;->c()J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v9, v5, v7

    if-ltz v9, :cond_68

    .line 130
    new-instance v5, Lcom/bumptech/glide/load/engine/c/a$b;

    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/c/a$b;-><init>()V

    .line 131
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/c/a;->h:Lcom/bumptech/glide/load/engine/a/j;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    invoke-static {v3, v7}, Lcom/bumptech/glide/load/resource/bitmap/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)Lcom/bumptech/glide/load/resource/bitmap/f;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Lcom/bumptech/glide/load/engine/a/j;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/s;)Lcom/bumptech/glide/load/engine/s;

    goto :goto_6d

    .line 133
    :cond_68
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    invoke-interface {v5, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->a(Landroid/graphics/Bitmap;)V

    :goto_6d
    const-string v3, "PreFillRunner"

    const/4 v5, 0x3

    .line 136
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "PreFillRunner"

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 143
    :cond_b2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/c/a;->n:Z

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->i:Lcom/bumptech/glide/load/engine/c/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c/c;->c()Z

    move-result v0

    if-nez v0, :cond_c0

    const/4 v0, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v0, 0x0

    :goto_c1
    return v0
.end method

.method public run()V
    .registers 4

    .line 156
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->l:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c/a;->d()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void
.end method

###### Class com.bumptech.glide.load.engine.c.a.C0040a (com.bumptech.glide.load.engine.c.a$a)
.class Lcom/bumptech/glide/load/engine/c/a$a;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()J
    .registers 3

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

###### Class com.bumptech.glide.load.engine.c.a.b (com.bumptech.glide.load.engine.c.a$b)
.class final Lcom/bumptech/glide/load/engine/c/a$b;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"

# interfaces
.implements Lcom/bumptech/glide/load/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 175
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
