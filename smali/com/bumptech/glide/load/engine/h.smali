###### Class com.bumptech.glide.load.engine.h (com.bumptech.glide.load.engine.h)
.class public abstract Lcom/bumptech/glide/load/engine/h;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final a:Lcom/bumptech/glide/load/engine/h;

.field public static final b:Lcom/bumptech/glide/load/engine/h;

.field public static final c:Lcom/bumptech/glide/load/engine/h;

.field public static final d:Lcom/bumptech/glide/load/engine/h;

.field public static final e:Lcom/bumptech/glide/load/engine/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/bumptech/glide/load/engine/h$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/h;

    .line 41
    new-instance v0, Lcom/bumptech/glide/load/engine/h$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    .line 67
    new-instance v0, Lcom/bumptech/glide/load/engine/h$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h;

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/engine/h$4;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$4;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/h;->d:Lcom/bumptech/glide/load/engine/h;

    .line 123
    new-instance v0, Lcom/bumptech/glide/load/engine/h$5;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$5;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/h;->e:Lcom/bumptech/glide/load/engine/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract a(Lcom/bumptech/glide/load/DataSource;)Z
.end method

.method public abstract a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method

.method public abstract b()Z
.end method

###### Class com.bumptech.glide.load.engine.h.AnonymousClass1 (com.bumptech.glide.load.engine.h$1)
.class Lcom/bumptech/glide/load/engine/h$1;
.super Lcom/bumptech/glide/load/engine/h;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/DataSource;)Z
    .registers 3

    .line 18
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .registers 4

    .line 24
    sget-object p1, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.bumptech.glide.load.engine.h.AnonymousClass2 (com.bumptech.glide.load.engine.h$2)
.class Lcom/bumptech/glide/load/engine/h$2;
.super Lcom/bumptech/glide/load/engine/h;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/DataSource;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.bumptech.glide.load.engine.h.AnonymousClass3 (com.bumptech.glide.load.engine.h$3)
.class Lcom/bumptech/glide/load/engine/h$3;
.super Lcom/bumptech/glide/load/engine/h;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/DataSource;)Z
    .registers 3

    .line 70
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.bumptech.glide.load.engine.h.AnonymousClass4 (com.bumptech.glide.load.engine.h$4)
.class Lcom/bumptech/glide/load/engine/h$4;
.super Lcom/bumptech/glide/load/engine/h;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/DataSource;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .registers 4

    .line 102
    sget-object p1, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.bumptech.glide.load.engine.h.AnonymousClass5 (com.bumptech.glide.load.engine.h$5)
.class Lcom/bumptech/glide/load/engine/h$5;
.super Lcom/bumptech/glide/load/engine/h;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/DataSource;)Z
    .registers 3

    .line 126
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .registers 4

    if-eqz p1, :cond_6

    .line 132
    sget-object p1, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p1, :cond_a

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    if-ne p2, p1, :cond_10

    :cond_a
    sget-object p1, Lcom/bumptech/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne p3, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
