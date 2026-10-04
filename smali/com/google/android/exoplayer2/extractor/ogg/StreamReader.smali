###### Class com.google.android.exoplayer2.extractor.ogg.StreamReader (com.google.android.exoplayer2.extractor.ogg.StreamReader)
.class abstract Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;,
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
    }
.end annotation


# static fields
.field private static final STATE_END_OF_INPUT:I = 0x3

.field private static final STATE_READ_HEADERS:I = 0x0

.field private static final STATE_READ_PAYLOAD:I = 0x2

.field private static final STATE_SKIP_HEADERS:I = 0x1


# instance fields
.field private currentGranule:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private formatSet:Z

.field private lengthOfReadPacket:J

.field private final oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

.field private oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

.field private payloadStartPosition:J

.field private sampleRate:I

.field private seekMapSet:Z

.field private setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

.field private state:I

.field private targetGranule:J

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    return-void
.end method

.method private readHeaders(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_2
    :goto_2
    if-eqz v1, :cond_31

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 p1, 0x3

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    const/4 p1, -0x1

    return p1

    .line 128
    :cond_11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_2

    .line 136
    :cond_31
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    .line 137
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    if-nez v1, :cond_48

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 139
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    .line 142
    :cond_48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 143
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_85

    .line 144
    :cond_56
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_68

    .line 145
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_85

    .line 147
    :cond_68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPageHeader()Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    move-result-object v0

    .line 148
    new-instance v11, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    iget p1, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int v8, p1, v2

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v2, v11

    move-object v7, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;-><init>(JJLcom/google/android/exoplayer2/extractor/ogg/StreamReader;IJ)V

    iput-object v11, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    .line 153
    :goto_85
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    const/4 p1, 0x2

    .line 154
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 156
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->trimPayload()V

    const/4 p1, 0x0

    return p1
.end method

.method private readPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 162
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_16

    move-object/from16 v7, p2

    .line 164
    iput-wide v2, v7, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v4

    :cond_16
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_23

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    .line 167
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 169
    :cond_23
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v2, :cond_34

    .line 170
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v2

    .line 171
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 172
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    .line 175
    :cond_34
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_48

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_48

    :cond_43
    const/4 v1, 0x3

    .line 188
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    const/4 v1, -0x1

    return v1

    .line 176
    :cond_48
    :goto_48
    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 177
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_7e

    .line 179
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v4, v2

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v6, v4, v9

    if-ltz v6, :cond_7e

    .line 181
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v10

    .line 182
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 183
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 184
    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 186
    :cond_7e
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected convertGranuleToTime(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 201
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected convertTimeToGranule(J)J
    .registers 5

    .line 211
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    return-void
.end method

.method protected onSeekEnd(J)V
    .registers 3

    .line 240
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method protected abstract preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
.end method

.method final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 5

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    packed-switch v0, :pswitch_data_20

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 114
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 110
    :pswitch_10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x2

    .line 111
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    const/4 p1, 0x0

    return p1

    .line 108
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method protected abstract readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
.end method

.method protected reset(Z)V
    .registers 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_11

    .line 76
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 77
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_14

    :cond_11
    const/4 p1, 0x1

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    :goto_14
    const-wide/16 v2, -0x1

    .line 82
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 83
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method final seek(JJ)V
    .registers 8

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->reset()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_13

    .line 92
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    goto :goto_22

    .line 94
    :cond_13
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    if-eqz p1, :cond_22

    .line 95
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->startSeek(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    const/4 p1, 0x2

    .line 96
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    :cond_22
    :goto_22
    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.ogg.StreamReader.AnonymousClass1 (com.google.android.exoplayer2.extractor.ogg.StreamReader$1)
.class synthetic Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$1;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.extractor.ogg.StreamReader.SetupData (com.google.android.exoplayer2.extractor.ogg.StreamReader$SetupData)
.class Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetupData"
.end annotation


# instance fields
.field format:Lcom/google/android/exoplayer2/Format;

.field oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.ogg.StreamReader.UnseekableOggSeeker (com.google.android.exoplayer2.extractor.ogg.StreamReader$UnseekableOggSeeker)
.class final Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V
    .registers 2

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>()V

    return-void
.end method


# virtual methods
.method public createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .registers 4

    .line 257
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 4

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startSeek(J)J
    .registers 3

    const-wide/16 p1, 0x0

    return-wide p1
.end method
