###### Class com.amazonaws.services.s3.model.S3ObjectIdBuilder (com.amazonaws.services.s3.model.S3ObjectIdBuilder)
.class public final Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;
.super Ljava/lang/Object;
.source "S3ObjectIdBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3ObjectId;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3ObjectId;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3ObjectId;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/amazonaws/services/s3/model/S3ObjectId;
    .registers 5

    .line 77
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectId;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3ObjectId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c:Ljava/lang/String;

    return-object p0
.end method
