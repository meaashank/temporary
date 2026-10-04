###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility (com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility)
.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.super Ljava/lang/Object;
.source "TransferUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    }
.end annotation


# static fields
.field static final b:I = 0x500000

.field private static final c:Lcom/amazonaws/logging/Log;

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/lang/String; = "add_transfer"

.field private static final h:Ljava/lang/String; = "pause_transfer"

.field private static final i:Ljava/lang/String; = "resume_transfer"

.field private static final j:Ljava/lang/String; = "cancel_transfer"

.field private static k:Ljava/lang/String;


# instance fields
.field final a:Landroid/net/ConnectivityManager;

.field private d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field private e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final l:Lcom/amazonaws/services/s3/AmazonS3;

.field private final m:Ljava/lang/String;

.field private final n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 103
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Lcom/amazonaws/logging/Log;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Ljava/lang/Object;

    const-string v0, ""

    .line 140
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->l:Lcom/amazonaws/services/s3/AmazonS3;

    const/4 p1, 0x0

    .line 323
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->m:Ljava/lang/String;

    .line 324
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    invoke-direct {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 325
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 326
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 327
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b()I

    move-result p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a(I)V

    const-string p1, "connectivity"

    .line 328
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)V
    .registers 5

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->l:Lcom/amazonaws/services/s3/AmazonS3;

    .line 302
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->m:Ljava/lang/String;

    .line 303
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 304
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 305
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 306
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b()I

    move-result p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a(I)V

    const-string p1, "connectivity"

    .line 307
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Landroid/net/ConnectivityManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;)V
    .registers 6

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)V

    return-void
.end method

.method static a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .line 907
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->b()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .registers 1

    .line 289
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;-><init>()V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    .line 101
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .registers 6

    monitor-enter p0

    .line 869
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->l:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a(Ljava/lang/Integer;Lcom/amazonaws/services/s3/AmazonS3;)V

    .line 874
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-nez v0, :cond_38

    .line 876
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->h(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-nez v0, :cond_32

    .line 878
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find transfer with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_ad

    .line 879
    monitor-exit p0

    return-void

    .line 881
    :cond_32
    :try_start_32
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    goto :goto_58

    :cond_38
    const-string v1, "add_transfer"

    .line 885
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 886
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transfer has already been added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_ad

    .line 887
    monitor-exit p0

    return-void

    :cond_58
    :goto_58
    :try_start_58
    const-string p2, "add_transfer"

    .line 891
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a0

    const-string p2, "resume_transfer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_69

    goto :goto_a0

    :cond_69
    const-string p2, "pause_transfer"

    .line 893
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_79

    .line 894
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->l:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    goto :goto_ab

    :cond_79
    const-string p2, "cancel_transfer"

    .line 895
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_89

    .line 896
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->l:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->b(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    goto :goto_ab

    .line 898
    :cond_89
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    goto :goto_ab

    .line 892
    :cond_a0
    :goto_a0
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->l:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    :try_end_ab
    .catchall {:try_start_58 .. :try_end_ab} :catchall_ad

    .line 900
    :goto_ab
    monitor-exit p0

    return-void

    :catchall_ad
    move-exception p1

    .line 868
    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/io/File;)Z
    .registers 6

    if-eqz p1, :cond_f

    .line 903
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long p1, v0, v2

    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)I
    .registers 34

    move-object/from16 v0, p0

    .line 712
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-double v3, v1

    const-wide v5, 0x40c3880000000000L    # 10000.0

    .line 713
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v3, v5

    .line 714
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4154000000000000L    # 5242880.0

    .line 715
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-long v5, v5

    long-to-double v7, v5

    .line 720
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 726
    new-array v7, v3, [Landroid/content/ContentValues;

    .line 727
    iget-object v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    const-string v15, ""

    .line 728
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v16

    iget-object v14, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    const-wide/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, v22

    move-object/from16 v21, v14

    move/from16 v14, v18

    move/from16 v18, v19

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 727
    invoke-virtual/range {v8 .. v21}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    move-wide v10, v1

    move-wide/from16 v26, v22

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_5b
    if-ge v1, v3, :cond_8f

    .line 730
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 731
    iget-object v12, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    const-string v19, ""

    sub-long/2addr v10, v5

    const-wide/16 v13, 0x0

    cmp-long v8, v10, v13

    if-gtz v8, :cond_6f

    const/16 v22, 0x1

    goto :goto_71

    :cond_6f
    const/16 v22, 0x0

    :goto_71
    iget-object v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-wide/from16 v16, v26

    move/from16 v18, v2

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    move-object/from16 v25, v8

    invoke-virtual/range {v12 .. v25}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;

    move-result-object v8

    aput-object v8, v7, v1

    add-long v26, v26, v5

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 737
    :cond_8f
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a([Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method static b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->b()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService_multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method private b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
            "[",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 683
    :try_start_6
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v2, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_39

    .line 684
    :goto_c
    :try_start_c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_31

    const-string p2, "part_num"

    .line 685
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_c

    :cond_1f
    const-string p2, "_id"

    .line 690
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 691
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_37

    goto :goto_c

    :cond_31
    if-eqz p1, :cond_36

    .line 695
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_36
    return-object v0

    :catchall_37
    move-exception p2

    goto :goto_3b

    :catchall_39
    move-exception p2

    move-object p1, v1

    :goto_3b
    if-eqz p1, :cond_40

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_40
    throw p2
.end method

.method private static b(Ljava/lang/String;)V
    .registers 2

    .line 143
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    sput-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->k:Ljava/lang/String;

    .line 145
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private static c()Ljava/lang/String;
    .registers 3

    .line 149
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->k:Ljava/lang/String;

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_2d

    .line 153
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2d
    :goto_2d
    const-string v1, ""

    .line 151
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception v1

    .line 154
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private d()Ljava/lang/String;
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->m:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 340
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->m:Ljava/lang/String;

    return-object v0

    .line 333
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TransferUtility has not been configured with a default bucket. Please use the corresponding method that specifies bucket name or configure the default bucket name in construction of the object. See TransferUtility.builder().defaultBucket() or TransferUtility.builder().awsConfiguration()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 5

    const/4 v0, 0x0

    .line 584
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(I)Landroid/database/Cursor;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_25

    .line 585
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 586
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v0, p1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    .line 587
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a(Landroid/database/Cursor;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_23

    if-eqz v1, :cond_1c

    .line 592
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1c
    return-object v0

    :cond_1d
    if-eqz v1, :cond_22

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_22
    return-object v0

    :catchall_23
    move-exception p1

    goto :goto_27

    :catchall_25
    move-exception p1

    move-object v1, v0

    :goto_27
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 594
    :cond_2c
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 5

    .line 367
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 5

    .line 407
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 10

    .line 462
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 10

    .line 491
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 12

    .line 523
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 13

    .line 572
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 5

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 13

    if-eqz p3, :cond_4e

    .line 382
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 385
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 387
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 388
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overwrite existing file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_3c
    const-string v0, "add_transfer"

    .line 392
    invoke-direct {p0, v0, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;I)V

    .line 393
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    return-object v0

    .line 383
    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 11

    .line 448
    new-instance v4, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 477
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 508
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 15

    if-eqz p3, :cond_44

    .line 541
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 545
    invoke-direct {p0, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 546
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)I

    move-result p4

    :goto_18
    move v1, p4

    goto :goto_32

    .line 549
    :cond_1a
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;

    move-result-object p4

    .line 551
    invoke-virtual {p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    goto :goto_18

    :goto_32
    const-string p4, "add_transfer"

    .line 554
    invoke-direct {p0, p4, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;I)V

    .line 555
    new-instance p4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move-object v0, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    return-object p4

    .line 542
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;",
            ">;"
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 610
    :try_start_6
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v2, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_32

    .line 611
    :goto_c
    :try_start_c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "_id"

    .line 612
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 613
    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v2, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    .line 614
    invoke-virtual {v2, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a(Landroid/database/Cursor;)V

    .line 615
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    goto :goto_c

    :cond_2a
    if-eqz p1, :cond_2f

    .line 619
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2f
    return-object v0

    :catchall_30
    move-exception v0

    goto :goto_34

    :catchall_32
    move-exception v0

    move-object p1, v1

    :goto_34
    if-eqz p1, :cond_39

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_39
    throw v0
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 635
    new-array v0, v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
            "[",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;",
            ">;"
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 651
    :try_start_6
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v2, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_3f

    .line 652
    :goto_c
    :try_start_c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_37

    const-string p2, "part_num"

    .line 653
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_c

    :cond_1f
    const-string p2, "_id"

    .line 658
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 659
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v1, p2, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    .line 660
    invoke-virtual {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a(Landroid/database/Cursor;)V

    .line 661
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_3d

    goto :goto_c

    :cond_37
    if-eqz p1, :cond_3c

    .line 665
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3c
    return-object v0

    :catchall_3d
    move-exception p2

    goto :goto_41

    :catchall_3f
    move-exception p2

    move-object p1, v1

    :goto_41
    if-eqz p1, :cond_46

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 667
    :cond_46
    throw p2
.end method

.method b()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 5

    .line 433
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 5

    .line 421
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)V
    .registers 5

    const/4 v0, 0x0

    .line 759
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    .line 760
    :goto_7
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "_id"

    .line 761
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 762
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(I)Z
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_21

    goto :goto_7

    :cond_1b
    if-eqz p1, :cond_20

    .line 766
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    goto :goto_27

    :catchall_23
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_27
    if-eqz p1, :cond_2c

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 768
    :cond_2c
    throw v0
.end method

.method public b(I)Z
    .registers 3

    const-string v0, "pause_transfer"

    .line 747
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .registers 3

    const-string v0, "resume_transfer"

    .line 781
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;I)V

    .line 782
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;",
            ">;"
        }
    .end annotation

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    .line 796
    new-array v1, v1, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Ljava/util/List;

    move-result-object p1

    .line 801
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 802
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_37
    return-object v0
.end method

.method public d(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)V
    .registers 5

    const/4 v0, 0x0

    .line 831
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    .line 832
    :goto_7
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "_id"

    .line 833
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 834
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d(I)Z
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_21

    goto :goto_7

    :cond_1b
    if-eqz p1, :cond_20

    .line 838
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    goto :goto_27

    :catchall_23
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_27
    if-eqz p1, :cond_2c

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 840
    :cond_2c
    throw v0
.end method

.method public d(I)Z
    .registers 3

    const-string v0, "cancel_transfer"

    .line 817
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public e(I)Z
    .registers 3

    .line 852
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d(I)Z

    .line 853
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->c(I)I

    move-result p1

    if-lez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility.AnonymousClass1 (com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility$1)
.class synthetic Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;
.super Ljava/lang/Object;
.source "TransferUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility.Builder (com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility$Builder)
.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
.super Ljava/lang/Object;
.source "TransferUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amazonaws/services/s3/AmazonS3;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field private e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .registers 2

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    return-object p0
.end method

.method public a(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobile/config/AWSConfiguration;

    return-object p0
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    return-object p0
.end method

.method public a(Lcom/amazonaws/services/s3/AmazonS3;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
    .registers 8

    .line 254
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    if-eqz v0, :cond_61

    .line 257
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    if-eqz v0, :cond_59

    .line 261
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobile/config/AWSConfiguration;

    if-eqz v0, :cond_3e

    .line 263
    :try_start_c
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v1, "S3TransferUtility"

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    const-string v2, "Region"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/regions/Region;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/regions/Region;)V

    const-string v1, "Bucket"

    .line 265
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_35

    goto :goto_3e

    :catch_35
    move-exception v0

    .line 269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to read S3TransferUtility please check your setup or awsconfiguration.json file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 274
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    if-nez v0, :cond_49

    .line 275
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 278
    :cond_49
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;)V

    return-object v0

    .line 258
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is required please set using .context(applicationContext)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AmazonS3 client is required please set using .s3Client(yourClient)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
