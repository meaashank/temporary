###### Class com.amazonaws.http.ApacheHttpClient (com.amazonaws.http.ApacheHttpClient)
.class public Lcom/amazonaws/http/ApacheHttpClient;
.super Ljava/lang/Object;
.source "ApacheHttpClient.java"

# interfaces
.implements Lcom/amazonaws/http/HttpClient;


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;

.field private b:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/amazonaws/http/ApacheHttpClient;->b:Lorg/apache/http/params/HttpParams;

    .line 53
    new-instance v0, Lcom/amazonaws/http/HttpClientFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpClientFactory;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Lcom/amazonaws/http/HttpClientFactory;->a(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/http/ApacheHttpClient;->a:Lorg/apache/http/client/HttpClient;

    .line 56
    iget-object p1, p0, Lcom/amazonaws/http/ApacheHttpClient;->a:Lorg/apache/http/client/HttpClient;

    check-cast p1, Lorg/apache/http/impl/client/AbstractHttpClient;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 57
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 59
    iget-object p1, p0, Lcom/amazonaws/http/ApacheHttpClient;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object p1

    const-string v0, "https"

    .line 60
    invoke-virtual {p1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 62
    invoke-virtual {p1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method private b(Lcom/amazonaws/http/HttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 7

    .line 97
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 99
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->b()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 100
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->d()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 101
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->d()Ljava/io/InputStream;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->e()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 101
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_89

    :cond_2c
    const-string v1, "GET"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 106
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->b()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_89

    :cond_3e
    const-string v1, "PUT"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 108
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->b()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 109
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->d()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 110
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->d()Ljava/io/InputStream;

    move-result-object v2

    .line 111
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->e()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 110
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_89

    :cond_66
    const-string v1, "DELETE"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 115
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->b()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    goto :goto_89

    :cond_78
    const-string v1, "HEAD"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 117
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->b()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    .line 122
    :cond_89
    :goto_89
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_d8

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d8

    .line 123
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a5
    :goto_a5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Length"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, "Host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    goto :goto_a5

    .line 134
    :cond_c8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    .line 139
    :cond_d8
    iget-object p1, p0, Lcom/amazonaws/http/ApacheHttpClient;->b:Lorg/apache/http/params/HttpParams;

    if-nez p1, :cond_ef

    .line 140
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/http/ApacheHttpClient;->b:Lorg/apache/http/params/HttpParams;

    .line 141
    iget-object p1, p0, Lcom/amazonaws/http/ApacheHttpClient;->b:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 143
    :cond_ef
    iget-object p1, p0, Lcom/amazonaws/http/ApacheHttpClient;->b:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    return-object v0

    .line 119
    :cond_f5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    .registers 7

    .line 67
    invoke-direct {p0, p1}, Lcom/amazonaws/http/ApacheHttpClient;->b(Lcom/amazonaws/http/HttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/amazonaws/http/ApacheHttpClient;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 73
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 74
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    .line 77
    :goto_2a
    invoke-static {}, Lcom/amazonaws/http/HttpResponse;->f()Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v1}, Lcom/amazonaws/http/HttpResponse$Builder;->a(I)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lcom/amazonaws/http/HttpResponse$Builder;->a(Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v2}, Lcom/amazonaws/http/HttpResponse$Builder;->a(Ljava/io/InputStream;)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v0

    .line 81
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_40
    if-ge v2, v1, :cond_52

    aget-object v3, p1, v2

    .line 82
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/amazonaws/http/HttpResponse$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 85
    :cond_52
    invoke-virtual {v0}, Lcom/amazonaws/http/HttpResponse$Builder;->a()Lcom/amazonaws/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/amazonaws/http/ApacheHttpClient;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void
.end method
