###### Class com.amazonaws.handlers.RequestHandler2Adaptor (com.amazonaws.handlers.RequestHandler2Adaptor)
.class final Lcom/amazonaws/handlers/RequestHandler2Adaptor;
.super Lcom/amazonaws/handlers/RequestHandler2;
.source "RequestHandler2Adaptor.java"


# instance fields
.field private final a:Lcom/amazonaws/handlers/RequestHandler;


# direct methods
.method constructor <init>(Lcom/amazonaws/handlers/RequestHandler;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/amazonaws/handlers/RequestHandler2;-><init>()V

    if-eqz p1, :cond_8

    .line 35
    iput-object p1, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->a:Lcom/amazonaws/handlers/RequestHandler;

    return-void

    .line 34
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Lcom/amazonaws/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->a:Lcom/amazonaws/handlers/RequestHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/handlers/RequestHandler;->a(Lcom/amazonaws/Request;)V

    return-void
.end method

.method public a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_9

    .line 48
    :cond_5
    invoke-interface {p1}, Lcom/amazonaws/Request;->j()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    :goto_9
    if-nez p2, :cond_d

    move-object p2, v0

    goto :goto_11

    .line 50
    :cond_d
    invoke-virtual {p2}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object p2

    :goto_11
    if-nez v1, :cond_14

    goto :goto_18

    .line 52
    :cond_14
    invoke-virtual {v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    .line 53
    :goto_18
    iget-object v1, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->a:Lcom/amazonaws/handlers/RequestHandler;

    invoke-interface {v1, p1, p2, v0}, Lcom/amazonaws/handlers/RequestHandler;->a(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V

    return-void
.end method

.method public a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 60
    iget-object p2, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->a:Lcom/amazonaws/handlers/RequestHandler;

    invoke-interface {p2, p1, p3}, Lcom/amazonaws/handlers/RequestHandler;->a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 70
    instance-of v0, p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_6
    check-cast p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    .line 73
    iget-object v0, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->a:Lcom/amazonaws/handlers/RequestHandler;

    iget-object p1, p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->a:Lcom/amazonaws/handlers/RequestHandler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->a:Lcom/amazonaws/handlers/RequestHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
