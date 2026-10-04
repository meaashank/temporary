###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferDBUtil (com.amazonaws.mobileconnectors.s3.transferutility.TransferDBUtil)
.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;
.super Ljava/lang/Object;
.source "TransferDBUtil.java"


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field private static final b:Ljava/lang/String; = ",?"

.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;


# instance fields
.field private e:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a:Lcom/amazonaws/logging/Log;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->e:Lcom/google/gson/Gson;

    .line 65
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_d
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    if-nez v1, :cond_18

    .line 67
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-direct {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    .line 69
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Landroid/content/ContentValues;
    .registers 6

    .line 747
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "user_metadata"

    .line 749
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "header_content_type"

    .line 750
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "header_content_encoding"

    .line 751
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "header_cache_control"

    .line 752
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_md5"

    .line 753
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "header_content_disposition"

    .line 755
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->r()Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sse_algorithm"

    .line 756
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kms_key"

    .line 757
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expiration_time_rule_id"

    .line 759
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b()Ljava/lang/String;

    move-result-object v2

    .line 758
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->v()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_71

    const-string v1, "http_expires_date"

    .line 762
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->v()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_71
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->w()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    const-string v1, "header_storage_class"

    .line 765
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;
    .registers 3

    .line 881
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    if-nez v1, :cond_e

    .line 883
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    .line 885
    :cond_e
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 886
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;
    .registers 11

    .line 788
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    .line 789
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    .line 790
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bucket_name"

    .line 791
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key"

    .line 792
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "file"

    .line 793
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "bytes_current"

    const-wide/16 v1, 0x0

    .line 794
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 795
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const-string p1, "bytes_total"

    if-nez p4, :cond_44

    goto :goto_48

    .line 796
    :cond_44
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v1

    :goto_48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4f
    const-string p1, "is_multipart"

    const/4 p2, 0x0

    .line 798
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "part_num"

    .line 799
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "is_encrypted"

    .line 800
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    invoke-direct {p0, p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    if-eqz p6, :cond_7d

    const-string p1, "canned_acl"

    .line 803
    invoke-virtual {p6}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    if-eqz p7, :cond_8a

    const-string p1, "transfer_utility_options"

    .line 806
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->e:Lcom/google/gson/Gson;

    invoke-virtual {p2, p7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    return-object v0
.end method

.method private i(I)Ljava/lang/String;
    .registers 5

    if-gtz p1, :cond_b

    .line 678
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a:Lcom/amazonaws/logging/Log;

    const-string v0, "Cannot create a string of 0 or less placeholders."

    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 682
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",?"

    .line 683
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v1, v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "?"

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1f
    if-ge v2, p1, :cond_29

    const-string v1, ",?"

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 689
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(IJ)I
    .registers 6

    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "bytes_current"

    .line 196
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I
    .registers 8

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    .line 227
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 229
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "state not in (?,?,?,?,?) "

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 231
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 232
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 233
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 234
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 235
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 229
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 238
    :cond_53
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(ILjava/lang/String;)I
    .registers 5

    .line 267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "multipart_id"

    .line 268
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)I
    .registers 6

    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    .line 180
    iget v2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "state"

    .line 181
    iget-object v2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bytes_total"

    .line 182
    iget-wide v2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "bytes_current"

    .line 183
    iget-wide v2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    iget p1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)I
    .registers 10

    .line 351
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    .line 352
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne p1, v1, :cond_35

    const-string p1, "state in (?,?,?)"

    .line 357
    new-array v1, v5, [Ljava/lang/String;

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 358
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 359
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 360
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_5a

    :cond_35
    const-string v1, "state in (?,?,?) and type=?"

    const/4 v6, 0x4

    .line 365
    new-array v6, v6, [Ljava/lang/String;

    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 366
    invoke-virtual {v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 367
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 368
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 369
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v5

    move-object p1, v1

    move-object v1, v6

    .line 372
    :goto_5a
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a([Landroid/content/ContentValues;)I
    .registers 4

    .line 168
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public a(II)J
    .registers 10

    const/4 v0, 0x0

    .line 533
    :try_start_1
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->g(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_4c

    .line 534
    :cond_f
    :try_start_f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "part_num"

    .line 535
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "state"

    .line 536
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, p2, :cond_f

    .line 537
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 538
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string p2, "bytes_current"

    .line 540
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 539
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_4a

    goto :goto_44

    :cond_42
    const-wide/16 v0, 0x0

    :goto_44
    if-eqz p1, :cond_49

    .line 546
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_49
    return-wide v0

    :catchall_4a
    move-exception p2

    goto :goto_4e

    :catchall_4c
    move-exception p2

    move-object p1, v0

    :goto_4e
    if-eqz p1, :cond_53

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_53
    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p13

    .line 714
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "type"

    .line 715
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "state"

    .line 716
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bucket_name"

    move-object v4, p1

    .line 717
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key"

    move-object v4, p2

    .line 718
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "file"

    .line 719
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bytes_current"

    const-wide/16 v4, 0x0

    .line 720
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "bytes_total"

    .line 721
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "is_multipart"

    const/4 v4, 0x1

    .line 722
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "part_num"

    .line 723
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "file_offset"

    .line 724
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "multipart_id"

    move-object v4, p7

    .line 725
    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_last_part"

    .line 726
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "is_encrypted"

    const/4 v4, 0x0

    .line 727
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v3, p11

    .line 728
    invoke-direct {p0, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    if-eqz p12, :cond_90

    const-string v4, "canned_acl"

    .line 730
    invoke-virtual/range {p12 .. p12}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    if-eqz v1, :cond_9d

    const-string v3, "transfer_utility_options"

    .line 733
    iget-object v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->e:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    return-object v2
.end method

.method public a(I)Landroid/database/Cursor;
    .registers 8

    .line 494
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;
    .registers 10

    .line 439
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    if-ne p1, v0, :cond_13

    .line 440
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 443
    :cond_13
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type=?"

    const/4 p2, 0x1

    new-array v4, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 445
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, p2

    const/4 v5, 0x0

    .line 443
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;
    .registers 13

    .line 462
    array-length v0, p2

    .line 463
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->i(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_32

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state in ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 468
    new-array v1, v0, [Ljava/lang/String;

    :goto_22
    if-ge v3, v0, :cond_2f

    .line 470
    aget-object v2, p2, v3

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_2f
    move-object v7, p1

    move-object v8, v1

    goto :goto_6b

    .line 473
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") and "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 476
    new-array v2, v2, [Ljava/lang/String;

    :goto_56
    if-ge v3, v0, :cond_63

    .line 478
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 480
    :cond_63
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    move-object v7, v1

    move-object v8, v2

    .line 483
    :goto_6b
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/net/Uri;
    .registers 4

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/state/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;
    .registers 13

    .line 157
    new-instance v5, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 121
    invoke-virtual/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;
    .registers 8

    .line 139
    invoke-direct/range {p0 .. p7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;

    move-result-object p1

    .line 141
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object p3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;
    .registers 26

    .line 101
    new-instance v11, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v11}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .line 76
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    if-eqz v1, :cond_c

    .line 78
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->b()V

    .line 80
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public b()I
    .registers 8

    .line 292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    .line 293
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 294
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "state in (?,?,?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 298
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 299
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 300
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 295
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(IJ)I
    .registers 6

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "bytes_total"

    .line 209
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I
    .registers 7

    .line 253
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    .line 254
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, p1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(ILjava/lang/String;)I
    .registers 5

    .line 280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "etag"

    .line 281
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)I
    .registers 12

    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    .line 385
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ne p1, v1, :cond_47

    const-string p1, "state in (?,?,?,?,?)"

    .line 390
    new-array v1, v7, [Ljava/lang/String;

    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 391
    invoke-virtual {v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 392
    invoke-virtual {v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 393
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 394
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 395
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_7c

    :cond_47
    const-string v1, "state in (?,?,?,?,?) and type=?"

    const/4 v8, 0x6

    .line 400
    new-array v8, v8, [Ljava/lang/String;

    sget-object v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 401
    invoke-virtual {v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 402
    invoke-virtual {v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 403
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 404
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 405
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 406
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v7

    move-object p1, v1

    move-object v1, v8

    .line 409
    :goto_7c
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(I)J
    .registers 10

    const/4 v0, 0x0

    .line 507
    :try_start_1
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->g(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_42

    const-wide/16 v0, 0x0

    .line 508
    :cond_11
    :goto_11
    :try_start_11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "state"

    .line 509
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 510
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "bytes_total"

    .line 512
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 511
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_40

    const/4 v4, 0x0

    add-long/2addr v0, v2

    goto :goto_11

    :cond_3a
    if-eqz p1, :cond_3f

    .line 517
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3f
    return-wide v0

    :catchall_40
    move-exception v0

    goto :goto_46

    :catchall_42
    move-exception p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_46
    if-eqz p1, :cond_4b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_4b
    throw v0
.end method

.method public c()I
    .registers 8

    .line 311
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    .line 312
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "state in (?,?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 316
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 317
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 313
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(I)I
    .registers 4

    .line 559
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->f(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Landroid/database/Cursor;
    .registers 9

    .line 420
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    if-ne p1, v0, :cond_15

    .line 421
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 423
    :cond_15
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 425
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 423
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public c(ILjava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/UploadPartRequest;",
            ">;"
        }
    .end annotation

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 605
    :try_start_6
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->g(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_cf

    .line 606
    :goto_14
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 607
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v2, "state"

    .line 608
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 607
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_14

    .line 611
    :cond_31
    new-instance v1, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    const-string v2, "_id"

    .line 612
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    const-string v2, "main_upload_id"

    .line 615
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 614
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 613
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    const-string v2, "bucket_name"

    .line 618
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 617
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    const-string v2, "key"

    .line 619
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 620
    invoke-virtual {v1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "file"

    .line 622
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    const-string v2, "file_offset"

    .line 624
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 623
    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    const-string v2, "part_num"

    .line 626
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 625
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    const-string v2, "bytes_total"

    .line 628
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 627
    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    const-string v2, "is_last_part"

    .line 630
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 629
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_bd

    goto :goto_be

    :cond_bd
    const/4 v3, 0x0

    :goto_be
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 631
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c5
    .catchall {:try_start_14 .. :try_end_c5} :catchall_cd

    goto/16 :goto_14

    :cond_c7
    if-eqz p1, :cond_cc

    .line 635
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_cc
    return-object v0

    :catchall_cd
    move-exception p2

    goto :goto_d1

    :catchall_cf
    move-exception p2

    move-object p1, v1

    :goto_d1
    if-eqz p1, :cond_d6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_d6
    throw p2
.end method

.method public d()I
    .registers 8

    .line 328
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    .line 329
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    .line 331
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "state in (?,?,?,?)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 336
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 337
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 338
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 339
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 330
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 577
    :try_start_6
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->g(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3f

    .line 578
    :goto_14
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "part_num"

    .line 579
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "etag"

    .line 580
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 581
    new-instance v3, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-direct {v3, v1, v2}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_3d

    goto :goto_14

    :cond_37
    if-eqz p1, :cond_3c

    .line 585
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3c
    return-object v0

    :catchall_3d
    move-exception v0

    goto :goto_41

    :catchall_3f
    move-exception v0

    move-object p1, v1

    :goto_41
    if-eqz p1, :cond_46

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_46
    throw v0
.end method

.method public e()Landroid/net/Uri;
    .registers 2

    .line 817
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Z
    .registers 10

    const/4 v0, 0x0

    .line 653
    :try_start_1
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->g(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "state=?"

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 655
    invoke-virtual {v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    const/4 v6, 0x0

    .line 653
    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2a

    .line 657
    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_25

    if-eqz p1, :cond_24

    .line 663
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_24
    return v0

    :catchall_25
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_2b

    :catchall_2a
    move-exception p1

    :goto_2b
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 665
    :cond_30
    throw p1
.end method

.method public f(I)Landroid/net/Uri;
    .registers 4

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Landroid/net/Uri;
    .registers 4

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/part/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method h(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    .registers 5

    const/4 v0, 0x0

    .line 862
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(I)Landroid/database/Cursor;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    .line 863
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 864
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;-><init>(I)V

    .line 865
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a(Landroid/database/Cursor;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_19

    :cond_13
    if-eqz v1, :cond_18

    .line 869
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_18
    return-object v0

    :catchall_19
    move-exception p1

    goto :goto_1d

    :catchall_1b
    move-exception p1

    move-object v1, v0

    :goto_1d
    if-eqz v1, :cond_22

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_22
    throw p1
.end method
