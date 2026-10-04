###### Class com.amazonaws.services.s3.model.BucketAccelerateConfiguration (com.amazonaws.services.s3.model.BucketAccelerateConfiguration)
.class public Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
.super Ljava/lang/Object;
.source "BucketAccelerateConfiguration.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a(Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;)V
    .registers 2

    .line 78
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a(Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Z
    .registers 3

    .line 106
    sget-object v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->Enabled:Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
