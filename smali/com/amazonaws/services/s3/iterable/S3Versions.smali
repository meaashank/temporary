###### Class com.amazonaws.services.s3.iterable.S3Versions (com.amazonaws.services.s3.iterable.S3Versions)
.class public final Lcom/amazonaws/services/s3/iterable/S3Versions;
.super Ljava/lang/Object;
.source "S3Versions.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/amazonaws/services/s3/AmazonS3;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 49
    iput-object p2, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .registers 3

    .line 61
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .registers 4

    .line 75
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    .line 76
    iput-object p2, v0, Lcom/amazonaws/services/s3/iterable/S3Versions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .registers 4

    .line 90
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    .line 91
    iput-object p2, v0, Lcom/amazonaws/services/s3/iterable/S3Versions;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .registers 2

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public a()Ljava/lang/Integer;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/amazonaws/services/s3/AmazonS3;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->a:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;-><init>(Lcom/amazonaws/services/s3/iterable/S3Versions;Lcom/amazonaws/services/s3/iterable/S3Versions$1;)V

    return-object v0
.end method

###### Class com.amazonaws.services.s3.iterable.S3Versions.AnonymousClass1 (com.amazonaws.services.s3.iterable.S3Versions$1)
.class synthetic Lcom/amazonaws/services/s3/iterable/S3Versions$1;
.super Ljava/lang/Object;
.source "S3Versions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/iterable/S3Versions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.services.s3.iterable.S3Versions.VersionIterator (com.amazonaws.services.s3.iterable.S3Versions$VersionIterator)
.class Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;
.super Ljava/lang/Object;
.source "S3Versions.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/iterable/S3Versions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/iterable/S3Versions;

.field private b:Lcom/amazonaws/services/s3/model/VersionListing;

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amazonaws/services/s3/model/S3VersionSummary;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/iterable/S3Versions;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->c:Ljava/util/Iterator;

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/iterable/S3Versions;Lcom/amazonaws/services/s3/iterable/S3Versions$1;)V
    .registers 3

    .line 128
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;-><init>(Lcom/amazonaws/services/s3/iterable/S3Versions;)V

    return-void
.end method

.method private b()Lcom/amazonaws/services/s3/model/S3VersionSummary;
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/iterable/S3Versions;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 155
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    .line 156
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Versions;->c()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    return-object v0
.end method

.method private c()V
    .registers 3

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b:Lcom/amazonaws/services/s3/model/VersionListing;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->c:Ljava/util/Iterator;

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 166
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->k()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2c

    .line 187
    :cond_15
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    :cond_2b
    return-void

    .line 167
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b:Lcom/amazonaws/services/s3/model/VersionListing;

    if-nez v0, :cond_6f

    .line 168
    new-instance v0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Versions;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Versions;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 172
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Versions;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->c(Ljava/lang/String;)V

    goto :goto_59

    .line 174
    :cond_50
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Versions;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->c(Ljava/lang/String;)V

    .line 177
    :goto_59
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Versions;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a(Ljava/lang/Integer;)V

    .line 178
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Versions;->d()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b:Lcom/amazonaws/services/s3/model/VersionListing;

    goto :goto_7d

    .line 180
    :cond_6f
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a:Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/iterable/S3Versions;->d()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/services/s3/model/VersionListing;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 183
    :goto_7d
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->a()Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->c:Ljava/util/Iterator;

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/S3VersionSummary;
    .registers 3

    .line 142
    invoke-direct {p0}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->c()V

    .line 143
    invoke-direct {p0}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b()Lcom/amazonaws/services/s3/model/S3VersionSummary;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .line 136
    invoke-direct {p0}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->c()V

    .line 137
    invoke-direct {p0}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->b()Lcom/amazonaws/services/s3/model/S3VersionSummary;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .line 128
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;->a()Lcom/amazonaws/services/s3/model/S3VersionSummary;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
