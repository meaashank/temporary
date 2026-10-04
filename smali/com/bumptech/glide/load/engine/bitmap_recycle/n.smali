###### Class com.bumptech.glide.load.engine.bitmap_recycle.n (com.bumptech.glide.load.engine.bitmap_recycle.n)
.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/n;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/l;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x8

.field private static final b:[Landroid/graphics/Bitmap$Config;

.field private static final c:[Landroid/graphics/Bitmap$Config;

.field private static final d:[Landroid/graphics/Bitmap$Config;

.field private static final e:[Landroid/graphics/Bitmap$Config;

.field private static final f:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final g:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

.field private final h:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 40
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_20

    .line 41
    array-length v3, v0

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    .line 42
    array-length v3, v0

    sub-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v4, v0, v3

    .line 44
    :cond_20
    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->b:[Landroid/graphics/Bitmap$Config;

    .line 46
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->b:[Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->c:[Landroid/graphics/Bitmap$Config;

    .line 50
    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->d:[Landroid/graphics/Bitmap$Config;

    .line 52
    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->e:[Landroid/graphics/Bitmap$Config;

    .line 54
    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->f:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

    .line 58
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->i:Ljava/util/Map;

    return-void
.end method

.method static a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_14

    .line 138
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 118
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 120
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_28

    .line 128
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1b

    .line 129
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 131
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    return-void

    .line 122
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to decrement empty size, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", removed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;
    .registers 11

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    move-result-object v0

    .line 91
    invoke-static {p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->b(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_4c

    aget-object v4, v1, v3

    .line 92
    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v5

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_49

    .line 94
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v7, p1, 0x8

    if-gt v6, v7, :cond_49

    .line 95
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_39

    if-nez v4, :cond_33

    if-eqz p2, :cond_4c

    goto :goto_39

    .line 96
    :cond_33
    invoke-virtual {v4, p2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    .line 97
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;)V

    .line 98
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    move-result-object v0

    goto :goto_4c

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method private static b(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
    .registers 3

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 249
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 250
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->c:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 254
    :cond_11
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$1;->a:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    const/4 v0, 0x1

    .line 264
    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 262
    :pswitch_23
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->f:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 260
    :pswitch_26
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->e:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 258
    :pswitch_29
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->d:[Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 256
    :pswitch_2c
    sget-object p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->b:[Landroid/graphics/Bitmap$Config;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 111
    invoke-static {v0}, Lcom/bumptech/glide/h/l;->b(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    :cond_15
    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 76
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/h/l;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 77
    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->b(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    move-result-object p3

    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    .line 82
    iget p3, p3, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    if-eqz p3, :cond_26

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    goto :goto_28

    :cond_26
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 83
    :goto_28
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_2b
    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 63
    invoke-static {p1}, Lcom/bumptech/glide/h/l;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->g:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p1

    .line 69
    iget v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 70
    iget v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v1, :cond_31

    goto :goto_36

    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    :goto_36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    .line 152
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/h/l;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    .line 153
    invoke-static {p1, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    .line 146
    invoke-static {p1}, Lcom/bumptech/glide/h/l;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 158
    invoke-static {p1}, Lcom/bumptech/glide/h/l;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeConfigStrategy{groupedMap="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortedSizes=("

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 171
    :cond_43
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    const-string v1, ")}"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.bitmap_recycle.n.AnonymousClass1 (com.bumptech.glide.load.engine.bitmap_recycle.n$1)
.class synthetic Lcom/bumptech/glide/load/engine/bitmap_recycle/n$1;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 254
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$1;->a:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$1;->a:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$1;->a:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$1;->a:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method

###### Class com.bumptech.glide.load.engine.bitmap_recycle.n.a (com.bumptech.glide.load.engine.bitmap_recycle.n$a)
.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/m;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;)V
    .registers 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;ILandroid/graphics/Bitmap$Config;)V
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 205
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;)V

    .line 206
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a(ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/m;)V

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .registers 3

    .line 210
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a:I

    .line 211
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 226
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 227
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    .line 228
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a:I

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->c:Landroid/graphics/Bitmap$Config;

    .line 229
    invoke-static {v0, p1}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 236
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

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

    .line 221
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.bitmap_recycle.n.b (com.bumptech.glide.load.engine.bitmap_recycle.n$b)
.class Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
.source "SizeConfigStrategy.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/d<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;
    .registers 2

    .line 188
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;
    .registers 4

    .line 181
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    .line 182
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;->a(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    .registers 2

    .line 177
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n$b;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/n$a;

    move-result-object v0

    return-object v0
.end method
