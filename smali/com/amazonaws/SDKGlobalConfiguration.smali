###### Class com.amazonaws.SDKGlobalConfiguration (com.amazonaws.SDKGlobalConfiguration)
.class public Lcom/amazonaws/SDKGlobalConfiguration;
.super Ljava/lang/Object;
.source "SDKGlobalConfiguration.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.amazonaws.sdk.disableCertChecking"

.field public static final b:Ljava/lang/String; = "com.amazonaws.sdk.enableDefaultMetrics"

.field public static final c:Ljava/lang/String; = "aws.accessKeyId"

.field public static final d:Ljava/lang/String; = "aws.secretKey"

.field public static final e:Ljava/lang/String; = "com.amazonaws.sdk.ec2MetadataServiceEndpointOverride"

.field public static final f:Ljava/lang/String; = "com.amazonaws.regions.RegionUtils.fileOverride"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final g:Ljava/lang/String; = "com.amazonaws.regions.RegionUtils.disableRemote"

.field public static final h:Ljava/lang/String; = "com.amazonaws.services.s3.enableV4"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Ljava/lang/String; = "com.amazonaws.services.s3.enforceV4"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final j:Ljava/lang/String; = "com.amazonaws.sdk.s3.defaultStreamBufferSize"

.field public static final k:Ljava/lang/String; = "com.amazonaws.sdk.enableRuntimeProfiling"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final l:Ljava/lang/String; = "AWS_ACCESS_KEY_ID"

.field public static final m:Ljava/lang/String; = "AWS_ACCESS_KEY"

.field public static final n:Ljava/lang/String; = "AWS_SECRET_KEY"

.field public static final o:Ljava/lang/String; = "AWS_SECRET_ACCESS_KEY"

.field public static final p:Ljava/lang/String; = "AWS_SESSION_TOKEN"

.field private static final q:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazonaws/SDKGlobalConfiguration;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    .line 185
    sget-object v0, Lcom/amazonaws/SDKGlobalConfiguration;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .registers 2

    .line 174
    sget-object v0, Lcom/amazonaws/SDKGlobalConfiguration;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
