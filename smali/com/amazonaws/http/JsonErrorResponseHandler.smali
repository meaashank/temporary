###### Class com.amazonaws.http.JsonErrorResponseHandler (com.amazonaws.http.JsonErrorResponseHandler)
.class public Lcom/amazonaws/http/JsonErrorResponseHandler;
.super Ljava/lang/Object;
.source "JsonErrorResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "x-amzn-ErrorType"

.field private static final b:I = 0x1f4


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazonaws/http/JsonErrorResponseHandler;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/amazonaws/http/JsonErrorResponseHandler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    .line 97
    invoke-virtual {v1, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->a(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    invoke-virtual {v1, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->b(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .registers 6

    .line 62
    :try_start_0
    invoke-static {p1}, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5e

    .line 67
    invoke-direct {p0, v0}, Lcom/amazonaws/http/JsonErrorResponseHandler;->a(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/AmazonServiceException;->a(I)V

    .line 72
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v2

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_21

    .line 73
    sget-object v2, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v1, v2}, Lcom/amazonaws/AmazonServiceException;->a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    goto :goto_26

    .line 75
    :cond_21
    sget-object v2, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v1, v2}, Lcom/amazonaws/AmazonServiceException;->a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 77
    :goto_26
    invoke-virtual {v0}, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/AmazonServiceException;->c(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v2, "X-Amzn-RequestId"

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazonaws/AmazonServiceException;->a(Ljava/lang/String;)V

    goto :goto_39

    :cond_5d
    return-object v1

    :catch_5e
    move-exception p1

    .line 64
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to parse error response"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonErrorResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method

###### Class com.amazonaws.http.JsonErrorResponseHandler.JsonErrorResponse (com.amazonaws.http.JsonErrorResponseHandler$JsonErrorResponse)
.class public final Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;
.super Ljava/lang/Object;
.source "JsonErrorResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/JsonErrorResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonErrorResponse"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->a:I

    .line 122
    iput-object p2, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->c:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->d:Ljava/util/Map;

    const-string p1, "message"

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;
    .registers 6

    .line 190
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v0

    .line 193
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 194
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->b()Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->b(Ljava/io/Reader;)Ljava/util/Map;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p0

    const-string v2, "x-amzn-ErrorType"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_35

    const/16 v2, 0x3a

    .line 203
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_51

    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_51

    :cond_35
    const-string v2, "__type"

    .line 207
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string p0, "__type"

    .line 209
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "#"

    .line 210
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 211
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 214
    :cond_51
    :goto_51
    new-instance v2, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    invoke-direct {v2, v0, p0, v1}, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_67

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_67

    .line 168
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 175
    iget-object v2, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 176
    iget-object v0, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_66

    .line 177
    :cond_55
    iget-object p1, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 178
    iget-object p1, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_66
    :goto_66
    return-object v1

    :cond_67
    :goto_67
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->b:Ljava/lang/String;

    return-object v0
.end method
