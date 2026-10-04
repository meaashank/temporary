###### Class com.google.android.exoplayer2.source.dash.manifest.SingleSegmentIndex (com.google.android.exoplayer2.source.dash.manifest.SingleSegmentIndex)
.class final Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;
.super Ljava/lang/Object;
.source "SingleSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# instance fields
.field private final uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;->uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-void
.end method


# virtual methods
.method public getDurationUs(JJ)J
    .registers 5

    return-wide p3
.end method

.method public getFirstSegmentNum()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSegmentCount(J)I
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public getSegmentNum(JJ)J
    .registers 5

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 3

    .line 51
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;->uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object p1
.end method

.method public getTimeUs(J)J
    .registers 3

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public isExplicit()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
