###### Class com.amazonaws.mobileconnectors.s3.transfermanager.PersistableTransfer (com.amazonaws.mobileconnectors.s3.transfermanager.PersistableTransfer)
.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.super Ljava/lang/Object;
.source "PersistableTransfer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 87
    :try_start_12
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-wide v12, v2

    move-wide v14, v12

    move-object v2, v4

    move-object v3, v2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    const/4 v11, 0x0

    .line 88
    :goto_22
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v5

    if-eqz v5, :cond_16d

    .line 89
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v5

    const-string v1, "pauseType"

    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 91
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_39
    const/16 v16, 0x0

    goto :goto_22

    :cond_3c
    const-string v1, "bucketName"

    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 93
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_39

    :cond_4a
    const-string v1, "key"

    .line 94
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 95
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_39

    :cond_58
    const-string v1, "file"

    .line 96
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 97
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_39

    :cond_66
    const-string v1, "multipartUploadId"

    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 101
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_39

    :cond_74
    const-string v1, "partSize"

    .line 102
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 103
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_39

    :cond_85
    const-string v1, "mutlipartUploadThreshold"

    .line 104
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 105
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_39

    :cond_96
    const-string v1, "versionId"

    .line 108
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 109
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_39

    :cond_a4
    const-string v1, "range"

    .line 110
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 111
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->a()V

    const/4 v1, 0x2

    .line 112
    new-array v1, v1, [J

    .line 113
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v16, 0x0

    aput-wide v17, v1, v16

    const/4 v5, 0x1

    .line 114
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    aput-wide v17, v1, v5

    .line 115
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->b()V

    move-object v9, v1

    goto/16 :goto_22

    :cond_cf
    const/16 v16, 0x0

    const-string v1, "responseHeaders"

    .line 116
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 117
    new-instance v1, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;-><init>()V

    .line 118
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 119
    :goto_e1
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v5

    if-eqz v5, :cond_14f

    .line 120
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v5

    const-string v10, "contentType"

    .line 121
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fb

    .line 122
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->a(Ljava/lang/String;)V

    goto :goto_e1

    :cond_fb
    const-string v10, "contentLanguage"

    .line 123
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10b

    .line 124
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->c(Ljava/lang/String;)V

    goto :goto_e1

    :cond_10b
    const-string v10, "expires"

    .line 125
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11b

    .line 126
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->e(Ljava/lang/String;)V

    goto :goto_e1

    :cond_11b
    const-string v10, "cacheControl"

    .line 127
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12b

    .line 128
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->g(Ljava/lang/String;)V

    goto :goto_e1

    :cond_12b
    const-string v10, "contentDisposition"

    .line 129
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13b

    .line 130
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->i(Ljava/lang/String;)V

    goto :goto_e1

    :cond_13b
    const-string v10, "contentEncoding"

    .line 131
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14b

    .line 132
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->k(Ljava/lang/String;)V

    goto :goto_e1

    .line 134
    :cond_14b
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_e1

    .line 137
    :cond_14f
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    move-object v10, v1

    goto/16 :goto_22

    :cond_155
    const-string v1, "isRequesterPays"

    .line 138
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 139
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move v11, v1

    goto/16 :goto_22

    .line 141
    :cond_168
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto/16 :goto_22

    .line 144
    :cond_16d
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_170} :catch_1aa

    const-string v0, "download"

    .line 149
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 150
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    move-object v5, v0

    move-object v12, v2

    invoke-direct/range {v5 .. v12}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V

    return-object v0

    :cond_180
    const-string v0, "upload"

    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 153
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    move-object v5, v0

    move-object v8, v2

    move-object v9, v3

    move-wide v10, v12

    move-wide v12, v14

    invoke-direct/range {v5 .. v13}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0

    .line 156
    :cond_193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported paused transfer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1aa
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    :try_start_f
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;->a(Ljava/io/InputStream;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 179
    :try_start_13
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_16

    :catch_16
    return-object p0

    :catchall_17
    move-exception p0

    :try_start_18
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1b

    .line 183
    :catch_1b
    throw p0
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .registers 4

    .line 54
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;->i()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public abstract i()Ljava/lang/String;
.end method
