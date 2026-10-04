###### Class com.amazonaws.services.s3.model.ObjectMetadata (com.amazonaws.services.s3.model.ObjectMetadata)
.class public Lcom/amazonaws/services/s3/model/ObjectMetadata;
.super Ljava/lang/Object;
.source "ObjectMetadata.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/ObjectRestoreResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    .line 62
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    .line 100
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    move-object v0, v1

    goto :goto_23

    :cond_1c
    new-instance v0, Ljava/util/TreeMap;

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_23
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    .line 104
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    if-nez v0, :cond_2a

    goto :goto_31

    :cond_2a
    new-instance v1, Ljava/util/TreeMap;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_31
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    .line 107
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->c(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f:Ljava/util/Date;

    .line 108
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->c(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e:Ljava/util/Date;

    .line 110
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h:Ljava/lang/Boolean;

    .line 111
    iget-object p1, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->i:Ljava/util/Date;

    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->c(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->i:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public A()[Ljava/lang/Long;
    .registers 8

    .line 922
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Range"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4c

    const-string v1, "[ -/]+"

    .line 925
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 927
    :try_start_13
    new-array v2, v1, [Ljava/lang/Long;

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_2f} :catch_30

    goto :goto_4d

    :catch_30
    move-exception v0

    .line 929
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse content range. Header \'Content-Range\' has corrupted data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    return-object v2
.end method

.method public B()Ljava/lang/String;
    .registers 3

    .line 942
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-replication-status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Date;
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->c(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 4

    .line 837
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-storage-class"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 771
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 751
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f:Ljava/util/Date;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_b

    .line 887
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v0, "x-amz-request-charged"

    const-string v1, "requester"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 760
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/util/Date;)V
    .registers 2

    .line 795
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->i:Ljava/util/Date;

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 805
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 686
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Last-Modified"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Z
    .registers 3

    .line 881
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-request-charged"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->x()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 782
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->i:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->c(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 712
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption-customer-algorithm"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/util/Date;)V
    .registers 2

    .line 821
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e:Ljava/util/Date;

    return-void
.end method

.method public e()Ljava/lang/Boolean;
    .registers 2

    .line 814
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    .line 730
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption-customer-key-MD5"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption-customer-algorithm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .line 720
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption-customer-key-MD5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Language"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 231
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 232
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Cache-Control"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j()Ljava/util/Date;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Last-Modified"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->c(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    .line 551
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v0, "Content-MD5"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 553
    :cond_a
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    return-void
.end method

.method public k()J
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_f

    const-wide/16 v0, 0x0

    return-wide v0

    .line 296
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 4

    .line 602
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Disposition"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k_()Ljava/lang/String;
    .registers 3

    .line 666
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public l()J
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Range"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    const-string v1, "/"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1f

    add-int/lit8 v1, v1, 0x1

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 313
    :cond_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 856
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_e
    return-object p1
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Language"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 3

    .line 460
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Cache-Control"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .line 627
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "Content-Disposition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 3

    .line 646
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-version-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/util/Date;
    .registers 2

    .line 828
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->c(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 3

    .line 845
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-storage-class"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 849
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 867
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 876
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/Integer;
    .registers 3

    .line 906
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Map;

    const-string v1, "x-amz-mp-parts-count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
