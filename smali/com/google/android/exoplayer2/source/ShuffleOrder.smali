###### Class com.google.android.exoplayer2.source.ShuffleOrder (com.google.android.exoplayer2.source.ShuffleOrder)
.class public interface abstract Lcom/google/android/exoplayer2/source/ShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;,
        Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;
    }
.end annotation


# virtual methods
.method public abstract cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end method

.method public abstract cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end method

.method public abstract cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end method

.method public abstract getFirstIndex()I
.end method

.method public abstract getLastIndex()I
.end method

.method public abstract getLength()I
.end method

.method public abstract getNextIndex(I)I
.end method

.method public abstract getPreviousIndex(I)I
.end method

###### Class com.google.android.exoplayer2.source.ShuffleOrder.DefaultShuffleOrder (com.google.android.exoplayer2.source.ShuffleOrder$DefaultShuffleOrder)
.class public Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultShuffleOrder"
.end annotation


# instance fields
.field private final indexInShuffled:[I

.field private final random:Ljava/util/Random;

.field private final shuffled:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 5

    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .registers 3

    .line 57
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->createShuffledList(ILjava/util/Random;)[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 62
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    .line 63
    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    const/4 p2, 0x0

    .line 64
    :goto_d
    array-length v0, p1

    if-ge p2, v0, :cond_19

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method private static createShuffledList(ILjava/util/Random;)[I
    .registers 7

    .line 145
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_13

    add-int/lit8 v2, v1, 0x1

    .line 147
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 148
    aget v4, v0, v3

    aput v4, v0, v1

    .line 149
    aput v1, v0, v3

    move v1, v2

    goto :goto_3

    :cond_13
    return-object v0
.end method


# virtual methods
.method public cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 5

    .line 141
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-object v0
.end method

.method public cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 11

    .line 98
    new-array v0, p2, [I

    .line 99
    new-array v1, p2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, p2, :cond_26

    .line 101
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v0, v3

    .line 102
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 103
    aget v6, v1, v4

    aput v6, v1, v3

    add-int/2addr v3, p1

    .line 104
    aput v3, v1, v4

    move v3, v5

    goto :goto_6

    .line 106
    :cond_26
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 107
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v3, v3

    add-int/2addr v3, p2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 110
    :goto_31
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v6, v6

    add-int/2addr v6, p2

    if-ge v2, v6, :cond_5a

    if-ge v4, p2, :cond_45

    .line 111
    aget v6, v0, v4

    if-ne v5, v6, :cond_45

    add-int/lit8 v6, v4, 0x1

    .line 113
    aget v4, v1, v4

    aput v4, v3, v2

    move v4, v6

    goto :goto_57

    .line 115
    :cond_45
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    aput v5, v3, v2

    .line 116
    aget v5, v3, v2

    if-lt v5, p1, :cond_56

    .line 117
    aget v5, v3, v2

    add-int/2addr v5, p2

    aput v5, v3, v2

    :cond_56
    move v5, v7

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 121
    :cond_5a
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v3, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 8

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 128
    :goto_9
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v4, v4

    if-ge v2, v4, :cond_31

    .line 129
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_16

    const/4 v3, 0x1

    goto :goto_2e

    :cond_16
    if-eqz v3, :cond_1b

    add-int/lit8 v4, v2, -0x1

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 132
    :goto_1c
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v5, v5, v2

    if-le v5, p1, :cond_28

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v5, v5, v2

    sub-int/2addr v5, v1

    goto :goto_2c

    :cond_28
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v5, v5, v2

    :goto_2c
    aput v5, v0, v4

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 136
    :cond_31
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public getFirstIndex()I
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public getLastIndex()I
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    return v0
.end method

.method public getNextIndex(I)I
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget p1, v0, p1

    goto :goto_11

    :cond_10
    const/4 p1, -0x1

    :goto_11
    return p1
.end method

.method public getPreviousIndex(I)I
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_c

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v0, v0, p1

    :cond_c
    return v0
.end method

###### Class com.google.android.exoplayer2.source.ShuffleOrder.UnshuffledShuffleOrder (com.google.android.exoplayer2.source.ShuffleOrder$UnshuffledShuffleOrder)
.class public final Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnshuffledShuffleOrder"
.end annotation


# instance fields
.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    return-void
.end method


# virtual methods
.method public cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 3

    .line 209
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 4

    .line 199
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/2addr v0, p2

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object p1
.end method

.method public cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 3

    .line 204
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object p1
.end method

.method public getFirstIndex()I
    .registers 2

    .line 194
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    return v0
.end method

.method public getLastIndex()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    return v0
.end method

.method public getNextIndex(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-ge p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    return p1
.end method

.method public getPreviousIndex(I)I
    .registers 3

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p1, -0x1

    :goto_6
    return p1
.end method
