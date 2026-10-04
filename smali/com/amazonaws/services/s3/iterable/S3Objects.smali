###### Class com.amazonaws.services.s3.iterable.S3Objects (com.amazonaws.services.s3.iterable.S3Objects)
.class public final Lcom/amazonaws/services/s3/iterable/S3Objects;
.super Ljava/lang/Object;
.source "S3Objects.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/amazonaws/services/s3/AmazonS3;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->b:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->d:Ljava/lang/Integer;

    .line 47
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 48
    iput-object p2, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Objects;
    .registers 3

    .line 60
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Objects;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Objects;
    .registers 4

    .line 73
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Objects;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    .line 74
    iput-object p2, v0, Lcom/amazonaws/services/s3/iterable/S3Objects;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/amazonaws/services/s3/iterable/S3Objects;
    .registers 2

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public a()Ljava/lang/Integer;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/amazonaws/services/s3/AmazonS3;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->a:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;-><init>(Lcom/amazonaws/services/s3/iterable/S3Objects;Lcom/amazonaws/services/s3/iterable/S3Objects$1;)V

    return-object v0
.end method

###### Class com.amazonaws.services.s3.iterable.S3Objects.AnonymousClass1 (com.amazonaws.services.s3.iterable.S3Objects$1)
.class synthetic Lcom/amazonaws/services/s3/iterable/S3Objects$1;
.super Ljava/lang/Object;
.source "S3Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/iterable/S3Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.services.s3.iterable.S3Objects.S3ObjectIterator (com.amazonaws.services.s3.iterable.S3Objects$S3ObjectIterator)
.class Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;
.super Ljava/lang/Object;
.source "S3Objects.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/iterable/S3Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "S3ObjectIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/iterable/S3Objects;

.field private b:Lcom/amazonaws/services/s3/model/ObjectListing;

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/iterable/S3Objects;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->c:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/iterable/S3Objects;Lcom/amazonaws/services/s3/iterable/S3Objects$1;)V
    .registers 3

    .line 107
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;-><init>(Lcom/amazonaws/services/s3/iterable/S3Objects;)V

    return-void
.end method

.method private b()V
    .registers 3

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b:Lcom/amazonaws/services/s3/model/ObjectListing;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->c:Ljava/util/Iterator;

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->i()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 134
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b:Lcom/amazonaws/services/s3/model/ObjectListing;

    if-nez v0, :cond_47

    .line 135
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Objects;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Objects;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->c(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Objects;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a(Ljava/lang/Integer;)V

    .line 139
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Objects;->d()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b:Lcom/amazonaws/services/s3/model/ObjectListing;

    goto :goto_55

    .line 141
    :cond_47
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/iterable/S3Objects;->d()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 144
    :goto_55
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->c:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    .registers 2

    .line 121
    invoke-direct {p0}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b()V

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->b()V

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->a()Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
