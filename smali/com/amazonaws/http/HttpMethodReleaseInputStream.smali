###### Class com.amazonaws.http.HttpMethodReleaseInputStream (com.amazonaws.http.HttpMethodReleaseInputStream)
.class public Lcom/amazonaws/http/HttpMethodReleaseInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "HttpMethodReleaseInputStream.java"


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# instance fields
.field private b:Ljava/io/InputStream;

.field private c:Lorg/apache/http/HttpEntityEnclosingRequest;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 5

    .line 67
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c:Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 71
    :try_start_5
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->b:Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_35

    :catch_10
    move-exception v0

    .line 73
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->e()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 74
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Unable to obtain HttpMethod\'s response data stream"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 77
    :cond_20
    :try_start_20
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2b

    .line 80
    :catch_2b
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->b:Ljava/io/InputStream;

    :goto_35
    return-void
.end method


# virtual methods
.method protected a()Ljava/io/InputStream;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public available()I
    .registers 4

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 187
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c()V

    .line 188
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 189
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 191
    :cond_1a
    throw v0
.end method

.method public b()Lorg/apache/http/HttpEntityEnclosingRequest;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c:Lorg/apache/http/HttpEntityEnclosingRequest;

    return-object v0
.end method

.method protected c()V
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->d:Z

    if-nez v0, :cond_1d

    .line 104
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->e:Z

    if-nez v0, :cond_15

    .line 107
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c:Lorg/apache/http/HttpEntityEnclosingRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v0, :cond_15

    .line 108
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c:Lorg/apache/http/HttpEntityEnclosingRequest;

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 109
    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    .line 112
    :cond_15
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->d:Z

    :cond_1d
    return-void
.end method

.method public close()V
    .registers 3

    .line 203
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->d:Z

    if-nez v0, :cond_16

    .line 204
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c()V

    .line 205
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 206
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string v1, "Released HttpMethod as its response data stream is closed"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 209
    :cond_16
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected finalize()V
    .registers 3

    .line 225
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->d:Z

    if-nez v0, :cond_25

    .line 226
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 227
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string v1, "Attempting to release HttpMethod in finalize() as its response data stream has gone out of scope. This attempt will not always succeed and cannot be relied upon! Please ensure S3 response data streams are always fully consumed or closed to avoid HTTP connection starvation."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 231
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c()V

    .line 232
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->e()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 233
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string v1, "Successfully released HttpMethod in finalize(). You were lucky this time... Please ensure S3 response data streams are always fully consumed or closed."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 237
    :cond_25
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public read()I
    .registers 4

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->e:Z

    .line 129
    iget-boolean v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->d:Z

    if-nez v1, :cond_22

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c()V

    .line 131
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 132
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Released HttpMethod as its response data stream is fully consumed"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_23

    :cond_22
    return v0

    :catch_23
    move-exception v0

    .line 138
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c()V

    .line 139
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 140
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 142
    :cond_36
    throw v0
.end method

.method public read([BII)I
    .registers 5

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_22

    const/4 p2, 0x1

    .line 157
    iput-boolean p2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->e:Z

    .line 158
    iget-boolean p2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->d:Z

    if-nez p2, :cond_22

    .line 159
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c()V

    .line 160
    sget-object p2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p2}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 161
    sget-object p2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string p3, "Released HttpMethod as its response data stream is fully consumed"

    invoke-interface {p2, p3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_23

    :cond_22
    return p1

    :catch_23
    move-exception p1

    .line 167
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->c()V

    .line 168
    sget-object p2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p2}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 169
    sget-object p2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->a:Lcom/amazonaws/logging/Log;

    const-string p3, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {p2, p3, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    :cond_36
    throw p1
.end method
