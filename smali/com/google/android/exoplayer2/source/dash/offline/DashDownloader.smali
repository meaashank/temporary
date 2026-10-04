###### Class com.google.android.exoplayer2.source.dash.offline.DashDownloader (com.google.android.exoplayer2.source.dash.offline.DashDownloader)
.class public final Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    return-void
.end method

.method private static addSegment(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ")V"
        }
    .end annotation

    .line 166
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 168
    new-instance p3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-direct {p3, p1, p2, v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .registers 5

    .line 153
    iget v0, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget v0, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 155
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    iget p3, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 156
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    .line 160
    :cond_21
    iget p2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object p1

    if-nez p1, :cond_2b

    const/4 p1, 0x0

    goto :goto_31

    .line 161
    :cond_2b
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V

    move-object p1, p2

    :goto_31
    return-object p1
.end method


# virtual methods
.method public getAllRepresentationKeys()[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
    .registers 10

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getManifest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 81
    :goto_d
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 82
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    const/4 v5, 0x0

    .line 83
    :goto_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3d

    .line 84
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2d
    if-ge v7, v6, :cond_3a

    .line 86
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    invoke-direct {v8, v3, v5, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;-><init>(III)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 90
    :cond_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    return-object v0
.end method

.method public bridge synthetic getAllRepresentationKeys()[Ljava/lang/Object;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getAllRepresentationKeys()[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    move-result-object v0

    return-object v0
.end method

.method protected getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .registers 3

    .line 95
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;Z)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    array-length v4, v2

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_b2

    aget-object v0, v2, v5

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 106
    :try_start_14
    invoke-direct {v6, v7, v1, v0}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v8
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_a8

    if-eqz v8, :cond_91

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    invoke-interface {v8, v9, v10}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7a

    .line 125
    iget v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v10

    .line 126
    iget-object v11, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v11, v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    iget v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    .line 127
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 128
    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v10

    .line 129
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v13

    if-eqz v13, :cond_51

    .line 132
    invoke-static {v3, v10, v11, v12, v13}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 134
    :cond_51
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 136
    invoke-static {v3, v10, v11, v12, v0}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 139
    :cond_5a
    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v13

    int-to-long v0, v9

    add-long/2addr v0, v13

    const-wide/16 v15, 0x1

    sub-long/2addr v0, v15

    :goto_63
    cmp-long v9, v13, v0

    if-gtz v9, :cond_ab

    .line 142
    invoke-interface {v8, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v17

    move-wide/from16 v19, v0

    add-long v0, v10, v17

    invoke-interface {v8, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v9

    invoke-static {v3, v0, v1, v12, v9}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    add-long/2addr v13, v15

    move-wide/from16 v0, v19

    goto :goto_63

    .line 122
    :cond_7a
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbounded index for representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_91
    :try_start_91
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No index for representation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a8} :catch_a8

    :catch_a8
    move-exception v0

    if-eqz p4, :cond_b1

    :cond_ab
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_c

    .line 116
    :cond_b1
    throw v0

    :cond_b2
    move-object/from16 v6, p0

    return-object v3
.end method

.method protected bridge synthetic getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;
    .registers 5

    .line 68
    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    check-cast p3, [Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
