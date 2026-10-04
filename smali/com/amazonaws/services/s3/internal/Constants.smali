###### Class com.amazonaws.services.s3.internal.Constants (com.amazonaws.services.s3.internal.Constants)
.class public Lcom/amazonaws/services/s3/internal/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final a:Ljava/lang/String; = "s3"

.field public static final b:Ljava/lang/String; = "s3.amazonaws.com"

.field public static final c:Ljava/lang/String; = "s3-external-1.amazonaws.com"

.field public static final d:Ljava/lang/String; = "s3-accelerate.amazonaws.com"

.field public static final e:Ljava/lang/String; = "s3-accelerate.dualstack.amazonaws.com"

.field public static final f:Ljava/lang/String; = "dualstack"

.field public static final g:Ljava/lang/String; = "Amazon S3"

.field public static final h:Ljava/lang/String; = "UTF-8"

.field public static final i:Ljava/lang/String; = "url"

.field public static final j:Ljava/lang/String; = "HmacSHA1"

.field public static final k:Ljava/lang/String; = "http://s3.amazonaws.com/doc/2006-03-01/"

.field public static final l:Ljava/lang/String; = "null"

.field public static final m:I = 0x19c

.field public static final n:I = 0x400

.field public static final o:I = 0x100000

.field public static final p:J = 0x40000000L

.field public static final q:I = 0x2710

.field public static final r:I = 0x20001

.field public static final s:I = 0x194

.field public static final t:I = 0x193

.field public static final u:I = 0x12d

.field public static final v:Ljava/lang/String; = "requester"

.field public static final w:Ljava/lang/String;

.field private static x:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->x:Lcom/amazonaws/logging/Log;

    .line 154
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    .line 155
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "com.amazonaws.sdk.s3.defaultStreamBufferSize"

    .line 100
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 105
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_26

    .line 107
    :catch_d
    sget-object v1, Lcom/amazonaws/services/s3/internal/Constants;->x:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse buffer size override from value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    :cond_23
    const v1, 0x20001

    :goto_26
    return v1
.end method

.method public static b()Ljava/lang/Integer;
    .registers 5

    const-string v0, "com.amazonaws.sdk.s3.defaultStreamBufferSize"

    .line 122
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 127
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    return-object v2

    .line 129
    :catch_f
    sget-object v2, Lcom/amazonaws/services/s3/internal/Constants;->x:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse buffer size override from value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    return-object v1
.end method
