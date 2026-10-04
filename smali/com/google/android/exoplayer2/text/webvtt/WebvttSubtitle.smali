###### Class com.google.android.exoplayer2.text.webvtt.WebvttSubtitle (com.google.android.exoplayer2.text.webvtt.WebvttSubtitle)
.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "WebvttSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private final cueTimesUs:[J

.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;",
            ">;"
        }
    .end annotation
.end field

.field private final numCues:I

.field private final sortedCueTimesUs:[J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cues:Ljava/util/List;

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->numCues:I

    .line 45
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->numCues:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    const/4 v0, 0x0

    .line 46
    :goto_14
    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->numCues:I

    if-ge v0, v1, :cond_31

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;

    mul-int/lit8 v2, v0, 0x2

    .line 49
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;->startTime:J

    aput-wide v4, v3, v2

    .line 50
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;->endTime:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 52
    :cond_31
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 53
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 80
    :goto_4
    iget v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->numCues:I

    if-ge v1, v4, :cond_60

    .line 81
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v5, v1, 0x2

    aget-wide v6, v4, v5

    cmp-long v4, v6, p1

    if-gtz v4, :cond_5d

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v4, v5

    cmp-long v4, p1, v5

    if-gez v4, :cond_5d

    if-nez v2, :cond_23

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_23
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cues:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;

    .line 86
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;->isNormalCue()Z

    move-result v5

    if-eqz v5, :cond_5a

    if-nez v3, :cond_35

    move-object v3, v4

    goto :goto_5d

    :cond_35
    if-nez v0, :cond_4e

    .line 93
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 94
    iget-object v5, v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5d

    :cond_4e
    const-string v5, "\n"

    .line 96
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5d

    .line 99
    :cond_5a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_60
    if-eqz v0, :cond_6b

    .line 105
    new-instance p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_6b
    if-eqz v3, :cond_70

    .line 108
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    :goto_70
    if-eqz v2, :cond_73

    return-object v2

    .line 114
    :cond_73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 69
    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 70
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v2, v2

    if-ge p1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length p2, p2

    if-ge p1, p2, :cond_d

    goto :goto_e

    :cond_d
    const/4 p1, -0x1

    :goto_e
    return p1
.end method
