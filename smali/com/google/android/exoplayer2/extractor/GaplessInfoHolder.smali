###### Class com.google.android.exoplayer2.extractor.GaplessInfoHolder (com.google.android.exoplayer2.extractor.GaplessInfoHolder)
.class public final Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_ID:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field public static final GAPLESS_INFO_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_INFO_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 63
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    return-void
.end method

.method private setFromComment(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "iTunSMPB"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 114
    :cond_a
    sget-object p1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_33

    const/4 p2, 0x1

    .line 117
    :try_start_17
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 118
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_2e

    if-lez p1, :cond_33

    .line 120
    :cond_2e
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 121
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_32} :catch_33

    return p2

    :catch_33
    :cond_33
    return v0
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .registers 3

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 91
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 92
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    if-eqz v3, :cond_1e

    .line 93
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    .line 94
    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return v0
.end method

.method public setFromXingHeaderValue(I)Z
    .registers 3

    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    if-gtz v0, :cond_b

    if-lez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    .line 76
    :cond_b
    :goto_b
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 77
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    const/4 p1, 0x1

    return p1
.end method

###### Class com.google.android.exoplayer2.extractor.GaplessInfoHolder.AnonymousClass1 (com.google.android.exoplayer2.extractor.GaplessInfoHolder$1)
.class final Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder$1;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IIIII)Z
    .registers 7

    const/16 v0, 0x43

    if-ne p2, v0, :cond_13

    const/16 p2, 0x4f

    if-ne p3, p2, :cond_13

    const/16 p2, 0x4d

    if-ne p4, p2, :cond_13

    if-eq p5, p2, :cond_11

    const/4 p2, 0x2

    if-ne p1, p2, :cond_13

    :cond_11
    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method
