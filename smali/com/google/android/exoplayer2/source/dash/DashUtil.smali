###### Class com.google.android.exoplayer2.source.dash.DashUtil (com.google.android.exoplayer2.source.dash.DashUtil)
.class public final Lcom/google/android/exoplayer2/source/dash/DashUtil;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .registers 4

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    return-object v0

    .line 192
    :cond_9
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 193
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_22

    :cond_1a
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    :goto_22
    return-object v0
.end method

.method public static loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .registers 4

    const/4 v0, 0x1

    .line 122
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_f

    .line 124
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    :goto_f
    return-object p0
.end method

.method public static loadDrmInitData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 4

    const/4 v0, 0x2

    .line 74
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 77
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_10
    iget-object p1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    .line 83
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    if-nez p0, :cond_1b

    .line 84
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto :goto_21

    .line 86
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->copyWithManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    :goto_21
    return-object p0
.end method

.method private static loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .registers 7

    .line 143
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 147
    :cond_8
    iget-object v2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->newWrappedExtractor(ILcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object p1

    if-eqz p3, :cond_25

    .line 150
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p3

    if-nez p3, :cond_17

    return-object v1

    .line 156
    :cond_17
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    if-nez v1, :cond_24

    .line 158
    invoke-static {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    move-object v0, p3

    goto :goto_25

    :cond_24
    move-object v0, v1

    .line 164
    :cond_25
    :goto_25
    invoke-static {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    return-object p1
.end method

.method private static loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .registers 12

    .line 171
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 172
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 173
    new-instance p3, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    .line 176
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->load()V

    return-void
.end method

.method public static loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .registers 5

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 58
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->load()V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    return-object p0
.end method

.method public static loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/Format;
    .registers 4

    const/4 v0, 0x0

    .line 102
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_f

    .line 104
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    aget-object p0, p0, v0

    :goto_f
    return-object p0
.end method

.method private static newWrappedExtractor(ILcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .registers 4

    .line 180
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    const-string v1, "video/webm"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "audio/webm"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_1e

    .line 183
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    goto :goto_23

    :cond_1e
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    .line 184
    :goto_23
    new-instance v1, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V

    return-object v1
.end method
