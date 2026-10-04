###### Class com.amazonaws.http.StaxResponseHandler (com.amazonaws.http.StaxResponseHandler)
.class public Lcom/amazonaws/http/StaxResponseHandler;
.super Ljava/lang/Object;
.source "StaxResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonWebServiceResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/amazonaws/logging/Log;

.field private static final c:Lorg/xmlpull/v1/XmlPullParserFactory;


# instance fields
.field private a:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com.amazonaws.request"

    .line 49
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/StaxResponseHandler;->b:Lcom/amazonaws/logging/Log;

    .line 55
    :try_start_8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/StaxResponseHandler;->c:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 57
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Couldn\'t initialize XmlPullParserFactory"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazonaws/http/StaxResponseHandler;->a:Lcom/amazonaws/transform/Unmarshaller;

    .line 78
    iget-object p1, p0, Lcom/amazonaws/http/StaxResponseHandler;->a:Lcom/amazonaws/transform/Unmarshaller;

    if-nez p1, :cond_10

    .line 79
    new-instance p1, Lcom/amazonaws/transform/VoidStaxUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/transform/VoidStaxUnmarshaller;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/http/StaxResponseHandler;->a:Lcom/amazonaws/transform/Unmarshaller;

    :cond_10
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/amazonaws/http/StaxResponseHandler;->b:Lcom/amazonaws/logging/Log;

    const-string v1, "Parsing service response XML"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->b()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 91
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "<eof/>"

    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 93
    :cond_1a
    sget-object v1, Lcom/amazonaws/http/StaxResponseHandler;->c:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const/4 v2, 0x0

    .line 94
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v0}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 97
    new-instance v2, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    .line 98
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    const-string v1, "ResponseMetadata/RequestId"

    const-string v3, "AWS_REQUEST_ID"

    const/4 v4, 0x2

    .line 99
    invoke-virtual {v2, v1, v4, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "requestId"

    const-string v3, "AWS_REQUEST_ID"

    .line 101
    invoke-virtual {v2, v1, v4, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/amazonaws/http/StaxResponseHandler;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)V

    .line 105
    iget-object v1, p0, Lcom/amazonaws/http/StaxResponseHandler;->a:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v1, v2}, Lcom/amazonaws/transform/Unmarshaller;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonWebServiceResponse;->a(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->e()Ljava/util/Map;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6a

    const-string v2, "x-amzn-RequestId"

    .line 111
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6a

    const-string v2, "AWS_REQUEST_ID"

    const-string v3, "x-amzn-RequestId"

    .line 113
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_6a
    new-instance p1, Lcom/amazonaws/ResponseMetadata;

    invoke-direct {p1, v1}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceResponse;->a(Lcom/amazonaws/ResponseMetadata;)V

    .line 118
    sget-object p1, Lcom/amazonaws/http/StaxResponseHandler;->b:Lcom/amazonaws/logging/Log;

    const-string v1, "Done parsing service response"

    invoke-interface {p1, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)V
    .registers 2

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/StaxResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method
