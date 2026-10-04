###### Class com.amazonaws.services.s3.model.Filter (com.amazonaws.services.s3.model.Filter)
.class public Lcom/amazonaws/services/s3/model/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/S3KeyFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/S3KeyFilter;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Filter;->a:Lcom/amazonaws/services/s3/model/S3KeyFilter;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/S3KeyFilter;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Filter;->a:Lcom/amazonaws/services/s3/model/S3KeyFilter;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/S3KeyFilter;)Lcom/amazonaws/services/s3/model/Filter;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/Filter;->a(Lcom/amazonaws/services/s3/model/S3KeyFilter;)V

    return-object p0
.end method
