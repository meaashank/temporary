###### Class com.amazonaws.services.s3.model.SetObjectTaggingResult (com.amazonaws.services.s3.model.SetObjectTaggingResult)
.class public Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;
.super Ljava/lang/Object;
.source "SetObjectTaggingResult.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;->a(Ljava/lang/String;)V

    return-object p0
.end method
