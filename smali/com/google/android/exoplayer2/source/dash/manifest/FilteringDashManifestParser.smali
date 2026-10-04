###### Class com.google.android.exoplayer2.source.dash.manifest.FilteringDashManifestParser (com.google.android.exoplayer2.source.dash.manifest.FilteringDashManifestParser)
.class public final Lcom/google/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;
.super Ljava/lang/Object;
.source "FilteringDashManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final dashManifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

.field private final filter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->dashManifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->filter:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->dashManifestParser:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->filter:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/FilteringDashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method
