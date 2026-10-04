###### Class com.google.android.exoplayer2.extractor.flv.TagPayloadReader (com.google.android.exoplayer2.extractor.flv.TagPayloadReader)
.class abstract Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .registers 5

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    :cond_9
    return-void
.end method

.method protected abstract parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
.end method

.method protected abstract parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
.end method

.method public abstract seek()V
.end method

###### Class com.google.android.exoplayer2.extractor.flv.TagPayloadReader.UnsupportedFormatException (com.google.android.exoplayer2.extractor.flv.TagPayloadReader$UnsupportedFormatException)
.class public final Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
.super Lcom/google/android/exoplayer2/ParserException;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsupportedFormatException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    return-void
.end method
