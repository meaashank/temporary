###### Class com.bumptech.glide.load.engine.bitmap_recycle.c (com.bumptech.glide.load.engine.bitmap_recycle.c)
.class Lcom/bumptech/glide/load/engine/bitmap_recycle/c;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;

.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;

    .line 14
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    return-void
.end method

.method static c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 5

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;->a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;->a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;Ljava/lang/Object;)V

    return-void
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    .line 42
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 2

    .line 37
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 47
    invoke-static {p1}, Lcom/bumptech/glide/h/l;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.bitmap_recycle.c.a (com.bumptech.glide.load.engine.bitmap_recycle.c$a)
.class Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/m;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;)V

    return-void
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)V
    .registers 4

    .line 92
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->b:I

    .line 93
    iput p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->c:I

    .line 94
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->d:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 99
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 100
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;

    .line 101
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->b:I

    if-ne v0, v2, :cond_1a

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->c:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->c:I

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->d:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->d:Landroid/graphics/Bitmap$Config;

    if-ne v0, p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 108
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 116
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->b:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->c:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.bitmap_recycle.c.b (com.bumptech.glide.load.engine.bitmap_recycle.c$b)
.class Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
.source "AttributeStrategy.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/d<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;
    .registers 2

    .line 75
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;)V

    return-object v0
.end method

.method a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;
    .registers 5

    .line 68
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;

    .line 69
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;->a(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c$b;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/c$a;

    move-result-object v0

    return-object v0
.end method
