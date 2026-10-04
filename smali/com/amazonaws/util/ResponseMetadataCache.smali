###### Class com.amazonaws.util.ResponseMetadataCache (com.amazonaws.util.ResponseMetadataCache)
.class public Lcom/amazonaws/util/ResponseMetadataCache;
.super Ljava/lang/Object;
.source "ResponseMetadataCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;
    }
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->a:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/amazonaws/ResponseMetadata;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->a:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/ResponseMetadata;

    return-object p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/amazonaws/ResponseMetadata;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_5

    .line 50
    monitor-exit p0

    return-void

    .line 51
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->a:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    .line 52
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    .line 48
    monitor-exit p0

    throw p1
.end method

###### Class com.amazonaws.util.ResponseMetadataCache.InternalCache (com.amazonaws.util.ResponseMetadataCache$InternalCache)
.class final Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;
.super Ljava/util/LinkedHashMap;
.source "ResponseMetadataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/ResponseMetadataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/amazonaws/ResponseMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 80
    iput p1, p0, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->a:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3

    .line 85
    invoke-virtual {p0}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->size()I

    move-result p1

    iget v0, p0, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->a:I

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
