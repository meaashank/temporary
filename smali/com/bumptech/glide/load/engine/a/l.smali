###### Class com.bumptech.glide.load.engine.a.l (com.bumptech.glide.load.engine.a.l)
.class public final Lcom/bumptech/glide/load/engine/a/l;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/l$b;,
        Lcom/bumptech/glide/load/engine/a/l$a;,
        Lcom/bumptech/glide/load/engine/a/l$c;
    }
.end annotation


# static fields
.field static final a:I = 0x4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "MemorySizeCalculator"

.field private static final c:I = 0x2


# instance fields
.field private final d:I

.field private final e:I

.field private final f:Landroid/content/Context;

.field private final g:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a/l$a;)V
    .registers 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/l$a;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/l;->f:Landroid/content/Context;

    .line 39
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/l$a;->g:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/a/l;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40
    iget v0, p1, Lcom/bumptech/glide/load/engine/a/l$a;->m:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_16

    .line 41
    :cond_14
    iget v0, p1, Lcom/bumptech/glide/load/engine/a/l$a;->m:I

    :goto_16
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/l;->g:I

    .line 42
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/l$a;->g:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/bumptech/glide/load/engine/a/l$a;->k:F

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/l$a;->l:F

    .line 43
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/a/l;->a(Landroid/app/ActivityManager;FF)I

    move-result v0

    .line 46
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a/l$a;->h:Lcom/bumptech/glide/load/engine/a/l$c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/a/l$c;->a()I

    move-result v1

    .line 47
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/a/l$a;->h:Lcom/bumptech/glide/load/engine/a/l$c;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/a/l$c;->b()I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    .line 50
    iget v2, p1, Lcom/bumptech/glide/load/engine/a/l$a;->j:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 52
    iget v3, p1, Lcom/bumptech/glide/load/engine/a/l$a;->i:F

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 53
    iget v3, p0, Lcom/bumptech/glide/load/engine/a/l;->g:I

    sub-int v3, v0, v3

    add-int v4, v1, v2

    if-gt v4, v3, :cond_50

    .line 56
    iput v1, p0, Lcom/bumptech/glide/load/engine/a/l;->e:I

    .line 57
    iput v2, p0, Lcom/bumptech/glide/load/engine/a/l;->d:I

    goto :goto_6b

    :cond_50
    int-to-float v1, v3

    .line 59
    iget v2, p1, Lcom/bumptech/glide/load/engine/a/l$a;->j:F

    iget v3, p1, Lcom/bumptech/glide/load/engine/a/l$a;->i:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 60
    iget v2, p1, Lcom/bumptech/glide/load/engine/a/l$a;->i:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/bumptech/glide/load/engine/a/l;->e:I

    .line 61
    iget v2, p1, Lcom/bumptech/glide/load/engine/a/l$a;->j:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/l;->d:I

    :goto_6b
    const-string v1, "MemorySizeCalculator"

    const/4 v2, 0x3

    .line 64
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e1

    const-string v1, "MemorySizeCalculator"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/l;->e:I

    .line 69
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/l;->d:I

    .line 71
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", byte array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/load/engine/a/l;->g:I

    .line 73
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/a/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", memory class limited? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v0, :cond_ae

    const/4 v3, 0x1

    goto :goto_af

    :cond_ae
    const/4 v3, 0x0

    :goto_af
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", max size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/l;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", memoryClass: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a/l$a;->g:Landroid/app/ActivityManager;

    .line 79
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isLowMemoryDevice: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/a/l$a;->g:Landroid/app/ActivityManager;

    .line 81
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/l;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    return-void
.end method

.method private static a(Landroid/app/ActivityManager;FF)I
    .registers 4

    .line 108
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 109
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/a/l;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    int-to-float v0, v0

    if-eqz p0, :cond_10

    move p1, p2

    :cond_10
    mul-float v0, v0, p1

    .line 110
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private a(I)Ljava/lang/String;
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/l;->f:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(Landroid/app/ActivityManager;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 124
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/l;->e:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/l;->d:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/l;->g:I

    return v0
.end method

###### Class com.bumptech.glide.load.engine.a.l.a (com.bumptech.glide.load.engine.a.l$a)
.class public final Lcom/bumptech/glide/load/engine/a/l$a;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final b:I

.field static final c:F = 0.4f

.field static final d:F = 0.33f

.field static final e:I = 0x400000


# instance fields
.field final f:Landroid/content/Context;

.field g:Landroid/app/ActivityManager;

.field h:Lcom/bumptech/glide/load/engine/a/l$c;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_8

    const/4 v0, 0x4

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    sput v0, Lcom/bumptech/glide/load/engine/a/l$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 159
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/l$a;->i:F

    .line 160
    sget v0, Lcom/bumptech/glide/load/engine/a/l$a;->b:I

    int-to-float v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/l$a;->j:F

    const v0, 0x3ecccccd    # 0.4f

    .line 161
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/l$a;->k:F

    const v0, 0x3ea8f5c3    # 0.33f

    .line 162
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/l$a;->l:F

    const/high16 v0, 0x400000

    .line 163
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/l$a;->m:I

    .line 166
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->f:Landroid/content/Context;

    const-string v0, "activity"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/l$a;->g:Landroid/app/ActivityManager;

    .line 169
    new-instance v0, Lcom/bumptech/glide/load/engine/a/l$b;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/l$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/l$a;->h:Lcom/bumptech/glide/load/engine/a/l$c;

    .line 176
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_46

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->g:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/l;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x0

    .line 177
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->j:F

    :cond_46
    return-void
.end method


# virtual methods
.method public a(F)Lcom/bumptech/glide/load/engine/a/l$a;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Memory cache screens must be greater than or equal to 0"

    .line 187
    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 189
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->i:F

    return-object p0
.end method

.method public a(I)Lcom/bumptech/glide/load/engine/a/l$a;
    .registers 2

    .line 243
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->m:I

    return-object p0
.end method

.method a(Landroid/app/ActivityManager;)Lcom/bumptech/glide/load/engine/a/l$a;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->g:Landroid/app/ActivityManager;

    return-object p0
.end method

.method a(Lcom/bumptech/glide/load/engine/a/l$c;)Lcom/bumptech/glide/load/engine/a/l$a;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->h:Lcom/bumptech/glide/load/engine/a/l$c;

    return-object p0
.end method

.method public a()Lcom/bumptech/glide/load/engine/a/l;
    .registers 2

    .line 260
    new-instance v0, Lcom/bumptech/glide/load/engine/a/l;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/l;-><init>(Lcom/bumptech/glide/load/engine/a/l$a;)V

    return-object v0
.end method

.method public b(F)Lcom/bumptech/glide/load/engine/a/l$a;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Bitmap pool screens must be greater than or equal to 0"

    .line 199
    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 201
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->j:F

    return-object p0
.end method

.method public c(F)Lcom/bumptech/glide/load/engine/a/l$a;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Size multiplier must be between 0 and 1"

    .line 212
    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 214
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->k:F

    return-object p0
.end method

.method public d(F)Lcom/bumptech/glide/load/engine/a/l$a;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Low memory max size multiplier must be between 0 and 1"

    .line 227
    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 230
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/l$a;->l:F

    return-object p0
.end method

###### Class com.bumptech.glide.load.engine.a.l.b (com.bumptech.glide.load.engine.a.l$b)
.class final Lcom/bumptech/glide/load/engine/a/l$b;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Landroid/util/DisplayMetrics;)V
    .registers 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/l$b;->a:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/l$b;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/l$b;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

###### Class com.bumptech.glide.load.engine.a.l.c (com.bumptech.glide.load.engine.a.l$c)
.class interface abstract Lcom/bumptech/glide/load/engine/a/l$c;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method
