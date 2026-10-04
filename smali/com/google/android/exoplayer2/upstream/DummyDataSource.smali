###### Class com.google.android.exoplayer2.upstream.DummyDataSource (com.google.android.exoplayer2.upstream.DummyDataSource)
.class public final Lcom/google/android/exoplayer2/upstream/DummyDataSource;
.super Ljava/lang/Object;
.source "DummyDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public static final INSTANCE:Lcom/google/android/exoplayer2/upstream/DummyDataSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DummyDataSource;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DummyDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 3

    .line 40
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Dummy source"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .registers 4

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.google.android.exoplayer2.upstream.DummyDataSource.AnonymousClass1 (com.google.android.exoplayer2.upstream.DummyDataSource$1)
.class final Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;
.super Ljava/lang/Object;
.source "DummyDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DummyDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 3

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DummyDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;)V

    return-object v0
.end method
