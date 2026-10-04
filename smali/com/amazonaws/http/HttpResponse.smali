###### Class com.amazonaws.http.HttpResponse (com.amazonaws.http.HttpResponse)
.class public Lcom/amazonaws/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/HttpResponse$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/io/InputStream;

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

.field private e:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 43
    iput-object p3, p0, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    .line 44
    iput-object p4, p0, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lcom/amazonaws/http/HttpResponse$1;)V
    .registers 6

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;)V

    return-void
.end method

.method public static f()Lcom/amazonaws/http/HttpResponse$Builder;
    .registers 1

    .line 112
    new-instance v0, Lcom/amazonaws/http/HttpResponse$Builder;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpResponse$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->e:Ljava/io/InputStream;

    if-nez v0, :cond_2c

    .line 65
    monitor-enter p0

    .line 66
    :try_start_5
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_23

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 67
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse;->e:Ljava/io/InputStream;

    goto :goto_27

    .line 69
    :cond_23
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse;->e:Ljava/io/InputStream;

    .line 71
    :goto_27
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v0

    .line 73
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()Ljava/io/InputStream;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/amazonaws/http/HttpResponse;->b:I

    return v0
.end method

###### Class com.amazonaws.http.HttpResponse.AnonymousClass1 (com.amazonaws.http.HttpResponse$1)
.class synthetic Lcom/amazonaws/http/HttpResponse$1;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.http.HttpResponse.Builder (com.amazonaws.http.HttpResponse$Builder)
.class public Lcom/amazonaws/http/HttpResponse$Builder;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/io/InputStream;

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
.method public constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/amazonaws/http/HttpResponse$Builder;
    .registers 2

    .line 144
    iput p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->b:I

    return-object p0
.end method

.method public a(Ljava/io/InputStream;)Lcom/amazonaws/http/HttpResponse$Builder;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/amazonaws/http/HttpResponse;
    .registers 8

    .line 178
    new-instance v6, Lcom/amazonaws/http/HttpResponse;

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->a:Ljava/lang/String;

    iget v2, p0, Lcom/amazonaws/http/HttpResponse$Builder;->b:I

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->d:Ljava/util/Map;

    .line 179
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/http/HttpResponse$Builder;->c:Ljava/io/InputStream;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lcom/amazonaws/http/HttpResponse$1;)V

    return-object v6
.end method
