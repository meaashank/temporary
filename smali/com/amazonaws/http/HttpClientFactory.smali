###### Class com.amazonaws.http.HttpClientFactory (com.amazonaws.http.HttpClientFactory)
.class Lcom/amazonaws/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;
    }
.end annotation


# static fields
.field private static final a:I = 0x50

.field private static final b:I = 0x1bb


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;
    .registers 10

    .line 58
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->n()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->m()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    .line 61
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 62
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->p()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->p()[I

    move-result-object v3

    aget v1, v3, v1

    if-gtz v2, :cond_2b

    if-lez v1, :cond_32

    .line 68
    :cond_2b
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 67
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 72
    :cond_32
    invoke-static {p1, v0}, Lcom/amazonaws/http/ConnectionManagerFactory;->a(Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-result-object v1

    .line 73
    new-instance v2, Lcom/amazonaws/http/impl/client/SdkHttpClient;

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/http/impl/client/SdkHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 74
    sget-object v3, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;->a:Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;

    invoke-virtual {v2, v3}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 75
    new-instance v3, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;-><init>(Lcom/amazonaws/http/HttpClientFactory$1;)V

    invoke-virtual {v2, v3}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 77
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->d()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 78
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->d()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setLocalAddress(Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V

    .line 81
    :cond_56
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 82
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 83
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 84
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 85
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->e()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->f()I

    move-result v1

    if-eqz v0, :cond_dc

    if-lez v1, :cond_dc

    .line 109
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuring Proxy. Proxy Host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Proxy Port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 111
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {v2}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 114
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->g()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->h()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->i()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/ClientConfiguration;->j()Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_dc

    if-eqz v4, :cond_dc

    .line 120
    invoke-virtual {v2}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v6

    new-instance v7, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v7, v0, v1}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/apache/http/auth/NTCredentials;

    invoke-direct {v0, v3, v4, p1, v5}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    :cond_dc
    return-object v2
.end method

###### Class com.amazonaws.http.HttpClientFactory.AnonymousClass1 (com.amazonaws.http.HttpClientFactory$1)
.class synthetic Lcom/amazonaws/http/HttpClientFactory$1;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.http.HttpClientFactory.LocationHeaderNotRequiredRedirectHandler (com.amazonaws.http.HttpClientFactory$LocationHeaderNotRequiredRedirectHandler)
.class final Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationHeaderNotRequiredRedirectHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/http/HttpClientFactory$1;)V
    .registers 2

    .line 137
    invoke-direct {p0}, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 5

    .line 142
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const-string v1, "location"

    .line 143
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-nez v1, :cond_16

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_16

    const/4 p1, 0x0

    return p1

    .line 152
    :cond_16
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    return p1
.end method
