###### Class com.amazonaws.services.s3.model.BucketPolicy (com.amazonaws.services.s3.model.BucketPolicy)
.class public Lcom/amazonaws/services/s3/model/BucketPolicy;
.super Ljava/lang/Object;
.source "BucketPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketPolicy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketPolicy;->a:Ljava/lang/String;

    return-void
.end method
