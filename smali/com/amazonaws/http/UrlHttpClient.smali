###### Class com.amazonaws.http.UrlHttpClient (com.amazonaws.http.UrlHttpClient)
.class public Lcom/amazonaws/http/UrlHttpClient;
.super Ljava/lang/Object;
.source "UrlHttpClient.java"

# interfaces
.implements Lcom/amazonaws/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "amazonaws"

.field private static final b:Lcom/amazonaws/logging/Log;

.field private static final c:I = 0x400

.field private static final d:I = 0x8


# instance fields
.field private final e:Lcom/amazonaws/ClientConfiguration;

.field private f:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/UrlHttpClient;->b:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/amazonaws/http/UrlHttpClient;->f:Ljavax/net/ssl/SSLContext;

    .line 63
    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient;->e:Lcom/amazonaws/ClientConfiguration;

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;Ljava/nio/ByteBuffer;)V
    .registers 9

    const/16 v0, 0x2000

    .line 242
    new-array v0, v0, [B

    .line 244
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x0

    if-eqz p4, :cond_16

    .line 247
    :try_start_e
    invoke-virtual {p4, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_11
    .catch Ljava/nio/BufferOverflowException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    const/4 v3, 0x1

    .line 250
    invoke-virtual {p3, v3}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a(Z)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 252
    :cond_16
    :goto_16
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_1a
    return-void
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/amazonaws/http/UrlHttpClient;->f:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 290
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazonaws/http/UrlHttpClient;->e:Lcom/amazonaws/ClientConfiguration;

    .line 291
    invoke-virtual {v2}, Lcom/amazonaws/ClientConfiguration;->s()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    aput-object v2, v0, v1

    :try_start_10
    const-string v1, "TLS"

    .line 294
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->f:Ljavax/net/ssl/SSLContext;

    .line 295
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->f:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1e
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    move-exception p1

    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 301
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/amazonaws/http/UrlHttpClient;->f:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    .registers 5

    .line 68
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->b()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 70
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->e:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->t()Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 71
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->b()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;-><init>(Lcom/amazonaws/http/UrlHttpClient;Ljava/net/URL;)V

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 73
    :goto_25
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/http/UrlHttpClient;->d(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 74
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/http/UrlHttpClient;->b(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;)Ljava/net/HttpURLConnection;

    .line 75
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/http/UrlHttpClient;->a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;)V

    if-eqz v1, :cond_43

    .line 78
    invoke-virtual {v1}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 79
    invoke-virtual {v1}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/http/UrlHttpClient;->a(Ljava/lang/String;)V

    goto :goto_43

    :cond_3e
    const-string v1, "Failed to create curl, content too long"

    .line 81
    invoke-virtual {p0, v1}, Lcom/amazonaws/http/UrlHttpClient;->a(Ljava/lang/String;)V

    .line 85
    :cond_43
    :goto_43
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/http/UrlHttpClient;->a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazonaws/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazonaws/http/HttpResponse;
    .registers 7

    .line 92
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 94
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1f

    const-string v3, "HEAD"

    .line 97
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 99
    :try_start_1a
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    :cond_1f
    move-object p1, v2

    .line 107
    :goto_20
    invoke-static {}, Lcom/amazonaws/http/HttpResponse;->f()Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v1}, Lcom/amazonaws/http/HttpResponse$Builder;->a(I)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Lcom/amazonaws/http/HttpResponse$Builder;->a(Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/amazonaws/http/HttpResponse$Builder;->a(Ljava/io/InputStream;)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4f

    goto :goto_3c

    .line 118
    :cond_4f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/http/HttpResponse$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;

    goto :goto_3c

    .line 121
    :cond_66
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse$Builder;->a()Lcom/amazonaws/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2

    .line 237
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;)V
    .registers 11

    .line 155
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->d()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_66

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 159
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->f()Z

    move-result v1

    if-nez v1, :cond_22

    .line 160
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->e()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 162
    :cond_22
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p3, :cond_41

    .line 165
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->e()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-gez v6, :cond_3e

    .line 166
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->e()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_41

    .line 168
    :cond_3e
    invoke-virtual {p3, v0}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a(Z)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 171
    :cond_41
    :goto_41
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/amazonaws/http/UrlHttpClient;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;Ljava/nio/ByteBuffer;)V

    if-eqz p3, :cond_60

    if-eqz v1, :cond_60

    .line 172
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    if-eqz p1, :cond_60

    .line 174
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b(Ljava/lang/String;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 176
    :cond_60
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 177
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_66
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    .line 233
    sget-object v0, Lcom/amazonaws/http/UrlHttpClient;->b:Lcom/amazonaws/logging/Log;

    invoke-interface {v0, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-void
.end method

.method b(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;)Ljava/net/HttpURLConnection;
    .registers 8

    .line 196
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    if-eqz p3, :cond_19

    .line 198
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a(Ljava/util/Map;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 200
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Length"

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "Host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_25

    :cond_48
    const-string v3, "Expect"

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 224
    :cond_57
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->a()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_63

    .line 227
    invoke-virtual {p3, p1}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a(Ljava/lang/String;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;

    :cond_63
    return-object p2
.end method

.method b(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .registers 4

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/http/UrlHttpClient;->a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;)V

    return-void
.end method

.method c(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .registers 4

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/http/UrlHttpClient;->b(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method d(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/amazonaws/http/UrlHttpClient;->e:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->n()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 259
    iget-object v0, p0, Lcom/amazonaws/http/UrlHttpClient;->e:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->m()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 262
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 264
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->f()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 265
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 269
    :cond_22
    instance-of p1, p2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_33

    .line 270
    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    .line 280
    iget-object p1, p0, Lcom/amazonaws/http/UrlHttpClient;->e:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->s()Ljavax/net/ssl/TrustManager;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 281
    invoke-direct {p0, p2}, Lcom/amazonaws/http/UrlHttpClient;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_33
    return-void
.end method

###### Class com.amazonaws.http.UrlHttpClient.CurlBuilder (com.amazonaws.http.UrlHttpClient$CurlBuilder)
.class public final Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
.super Ljava/lang/Object;
.source "UrlHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/UrlHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CurlBuilder"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/http/UrlHttpClient;

.field private final b:Ljava/net/URL;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/amazonaws/http/UrlHttpClient;Ljava/net/URL;)V
    .registers 4

    .line 381
    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a:Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Ljava/util/HashMap;

    .line 371
    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 373
    iput-boolean p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->f:Z

    if-eqz p2, :cond_19

    .line 385
    iput-object p2, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b:Ljava/net/URL;

    return-void

    .line 383
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must have a valid url"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 411
    iget-object v0, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public a(Z)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    .registers 2

    .line 440
    iput-boolean p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->f:Z

    return-object p0
.end method

.method public a()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 5

    .line 458
    invoke-virtual {p0}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "curl"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/lang/String;

    if-eqz v1, :cond_1b

    const-string v1, " -X "

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/lang/String;

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_1b
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, " -H \""

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 469
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 473
    :cond_53
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->e:Ljava/lang/String;

    if-eqz v1, :cond_66

    const-string v1, " -d \'"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->e:Ljava/lang/String;

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    const-string v1, " "

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b:Ljava/net/URL;

    .line 479
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 459
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid state, cannot create curl command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
