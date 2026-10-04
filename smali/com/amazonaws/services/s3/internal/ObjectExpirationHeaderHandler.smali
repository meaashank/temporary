###### Class com.amazonaws.services.s3.internal.ObjectExpirationHeaderHandler (com.amazonaws.services.s3.internal.ObjectExpirationHeaderHandler)
.class public Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;
.super Ljava/lang/Object;
.source "ObjectExpirationHeaderHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "expiry-date=\"(.*?)\""

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->a:Ljava/util/regex/Pattern;

    const-string v0, "rule-id=\"(.*?)\""

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->b:Ljava/util/regex/Pattern;

    .line 44
    const-class v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    .line 45
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->c:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 65
    sget-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    .line 73
    sget-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 77
    :try_start_11
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p1

    .line 79
    sget-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->c:Lcom/amazonaws/logging/Log;

    const-string v1, "Error parsing expiry-date from x-amz-expiration header."

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;Lcom/amazonaws/http/HttpResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p2

    const-string v0, "x-amz-expiration"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1c

    .line 59
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;->a(Ljava/util/Date;)V

    .line 60
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;->a(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    .registers 3

    .line 32
    check-cast p1, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->a(Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;Lcom/amazonaws/http/HttpResponse;)V

    return-void
.end method
