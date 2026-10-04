###### Class com.google.android.exoplayer2.source.SampleQueue (com.google.android.exoplayer2.source.SampleQueue)
.class public final Lcom/google/android/exoplayer2/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;,
        Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field public static final ADVANCE_FAILED:I = -0x1

.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private final extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

.field private firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

.field private lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

.field private final metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

.field private pendingFormatAdjustment:Z

.field private pendingSplice:Z

.field private readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

.field private sampleOffsetUs:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private totalBytesWritten:J

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

.field private writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .registers 5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 83
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    .line 84
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    .line 85
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    .line 86
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 88
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 89
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    return-void
.end method

.method private advanceReadTo(J)V
    .registers 6

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    :cond_f
    return-void
.end method

.method private clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V
    .registers 7

    .line 595
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 603
    new-array v0, v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v1, 0x0

    .line 605
    :goto_18
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 606
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    aput-object v2, v0, v1

    .line 607
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 609
    :cond_26
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V

    return-void
.end method

.method private discardDownstreamTo(J)V
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-void

    .line 497
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_7

    .line 503
    :cond_21
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_31

    .line 504
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :cond_31
    return-void
.end method

.method private static getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1c

    .line 651
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    .line 652
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method private postAppend(I)V
    .registers 6

    .line 634
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 635
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_16

    .line 636
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :cond_16
    return-void
.end method

.method private preAppend(I)I
    .registers 8

    .line 621
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_1c

    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->allocate()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 625
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .registers 8

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceReadTo(J)V

    :cond_3
    :goto_3
    if-lez p4, :cond_30

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 441
    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_3

    :cond_30
    return-void
.end method

.method private readData(J[BI)V
    .registers 10

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceReadTo(J)V

    move-wide v0, p1

    move p1, p4

    :cond_5
    :goto_5
    if-lez p1, :cond_34

    .line 461
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v2, v0

    long-to-int p2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 462
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 463
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v3

    sub-int v4, p4, p1

    invoke-static {v2, v3, p3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p1, p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 467
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_5

    .line 468
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_5

    :cond_34
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 364
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 367
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 368
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 370
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_25

    const/4 v8, 0x1

    goto :goto_26

    :cond_25
    const/4 v8, 0x0

    :goto_26
    and-int/lit8 v5, v5, 0x7f

    .line 375
    iget-object v9, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v9, v9, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v9, :cond_36

    .line 376
    iget-object v9, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 378
    :cond_36
    iget-object v9, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v9, v9, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-direct {v0, v3, v4, v9, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    int-to-long v9, v5

    add-long/2addr v3, v9

    if-eqz v8, :cond_59

    .line 384
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 385
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 387
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    move v10, v6

    goto :goto_5a

    :cond_59
    const/4 v10, 0x1

    .line 393
    :goto_5a
    iget-object v5, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-eqz v5, :cond_66

    .line 394
    array-length v6, v5

    if-ge v6, v10, :cond_64

    goto :goto_66

    :cond_64
    :goto_64
    move-object v11, v5

    goto :goto_69

    .line 395
    :cond_66
    :goto_66
    new-array v5, v10, [I

    goto :goto_64

    .line 397
    :goto_69
    iget-object v5, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v5, :cond_75

    .line 398
    array-length v6, v5

    if-ge v6, v10, :cond_73

    goto :goto_75

    :cond_73
    :goto_73
    move-object v12, v5

    goto :goto_78

    .line 399
    :cond_75
    :goto_75
    new-array v5, v10, [I

    goto :goto_73

    :goto_78
    if-eqz v8, :cond_a4

    mul-int/lit8 v5, v10, 0x6

    .line 403
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 404
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 406
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_8f
    if-ge v7, v10, :cond_b0

    .line 408
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    aput v5, v11, v7

    .line 409
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    aput v5, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    .line 412
    :cond_a4
    aput v7, v11, v7

    .line 413
    iget v5, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    iget-wide v8, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long v8, v3, v8

    long-to-int v6, v8

    sub-int/2addr v5, v6

    aput v5, v12, v7

    .line 417
    :cond_b0
    iget-object v5, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 418
    iget-object v9, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v13, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v14, v1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v15, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v1, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    move/from16 v16, v1

    move/from16 v17, v5

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BIII)V

    .line 423
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 424
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 425
    iget v3, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    return-void
.end method


# virtual methods
.method public advanceTo(JZZ)I
    .registers 6

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->advanceTo(JZZ)I

    move-result p1

    return p1
.end method

.method public advanceToEnd()I
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->advanceToEnd()I

    move-result v0

    return v0
.end method

.method public discardTo(JZZ)V
    .registers 6

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardTo(JZZ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public discardToEnd()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardToEnd()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public discardToRead()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardToRead()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public discardUpstreamSamples(I)V
    .registers 8

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 150
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1b

    goto :goto_4f

    .line 157
    :cond_1b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 158
    :goto_1d
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_28

    .line 159
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_1d

    .line 162
    :cond_28
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 165
    new-instance v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 167
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_43

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_44

    :cond_43
    move-object v1, p1

    :goto_44
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    if-ne v1, v0, :cond_67

    .line 170
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_67

    .line 151
    :cond_4f
    :goto_4f
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 152
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 153
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 154
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :cond_67
    :goto_67
    return-void
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .registers 4

    .line 534
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->format(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    .line 536
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p1, 0x0

    .line 537
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    .line 538
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz p1, :cond_1c

    if-eqz v1, :cond_1c

    .line 539
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    :cond_1c
    return-void
.end method

.method public getFirstIndex()I
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getFirstIndex()I

    move-result v0

    return v0
.end method

.method public getFirstTimestampUs()J
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getFirstTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestQueuedTimestampUs()J
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadIndex()I
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getWriteIndex()I
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public hasNextSample()Z
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    return v0
.end method

.method public peekSourceId()I
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->peekSourceId()I

    move-result v0

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I
    .registers 14

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)I

    move-result p3

    packed-switch p3, :pswitch_data_52

    .line 349
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_17
    const/4 p1, -0x3

    return p1

    .line 333
    :pswitch_19
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    if-nez p1, :cond_49

    .line 334
    iget-wide p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long p1, p3, p5

    if-gez p1, :cond_2a

    const/high16 p1, -0x80000000

    .line 335
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 338
    :cond_2a
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 339
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)V

    .line 342
    :cond_35
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget p1, p1, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 343
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget-wide p3, p1, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget p2, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(JLjava/nio/ByteBuffer;I)V

    :cond_49
    const/4 p1, -0x4

    return p1

    .line 330
    :pswitch_4b
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p1, -0x5

    return p1

    nop

    :pswitch_data_52
    .packed-switch -0x5
        :pswitch_4b
        :pswitch_19
        :pswitch_17
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->reset(Z)V

    .line 111
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 112
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 113
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 115
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 116
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->trim()V

    return-void
.end method

.method public rewind()V
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->rewind()V

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .registers 8

    .line 546
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preAppend(I)I

    move-result p2

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 548
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v1

    .line 547
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_22

    if-eqz p3, :cond_1c

    return p2

    .line 553
    :cond_1c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 555
    :cond_22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->postAppend(I)V

    return p1
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 8

    :goto_0
    if-lez p2, :cond_1c

    .line 562
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preAppend(I)I

    move-result v0

    .line 563
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 564
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    .line 563
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    sub-int/2addr p2, v0

    .line 566
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->postAppend(I)V

    goto :goto_0

    :cond_1c
    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 19

    move-object v0, p0

    move-wide v1, p1

    .line 573
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    if-eqz v3, :cond_b

    .line 574
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 576
    :cond_b
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    if-eqz v3, :cond_21

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_20

    .line 577
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->attemptSplice(J)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_20

    :cond_1c
    const/4 v4, 0x0

    .line 580
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    goto :goto_21

    :cond_20
    :goto_20
    return-void

    .line 582
    :cond_21
    :goto_21
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v1, v4

    .line 583
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    move/from16 v10, p4

    int-to-long v6, v10

    sub-long/2addr v4, v6

    move/from16 v6, p5

    int-to-long v6, v6

    sub-long v8, v4, v6

    .line 584
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    move-wide v5, v1

    move v7, p3

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public setReadPosition(I)Z
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->setReadPosition(I)Z

    move-result p1

    return p1
.end method

.method public setSampleOffsetUs(J)V
    .registers 6

    .line 526
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_b

    .line 527
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    :cond_b
    return-void
.end method

.method public setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V
    .registers 2

    .line 516
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    return-void
.end method

.method public sourceId(I)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceId(I)V

    return-void
.end method

.method public splice()V
    .registers 2

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    return-void
.end method

###### Class com.google.android.exoplayer2.source.SampleQueue.AllocationNode (com.google.android.exoplayer2.source.SampleQueue$AllocationNode)
.class final Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllocationNode"
.end annotation


# instance fields
.field public allocation:Lcom/google/android/exoplayer2/upstream/Allocation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final endPosition:J

.field public next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final startPosition:J

.field public wasInitialized:Z


# direct methods
.method public constructor <init>(JI)V
    .registers 6

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 691
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    .registers 3

    const/4 v0, 0x0

    .line 723
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 724
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 725
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    return-object v1
.end method

.method public initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V
    .registers 3

    .line 701
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 702
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    const/4 p1, 0x1

    .line 703
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    return-void
.end method

.method public translateOffset(J)I
    .registers 5

    .line 714
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget p2, p2, Lcom/google/android/exoplayer2/upstream/Allocation;->offset:I

    add-int/2addr p1, p2

    return p1
.end method

###### Class com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener (com.google.android.exoplayer2.source.SampleQueue$UpstreamFormatChangedListener)
.class public interface abstract Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpstreamFormatChangedListener"
.end annotation


# virtual methods
.method public abstract onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
.end method
