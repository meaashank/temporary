###### Class com.amazonaws.mobileconnectors.s3.transfermanager.PersistableDownload (com.amazonaws.mobileconnectors.s3.transfermanager.PersistableDownload)
.class public final Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.source "PersistableDownload.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "download"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:[J

.field private final g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private final h:Z

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V
    .registers 9

    .line 79
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;-><init>()V

    const-string v0, "download"

    .line 37
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->b:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->c:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->d:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->e:Ljava/lang/String;

    if-nez p4, :cond_11

    const/4 p1, 0x0

    goto :goto_17

    .line 83
    :cond_11
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    :goto_17
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->f:[J

    .line 84
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .line 85
    iput-boolean p6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->h:Z

    .line 86
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->c:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->d:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->e:Ljava/lang/String;

    return-object v0
.end method

.method d()[J
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->f:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->f:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_e
    return-object v0
.end method

.method e()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method f()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->h:Z

    return v0
.end method

.method g()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->i:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .registers 2

    const-string v0, "download"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 8

    .line 145
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 146
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    .line 148
    :try_start_9
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "pauseType"

    .line 149
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "download"

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "bucketName"

    .line 150
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "key"

    .line 151
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "file"

    .line 152
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "versionId"

    .line 153
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "isRequesterPays"

    .line 154
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->h:Z

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 155
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->f:[J

    if-eqz v2, :cond_72

    const-string v2, "range"

    .line 156
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 157
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->f:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_65
    if-ge v4, v3, :cond_6f

    aget-wide v5, v2, v4

    .line 158
    invoke-interface {v1, v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 160
    :cond_6f
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 162
    :cond_72
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    if-eqz v2, :cond_e3

    const-string v2, "responseHeaders"

    .line 163
    invoke-interface {v1, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "contentType"

    .line 164
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "contentLanguage"

    .line 165
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "expires"

    .line 166
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "cacheControl"

    .line 167
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "contentDisposition"

    .line 168
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    const-string v3, "contentEncoding"

    .line 169
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->g:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 170
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 172
    :cond_e3
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->g()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_ea} :catch_ef

    .line 176
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_ef
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
