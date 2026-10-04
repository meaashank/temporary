###### Class com.amazonaws.AmazonWebServiceRequest (com.amazonaws.AmazonWebServiceRequest)
.class public abstract Lcom/amazonaws/AmazonWebServiceRequest;
.super Ljava/lang/Object;
.source "AmazonWebServiceRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/amazonaws/event/ProgressListener;

.field private final b:Lcom/amazonaws/RequestClientOptions;

.field private c:Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private d:Lcom/amazonaws/auth/AWSCredentials;

.field private e:Lcom/amazonaws/AmazonWebServiceRequest;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazonaws/RequestClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/RequestClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->b:Lcom/amazonaws/RequestClientOptions;

    return-void
.end method

.method private b(Lcom/amazonaws/AmazonWebServiceRequest;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->e:Lcom/amazonaws/AmazonWebServiceRequest;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->a:Lcom/amazonaws/event/ProgressListener;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonWebServiceRequest;->a(Lcom/amazonaws/event/ProgressListener;)V

    .line 171
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->c:Lcom/amazonaws/metrics/RequestMetricCollector;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonWebServiceRequest;->a(Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-object p1
.end method

.method public a(Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->d:Lcom/amazonaws/auth/AWSCredentials;

    return-void
.end method

.method public a(Lcom/amazonaws/event/ProgressListener;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->a:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method public a(Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->c:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public b(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/event/ProgressListener;",
            ")TT;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceRequest;->a(Lcom/amazonaws/event/ProgressListener;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/metrics/RequestMetricCollector;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceRequest;->a(Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-object p0
.end method

.method public b()Lcom/amazonaws/RequestClientOptions;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->b:Lcom/amazonaws/RequestClientOptions;

    return-object v0
.end method

.method public c()Lcom/amazonaws/metrics/RequestMetricCollector;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->c:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->g()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/amazonaws/event/ProgressListener;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->a:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public e()Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->e:Lcom/amazonaws/AmazonWebServiceRequest;

    return-object v0
.end method

.method public f()Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->e:Lcom/amazonaws/AmazonWebServiceRequest;

    if-eqz v0, :cond_f

    .line 196
    :goto_4
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->e()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 197
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->e()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public g()Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 4

    .line 216
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/AmazonWebServiceRequest;

    .line 217
    invoke-direct {v0, p0}, Lcom/amazonaws/AmazonWebServiceRequest;->b(Lcom/amazonaws/AmazonWebServiceRequest;)V
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Got a CloneNotSupportedException from Object.clone() even though we\'re Cloneable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public l_()Lcom/amazonaws/auth/AWSCredentials;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->d:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method
