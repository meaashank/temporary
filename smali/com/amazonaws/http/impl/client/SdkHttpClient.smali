###### Class com.amazonaws.http.impl.client.SdkHttpClient (com.amazonaws.http.impl.client.SdkHttpClient)
.class public Lcom/amazonaws/http/impl/client/SdkHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SdkHttpClient.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    .line 39
    invoke-static {p1}, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;->a(Lorg/apache/http/conn/ClientConnectionManager;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .registers 2

    .line 44
    new-instance v0, Lcom/amazonaws/http/protocol/SdkHttpRequestExecutor;

    invoke-direct {v0}, Lcom/amazonaws/http/protocol/SdkHttpRequestExecutor;-><init>()V

    return-object v0
.end method
