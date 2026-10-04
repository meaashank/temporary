###### Class com.gaia.ngallery.l.f (com.gaia.ngallery.l.f)
.class public final Lcom/gaia/ngallery/l/f;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/l/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    .line 40
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/l/f;->a:Ljava/lang/String;

    const/16 v0, 0x10

    .line 1091
    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/gaia/ngallery/l/f;->b:[C

    return-void

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static A(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 1203
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 1204
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 49
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method private static a(J)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const-string p0, "shouldn\'t be less than zero!"

    return-object p0

    :cond_9
    const-wide/16 v0, 0x400

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-gez v4, :cond_21

    const-string v0, "%.3fB"

    .line 1126
    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-wide/32 v0, 0x100000

    cmp-long v4, p0, v0

    if-gez v4, :cond_3e

    const-string v0, "%.3fKB"

    .line 1128
    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    const-wide/32 v0, 0x40000000

    cmp-long v4, p0, v0

    if-gez v4, :cond_5b

    const-string v0, "%.3fMB"

    .line 1130
    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5b
    const-string v0, "%.3fGB"

    .line 1132
    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1104
    :cond_4
    array-length v1, p0

    if-gtz v1, :cond_8

    return-object v0

    :cond_8
    shl-int/lit8 v0, v1, 0x1

    .line 1106
    new-array v0, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v2, v1, :cond_2d

    add-int/lit8 v4, v3, 0x1

    .line 1108
    sget-object v5, Lcom/gaia/ngallery/l/f;->b:[C

    aget-byte v6, p0, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    add-int/lit8 v3, v4, 0x1

    .line 1109
    sget-object v5, Lcom/gaia/ngallery/l/f;->b:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1111
    :cond_2d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 710
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 711
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 713
    array-length v1, p0

    if-eqz v1, :cond_38

    .line 714
    array-length v1, p0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_38

    aget-object v3, p0, v2

    .line 715
    invoke-interface {p1, v3}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 716
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    if-eqz p2, :cond_35

    .line 718
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x1

    .line 720
    invoke-static {v3, p1, v4}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_38
    return-object v0
.end method

.method public static a(Ljava/io/File;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 651
    new-instance v0, Lcom/gaia/ngallery/l/f$3;

    invoke-direct {v0}, Lcom/gaia/ngallery/l/f$3;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/FileFilter;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 696
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 640
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z
    .registers 4

    const/4 v0, 0x0

    .line 376
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z
    .registers 13

    const/4 v0, 0x0

    if-eqz p0, :cond_ab

    if-nez p1, :cond_7

    goto/16 :goto_ab

    .line 263
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    return v0

    .line 267
    :cond_38
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_aa

    .line 268
    :cond_45
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5a

    .line 269
    invoke-interface {p2}, Lcom/gaia/ngallery/l/f$a;->a()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 270
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->i(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v0

    :cond_59
    return v3

    .line 278
    :cond_5a
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_61

    return v0

    .line 279
    :cond_61
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 280
    array-length v1, p1

    const/4 v4, 0x0

    :goto_67
    if-ge v4, v1, :cond_a0

    aget-object v5, p1, v4

    .line 281
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 284
    invoke-static {v5, v6, p2, p3}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z

    move-result v5

    if-nez v5, :cond_9d

    return v0

    .line 285
    :cond_90
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 287
    invoke-static {v5, v6, p2, p3}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z

    move-result v5

    if-nez v5, :cond_9d

    return v0

    :cond_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    :cond_a0
    if-eqz p3, :cond_a8

    .line 290
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->g(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_a9

    :cond_a8
    const/4 v0, 0x1

    :cond_a9
    return v0

    :cond_aa
    :goto_aa
    return v0

    :cond_ab
    :goto_ab
    return v0
.end method

.method public static a(Ljava/io/File;Ljava/io/FileFilter;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 591
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    .line 593
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 595
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 596
    array-length v1, p0

    if-eqz v1, :cond_45

    .line 597
    array-length v1, p0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_45

    aget-object v4, p0, v3

    .line 598
    invoke-interface {p1, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 599
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 600
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_42

    return v0

    .line 601
    :cond_35
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 602
    invoke-static {v4}, Lcom/gaia/ngallery/l/f;->g(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_42

    return v0

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_45
    return v2
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 94
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 96
    :cond_b
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    .line 98
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    return v2

    .line 99
    :cond_1e
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_48

    .line 102
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 v0, 0x1

    :cond_48
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/io/FileFilter;)Z
    .registers 2

    .line 578
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 80
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1163
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_24
    .catchall {:try_start_2 .. :try_end_c} :catchall_22

    int-to-long v3, p2

    .line 1164
    :try_start_d
    invoke-virtual {v2, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 1165
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1f
    .catchall {:try_start_d .. :try_end_18} :catchall_1c

    .line 1171
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    return v0

    :catchall_1c
    move-exception p0

    move-object v1, v2

    goto :goto_38

    :catch_1f
    move-exception p0

    move-object v1, v2

    goto :goto_25

    :catchall_22
    move-exception p0

    goto :goto_38

    :catch_24
    move-exception p0

    :goto_25
    :try_start_25
    const-string p1, "FileUtils"

    const/4 p2, 0x2

    .line 1167
    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "error occur while copy"

    const/4 v3, 0x0

    aput-object v2, p2, v3

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lcom/gaia/ngallery/l/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_22

    .line 1171
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_37

    :catch_37
    return v3

    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 1174
    :catch_3b
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/l/f$a;)Z
    .registers 3

    .line 362
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/l/f$a;Z)Z
    .registers 4

    .line 238
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 239
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 238
    invoke-static {p0, p1, p2, p3}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1140
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_5d
    .catchall {:try_start_3 .. :try_end_11} :catchall_59

    .line 1141
    :try_start_11
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_55
    .catchall {:try_start_11 .. :try_end_1f} :catchall_52

    .line 1143
    :try_start_1f
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p2

    const-string v0, "FileUtils"

    .line 1144
    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyInsertHeader len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v7, p2

    .line 1145
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, p1

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_47} :catch_50
    .catchall {:try_start_1f .. :try_end_47} :catchall_4e

    .line 1151
    :try_start_47
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1152
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4d} :catch_4d

    :catch_4d
    return v1

    :catchall_4e
    move-exception p2

    goto :goto_76

    :catch_50
    move-exception p2

    goto :goto_57

    :catchall_52
    move-exception p2

    move-object p1, v0

    goto :goto_76

    :catch_55
    move-exception p2

    move-object p1, v0

    :goto_57
    move-object v0, p0

    goto :goto_5f

    :catchall_59
    move-exception p2

    move-object p0, v0

    move-object p1, p0

    goto :goto_76

    :catch_5d
    move-exception p2

    move-object p1, v0

    :goto_5f
    :try_start_5f
    const-string p0, "FileUtils"

    const/4 v3, 0x2

    .line 1147
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "copyInsertHeader exception"

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    invoke-static {p0, v3}, Lcom/gaia/ngallery/l/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_74

    .line 1151
    :try_start_6d
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1152
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_73

    :catch_73
    return v2

    :catchall_74
    move-exception p2

    move-object p0, v0

    .line 1151
    :goto_76
    :try_start_76
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1152
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7c} :catch_7c

    .line 1155
    :catch_7c
    throw p2
.end method

.method public static b(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 682
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 669
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z
    .registers 4

    const/4 v0, 0x0

    .line 404
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_55

    if-nez p1, :cond_6

    goto :goto_55

    .line 328
    :cond_6
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 330
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_54

    .line 331
    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    .line 332
    invoke-interface {p2}, Lcom/gaia/ngallery/l/f$a;->a()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_2f

    return v0

    :cond_2e
    return v2

    .line 341
    :cond_2f
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_3a

    return v0

    .line 343
    :cond_3a
    :try_start_3a
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, p2, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p1

    if-eqz p1, :cond_4e

    if-eqz p3, :cond_4d

    .line 344
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->h(Ljava/io/File;)Z

    move-result p0
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_4b} :catch_4f

    if-eqz p0, :cond_4e

    :cond_4d
    const/4 v0, 0x1

    :cond_4e
    return v0

    :catch_4f
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v0

    :cond_54
    :goto_54
    return v0

    :cond_55
    :goto_55
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 1

    .line 59
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/l/f$a;)Z
    .registers 3

    .line 390
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/l/f$a;Z)Z
    .registers 4

    .line 306
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 307
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 306
    invoke-static {p0, p1, p2, p3}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 142
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static c(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z
    .registers 4

    const/4 v0, 0x1

    .line 432
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 1

    .line 112
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/l/f$a;)Z
    .registers 3

    .line 418
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/l/f;->c(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 163
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static d(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z
    .registers 4

    const/4 v0, 0x1

    .line 460
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 1

    .line 132
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->c(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcom/gaia/ngallery/l/f$a;)Z
    .registers 3

    .line 446
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;Ljava/io/File;Lcom/gaia/ngallery/l/f$a;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 185
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 186
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 188
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 1

    .line 152
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 214
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 216
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    .line 218
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_21

    return p0

    :catch_21
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 1

    .line 173
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->e(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static g(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 482
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x1

    return p0

    .line 484
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 486
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 487
    array-length v2, v1

    if-eqz v2, :cond_3f

    .line 488
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_3f

    aget-object v4, v1, v3

    .line 489
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 490
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3c

    return v0

    .line 491
    :cond_2f
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 492
    invoke-static {v4}, Lcom/gaia/ngallery/l/f;->g(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3c

    return v0

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 496
    :cond_3f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 1

    .line 202
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->f(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_16

    .line 516
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 1

    .line 470
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->g(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/io/File;)Z
    .registers 2

    .line 536
    new-instance v0, Lcom/gaia/ngallery/l/f$1;

    invoke-direct {v0}, Lcom/gaia/ngallery/l/f$1;-><init>()V

    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 1

    .line 506
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->h(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static j(Ljava/io/File;)Z
    .registers 2

    .line 561
    new-instance v0, Lcom/gaia/ngallery/l/f$2;

    invoke-direct {v0}, Lcom/gaia/ngallery/l/f$2;-><init>()V

    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 1

    .line 526
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->i(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static k(Ljava/io/File;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 629
    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Z
    .registers 1

    .line 551
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->j(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/io/File;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, -0x1

    return-wide v0

    .line 746
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static l(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 618
    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)J
    .registers 3

    .line 735
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->l(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static m(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 769
    :try_start_3
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_28
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    .line 770
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_23
    .catchall {:try_start_d .. :try_end_17} :catchall_20

    add-int/2addr p0, v2

    .line 774
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    goto :goto_34

    :catchall_20
    move-exception p0

    move-object v2, v3

    goto :goto_4f

    :catch_23
    move-exception p0

    move-object v2, v3

    goto :goto_29

    :catchall_26
    move-exception p0

    goto :goto_4f

    :catch_28
    move-exception p0

    .line 772
    :goto_29
    :try_start_29
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 774
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    const/4 p0, 0x0

    :goto_34
    const v0, 0xefbb    # 8.5999E-41f

    if-eq p0, v0, :cond_4c

    const v0, 0xfeff

    if-eq p0, v0, :cond_49

    const v0, 0xfffe

    if-eq p0, v0, :cond_46

    const-string p0, "GBK"

    return-object p0

    :cond_46
    const-string p0, "Unicode"

    return-object p0

    :cond_49
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_4c
    const-string p0, "UTF-8"

    return-object p0

    :goto_4f
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static n(Ljava/io/File;)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 809
    :try_start_3
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_60
    .catchall {:try_start_3 .. :try_end_d} :catchall_5d

    const/16 p0, 0x400

    .line 810
    :try_start_f
    new-array v2, p0, [B

    .line 812
    sget-object v4, Lcom/gaia/ngallery/l/f;->a:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_5a
    .catchall {:try_start_f .. :try_end_19} :catchall_58

    const/4 v5, -0x1

    if-eqz v4, :cond_3b

    const/4 v4, 0x1

    .line 813
    :goto_1d
    :try_start_1d
    invoke-virtual {v3, v2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_38
    .catchall {:try_start_1d .. :try_end_21} :catchall_58

    if-eq v6, v5, :cond_53

    move v7, v4

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v6, :cond_36

    .line 815
    :try_start_27
    aget-byte v8, v2, v4
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_29} :catch_32
    .catchall {:try_start_27 .. :try_end_29} :catchall_58

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2f

    add-int/lit8 v7, v7, 0x1

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :catch_32
    move-exception p0

    move-object v2, v3

    move v4, v7

    goto :goto_62

    :cond_36
    move v4, v7

    goto :goto_1d

    :catch_38
    move-exception p0

    move-object v2, v3

    goto :goto_62

    :cond_3b
    const/4 v4, 0x1

    .line 819
    :goto_3c
    :try_start_3c
    invoke-virtual {v3, v2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_38
    .catchall {:try_start_3c .. :try_end_40} :catchall_58

    if-eq v6, v5, :cond_53

    move v7, v4

    const/4 v4, 0x0

    :goto_44
    if-ge v4, v6, :cond_51

    .line 821
    :try_start_46
    aget-byte v8, v2, v4
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_48} :catch_32
    .catchall {:try_start_46 .. :try_end_48} :catchall_58

    const/16 v9, 0xd

    if-ne v8, v9, :cond_4e

    add-int/lit8 v7, v7, 0x1

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_51
    move v4, v7

    goto :goto_3c

    .line 828
    :cond_53
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    goto :goto_69

    :catchall_58
    move-exception p0

    goto :goto_6d

    :catch_5a
    move-exception p0

    move-object v2, v3

    goto :goto_61

    :catchall_5d
    move-exception p0

    move-object v3, v2

    goto :goto_6d

    :catch_60
    move-exception p0

    :goto_61
    const/4 v4, 0x1

    .line 826
    :goto_62
    :try_start_62
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_5d

    .line 828
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    :goto_69
    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v4

    :goto_6d
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 756
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;)I
    .registers 1

    .line 795
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->n(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static o(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 850
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->q(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_d

    const-string p0, ""

    goto :goto_11

    .line 851
    :cond_d
    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/f;->a(J)Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public static p(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 871
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->r(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_d

    const-string p0, ""

    goto :goto_11

    .line 872
    :cond_d
    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/f;->a(J)Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 840
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->o(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/io/File;)J
    .registers 7

    .line 892
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    .line 894
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 895
    array-length v2, p0

    if-eqz v2, :cond_2e

    .line 896
    array-length v2, p0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2e

    aget-object v4, p0, v3

    .line 897
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 898
    invoke-static {v4}, Lcom/gaia/ngallery/l/f;->q(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_2b

    .line 900
    :cond_26
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2e
    return-wide v0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 861
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->p(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/io/File;)J
    .registers 3

    .line 924
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->c(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    .line 925
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static r(Ljava/lang/String;)J
    .registers 3

    .line 882
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->q(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static s(Ljava/lang/String;)J
    .registers 3

    .line 914
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->r(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static s(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 946
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->t(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 935
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 936
    :goto_e
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->s(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/io/File;)[B
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 969
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "MD5"

    .line 970
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 971
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v3, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_16} :catch_34
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_16} :catch_34
    .catchall {:try_start_6 .. :try_end_16} :catchall_32

    const/high16 p0, 0x40000

    .line 972
    :try_start_18
    new-array p0, p0, [B

    .line 974
    :cond_1a
    invoke-virtual {v4, p0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_1a

    .line 976
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p0

    .line 977
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_28} :catch_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_30
    .catchall {:try_start_18 .. :try_end_28} :catchall_41

    .line 981
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object p0

    :catch_30
    move-exception p0

    goto :goto_36

    :catchall_32
    move-exception p0

    goto :goto_43

    :catch_34
    move-exception p0

    move-object v4, v0

    .line 979
    :goto_36
    :try_start_36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 981
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_41
    move-exception p0

    move-object v0, v4

    :goto_43
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static u(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 994
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;)[B
    .registers 1

    .line 956
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->t(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1017
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1004
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1005
    :cond_7
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const-string p0, ""

    goto :goto_1a

    :cond_13
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 1006
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method public static w(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1040
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1027
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1028
    :cond_7
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    goto :goto_17

    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 1029
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_17
    return-object p0
.end method

.method public static x(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1070
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1050
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x2e

    .line 1051
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1052
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    if-ne v0, v2, :cond_19

    goto :goto_1e

    :cond_19
    const/4 v1, 0x0

    .line 1054
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1e
    return-object p0

    :cond_1f
    if-eq v0, v2, :cond_2b

    if-le v1, v0, :cond_24

    goto :goto_2b

    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 1059
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    .line 1057
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1080
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x2e

    .line 1081
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1082
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_20

    if-lt v1, v0, :cond_19

    goto :goto_20

    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 1084
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_20
    const-string p0, ""

    return-object p0
.end method

.method public static y(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    .line 1189
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_23

    .line 1192
    :cond_a
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    .line 1193
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    const-string v1, "video/"

    .line 1195
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return v0

    :cond_23
    :goto_23
    return v0
.end method

.method public static z(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_13

    .line 1182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 1185
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gaia/ngallery/l/f;->y(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

###### Class com.gaia.ngallery.l.f.AnonymousClass1 (com.gaia.ngallery.l.f$1)
.class final Lcom/gaia/ngallery/l/f$1;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/l/f;->i(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

###### Class com.gaia.ngallery.l.f.AnonymousClass2 (com.gaia.ngallery.l.f$2)
.class final Lcom/gaia/ngallery/l/f$2;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/l/f;->j(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 2

    .line 564
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

###### Class com.gaia.ngallery.l.f.AnonymousClass3 (com.gaia.ngallery.l.f$3)
.class final Lcom/gaia/ngallery/l/f$3;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/l/f;->a(Ljava/io/File;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

###### Class com.gaia.ngallery.l.f.a (com.gaia.ngallery.l.f$a)
.class public interface abstract Lcom/gaia/ngallery/l/f$a;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()Z
.end method
