###### Class com.amazonaws.mobileconnectors.s3.transfermanager.PersistableUpload (com.amazonaws.mobileconnectors.s3.transfermanager.PersistableUpload)
.class public final Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.source "PersistableUpload.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "upload"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:J


# direct methods
.method public constructor <init>()V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 10

    .line 66
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;-><init>()V

    const-string v0, "upload"

    .line 35
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->b:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->c:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->d:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->e:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->f:Ljava/lang/String;

    .line 71
    iput-wide p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->g:J

    .line 72
    iput-wide p7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->h:J

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->c:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->d:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->f:Ljava/lang/String;

    return-object v0
.end method

.method d()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->g:J

    return-wide v0
.end method

.method e()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->h:J

    return-wide v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->e:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .registers 2

    const-string v0, "upload"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 5

    .line 125
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 126
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    .line 128
    :try_start_9
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "pauseType"

    .line 129
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "upload"

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "bucketName"

    .line 130
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "key"

    .line 131
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "file"

    .line 132
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "multipartUploadId"

    .line 133
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "partSize"

    .line 134
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->g:J

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    const-string v2, "mutlipartUploadThreshold"

    .line 135
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->h:J

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->g()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_68} :catch_6d

    .line 140
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_6d
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
