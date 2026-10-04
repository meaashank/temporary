###### Class com.google.android.exoplayer2.source.dash.DashMediaPeriod (com.google.android.exoplayer2.source.dash.DashMediaPeriod)
.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;>;",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final elapsedRealtimeOffset:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

.field private eventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private periodIndex:I

.field private final playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private final trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

.field private final trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;)V
    .registers 13

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 97
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 98
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 99
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    .line 100
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 101
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    .line 102
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 103
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 104
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 105
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-direct {p1, p2, p12, p10}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    const/4 p1, 0x0

    .line 106
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 107
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    .line 108
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    .line 109
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 110
    invoke-interface {p11, p1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 111
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    .line 112
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->eventStreams:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 113
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 115
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 116
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    return-void
.end method

.method private static buildManifestEventTrackGroupInfos(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p3

    const/4 p3, 0x0

    .line 510
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_33

    .line 511
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 512
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-emsg"

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 514
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/Format;

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 515
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->mpdEventTrack(I)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 p3, p3, 0x1

    move v1, v2

    goto :goto_3

    :cond_33
    return-void
.end method

.method private static buildPrimaryAndEmbeddedTrackGroupInfos(Ljava/util/List;[[II[Z[Z[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[[II[Z[Z[",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v2, :cond_d0

    .line 465
    aget-object v5, p1, v3

    .line 466
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 467
    array-length v7, v5

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v7, :cond_23

    aget v9, v5, v8

    .line 468
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 470
    :cond_23
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/exoplayer2/Format;

    const/4 v8, 0x0

    .line 471
    :goto_2a
    array-length v9, v7

    if-ge v8, v9, :cond_3a

    .line 472
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 475
    :cond_3a
    aget v6, v5, v1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    add-int/lit8 v8, v4, 0x1

    .line 477
    aget-boolean v10, p3, v3

    const/4 v11, -0x1

    if-eqz v10, :cond_4e

    add-int/lit8 v10, v8, 0x1

    move v12, v10

    move v10, v8

    goto :goto_50

    :cond_4e
    move v12, v8

    const/4 v10, -0x1

    .line 479
    :goto_50
    aget-boolean v13, p4, v3

    if-eqz v13, :cond_57

    add-int/lit8 v13, v12, 0x1

    goto :goto_59

    :cond_57
    move v13, v12

    const/4 v12, -0x1

    .line 482
    :goto_59
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v1, p5, v4

    .line 483
    iget v1, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 484
    invoke-static {v1, v5, v4, v10, v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrack(I[IIII)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v1

    aput-object v1, p6, v4

    if-eq v10, v11, :cond_97

    .line 491
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":emsg"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "application/x-emsg"

    const/4 v0, 0x0

    invoke-static {v1, v7, v0, v11, v0}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 493
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v7, 0x1

    new-array v11, v7, [Lcom/google/android/exoplayer2/Format;

    const/4 v7, 0x0

    aput-object v1, v11, v7

    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v0, p5, v10

    .line 495
    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEmsgTrack([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v0

    aput-object v0, p6, v10

    :cond_97
    const/4 v0, -0x1

    if-eq v12, v0, :cond_c8

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":cea608"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/cea-608"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v1, v6, v7}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 500
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/google/android/exoplayer2/Format;

    aput-object v0, v7, v6

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v1, p5, v12

    .line 502
    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedCea608Track([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v0

    aput-object v0, p6, v12

    goto :goto_c9

    :cond_c8
    const/4 v6, 0x0

    :goto_c9
    add-int/lit8 v3, v3, 0x1

    move v4, v13

    move-object v0, p0

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_d0
    return v4
.end method

.method private buildSampleStream(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 522
    new-array v2, v1, [I

    .line 523
    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    .line 524
    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_13

    const/16 v22, 0x1

    goto :goto_15

    :cond_13
    const/16 v22, 0x0

    :goto_15
    if-eqz v22, :cond_2a

    .line 527
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 528
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x4

    aput v3, v2, v6

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 531
    :goto_2b
    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedCea608TrackGroupIndex:I

    if-eq v7, v4, :cond_32

    const/16 v23, 0x1

    goto :goto_34

    :cond_32
    const/16 v23, 0x0

    :goto_34
    if-eqz v23, :cond_4a

    .line 533
    iget-object v4, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedCea608TrackGroupIndex:I

    .line 534
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x3

    .line 535
    aput v5, v2, v3

    move v3, v4

    .line 537
    :cond_4a
    array-length v4, v2

    if-ge v3, v4, :cond_57

    .line 538
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/Format;

    .line 539
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    :cond_57
    move-object v4, v1

    move-object v3, v2

    .line 541
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v1, :cond_68

    if-eqz v22, :cond_68

    iget-object v1, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 543
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->newPlayerTrackEmsgHandler()Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    move-result-object v1

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    :goto_69
    move-object v11, v1

    .line 545
    iget-object v13, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v14, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v15, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-wide v6, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, p2

    move/from16 v19, v5

    move-wide/from16 v20, v6

    move-object/from16 v24, v11

    .line 546
    invoke-interface/range {v13 .. v24}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;IJZZLcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    move-result-object v5

    .line 557
    new-instance v13, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-object v7, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget v10, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, v13

    move-object/from16 v6, p0

    move-wide/from16 v8, p3

    move-object v14, v11

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[I[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V

    .line 568
    monitor-enter p0

    .line 570
    :try_start_9d
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v13, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    monitor-exit p0

    return-object v13

    :catchall_a4
    move-exception v0

    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_a4

    throw v0
.end method

.method private static buildTrackGroups(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    .line 368
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getGroupedAdaptationSetIndices(Ljava/util/List;)[[I

    move-result-object v1

    .line 370
    array-length v2, v1

    .line 371
    new-array v3, v2, [Z

    .line 372
    new-array v4, v2, [Z

    .line 373
    invoke-static {v2, p0, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->identifyEmbeddedTracks(ILjava/util/List;[[I[Z[Z)I

    move-result v0

    add-int/2addr v0, v2

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 378
    new-array v7, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 379
    new-array v8, v0, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-object v0, p0

    move-object v5, v7

    move-object v6, v8

    .line 381
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildPrimaryAndEmbeddedTrackGroupInfos(Ljava/util/List;[[II[Z[Z[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;)I

    move-result p0

    .line 385
    invoke-static {p1, v7, v8, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildManifestEventTrackGroupInfos(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;I)V

    .line 387
    new-instance p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {p0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 576
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 577
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    const-string v2, "urn:mpeg:dash:adaptation-set-switching:2016"

    .line 578
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getGroupedAdaptationSetIndices(Ljava/util/List;)[[I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .line 391
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 392
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_1b

    .line 394
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 397
    :cond_1b
    new-array v3, v0, [[I

    .line 398
    new-array v4, v0, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_21
    if-ge v5, v0, :cond_6e

    .line 402
    aget-boolean v7, v4, v5

    if-eqz v7, :cond_28

    goto :goto_6b

    :cond_28
    const/4 v7, 0x1

    .line 406
    aput-boolean v7, v4, v5

    .line 408
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 407
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v8

    if-nez v8, :cond_43

    add-int/lit8 v8, v6, 0x1

    .line 410
    new-array v7, v7, [I

    aput v5, v7, v2

    aput-object v7, v3, v6

    move v6, v8

    goto :goto_6b

    .line 412
    :cond_43
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 413
    array-length v9, v8

    add-int/2addr v9, v7

    new-array v9, v9, [I

    .line 414
    aput v5, v9, v2

    const/4 v10, 0x0

    .line 415
    :goto_52
    array-length v11, v8

    if-ge v10, v11, :cond_66

    .line 416
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 417
    aput-boolean v7, v4, v11

    add-int/lit8 v10, v10, 0x1

    .line 418
    aput v11, v9, v10

    goto :goto_52

    :cond_66
    add-int/lit8 v7, v6, 0x1

    .line 420
    aput-object v9, v3, v6

    move v6, v7

    :goto_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_6e
    if-ge v6, v0, :cond_77

    .line 425
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [[I

    :cond_77
    return-object v3
.end method

.method private static hasCea608Track(Ljava/util/List;[I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 601
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_2e

    aget v3, p1, v2

    .line 602
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    const/4 v4, 0x0

    .line 603
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2b

    .line 604
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    const-string v6, "urn:scte:dash:cc:cea-608:2015"

    .line 605
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2e
    return v1
.end method

.method private static hasEventMessageTrack(Ljava/util/List;[I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 587
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_2c

    aget v3, p1, v2

    .line 588
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v4, 0x0

    .line 589
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_29

    .line 590
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 591
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2c
    return v1
.end method

.method private static identifyEmbeddedTracks(ILjava/util/List;[[I[Z[Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[[I[Z[Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v0, p0, :cond_20

    .line 447
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Ljava/util/List;[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_11

    .line 448
    aput-boolean v3, p3, v0

    add-int/lit8 v1, v1, 0x1

    .line 451
    :cond_11
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 452
    aput-boolean v3, p4, v0

    add-int/lit8 v1, v1, 0x1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    return v1
.end method

.method private static newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 615
    new-array p0, p0, [Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object p0
.end method

.method private static releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V
    .registers 2

    .line 619
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v0, :cond_9

    .line 620
    check-cast p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    :cond_9
    return-void
.end method

.method private selectEmbeddedSampleStreams([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "[ZJ",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 274
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_71

    .line 275
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-nez v2, :cond_11

    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    if-eqz v2, :cond_21

    :cond_11
    aget-object v2, p1, v1

    if-eqz v2, :cond_19

    aget-boolean v2, p2, v1

    if-nez v2, :cond_21

    .line 278
    :cond_19
    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V

    const/4 v2, 0x0

    .line 279
    aput-object v2, p3, v1

    .line 283
    :cond_21
    aget-object v2, p1, v1

    if-eqz v2, :cond_6e

    .line 284
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 285
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v3, v2

    .line 286
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6e

    .line 287
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    invoke-virtual {p7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 289
    aget-object v5, p3, v1

    if-nez v3, :cond_49

    .line 290
    instance-of v6, v5, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    goto :goto_57

    :cond_49
    instance-of v6, v5, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v6, :cond_56

    move-object v6, v5

    check-cast v6, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-ne v6, v3, :cond_56

    const/4 v6, 0x1

    goto :goto_57

    :cond_56
    const/4 v6, 0x0

    :goto_57
    if-nez v6, :cond_6e

    .line 294
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V

    if-nez v3, :cond_64

    .line 295
    new-instance v2, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    goto :goto_6a

    :cond_64
    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 296
    invoke-virtual {v3, p5, p6, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v2

    :goto_6a
    aput-object v2, p3, v1

    .line 297
    aput-boolean v4, p4, v1

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_71
    return-void
.end method

.method private selectEventSampleStreams([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "[Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/EventSampleStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 242
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_64

    .line 243
    aget-object v2, p3, v1

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    if-eqz v2, :cond_1f

    .line 244
    aget-object v2, p3, v1

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    .line 245
    aget-object v3, p1, v1

    if-eqz v3, :cond_1c

    aget-boolean v3, p2, v1

    if-nez v3, :cond_18

    goto :goto_1c

    .line 248
    :cond_18
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_1c
    :goto_1c
    const/4 v2, 0x0

    .line 246
    aput-object v2, p3, v1

    .line 252
    :cond_1f
    :goto_1f
    aget-object v2, p3, v1

    if-nez v2, :cond_61

    aget-object v2, p1, v1

    if-eqz v2, :cond_61

    .line 253
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 254
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v3, v2

    .line 255
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_61

    .line 256
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 257
    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 258
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Lcom/google/android/exoplayer2/Format;Z)V

    .line 259
    aput-object v4, p3, v1

    const/4 v2, 0x1

    .line 260
    aput-boolean v2, p4, v1

    .line 261
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_64
    return-void
.end method

.method private selectPrimarySampleStreams([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "[Z[",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "[ZJ",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5a

    .line 213
    aget-object v1, p3, v0

    instance-of v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v1, :cond_2d

    .line 215
    aget-object v1, p3, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 216
    aget-object v2, p1, v0

    if-eqz v2, :cond_27

    aget-boolean v2, p2, v0

    if-nez v2, :cond_17

    goto :goto_27

    .line 220
    :cond_17
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 221
    invoke-virtual {p7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2d

    .line 217
    :cond_27
    :goto_27
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    const/4 v1, 0x0

    .line 218
    aput-object v1, p3, v0

    .line 225
    :cond_2d
    :goto_2d
    aget-object v1, p3, v0

    if-nez v1, :cond_57

    aget-object v1, p1, v0

    if-eqz v1, :cond_57

    .line 226
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v2, v1

    .line 228
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-nez v3, :cond_57

    .line 229
    aget-object v3, p1, v0

    invoke-direct {p0, v2, v3, p5, p6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v2

    .line 231
    invoke-virtual {p7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    aput-object v2, p3, v0

    const/4 v1, 0x1

    .line 233
    aput-boolean v1, p4, v0

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5a
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 307
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 10

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 350
    iget v4, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 351
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 56
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 361
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public declared-synchronized onSampleStreamReleased(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz p1, :cond_e

    .line 159
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->release()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 161
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    .line 156
    monitor-exit p0

    throw p1
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 4

    .line 167
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 168
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public release()V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->release()V

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 149
    invoke-virtual {v3, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public seekToUs(J)J
    .registers 8

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 339
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 341
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    array-length v1, v0

    :goto_12
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 342
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->seekToUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1c
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 18

    move-object v8, p0

    .line 184
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 185
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    .line 187
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->selectPrimarySampleStreams([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V

    move-object v5, v10

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->selectEventSampleStreams([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZLjava/util/List;)V

    move-wide/from16 v5, p5

    .line 191
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->selectEmbeddedSampleStreams([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJLandroid/util/SparseArray;)V

    .line 194
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    const/4 v0, 0x0

    .line 195
    :goto_2a
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    .line 196
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 198
    :cond_3c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    .line 199
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 201
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    return-wide p5
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .registers 10

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 127
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_22

    aget-object v4, v0, v3

    .line 131
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v4, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 133
    :cond_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 135
    :cond_27
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->eventStreams:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 136
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    array-length v0, p2

    :goto_32
    if-ge v1, v0, :cond_5e

    aget-object v2, p2, v1

    .line 137
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 138
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStreamId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 139
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->updateEventStream(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Z)V

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_5e
    return-void
.end method

###### Class com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo (com.google.android.exoplayer2.source.dash.DashMediaPeriod$TrackGroupInfo)
.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackGroupInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo$TrackGroupCategory;
    }
.end annotation


# static fields
.field private static final CATEGORY_EMBEDDED:I = 0x1

.field private static final CATEGORY_MANIFEST_EVENTS:I = 0x2

.field private static final CATEGORY_PRIMARY:I


# instance fields
.field public final adaptationSetIndices:[I

.field public final embeddedCea608TrackGroupIndex:I

.field public final embeddedEventMessageTrackGroupIndex:I

.field public final eventStreamGroupIndex:I

.field public final primaryTrackGroupIndex:I

.field public final trackGroupCategory:I

.field public final trackType:I


# direct methods
.method private constructor <init>(II[IIIII)V
    .registers 8

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 718
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 719
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 720
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 721
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 722
    iput p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedCea608TrackGroupIndex:I

    .line 723
    iput p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    return-void
.end method

.method public static embeddedCea608Track([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 11

    .line 688
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v8
.end method

.method public static embeddedEmsgTrack([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 11

    .line 676
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v8
.end method

.method public static mpdEventTrack(I)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 10

    .line 699
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v8

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v8
.end method

.method public static primaryTrack(I[IIII)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 14

    .line 664
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v2, 0x0

    const/4 v7, -0x1

    move-object v0, v8

    move v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v8
.end method

###### Class com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo.TrackGroupCategory (com.google.android.exoplayer2.source.dash.DashMediaPeriod$TrackGroupInfo$TrackGroupCategory)
.class public interface abstract annotation Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo$TrackGroupCategory;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TrackGroupCategory"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
