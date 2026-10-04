###### Class com.amazonaws.services.s3.S3ResponseMetadata (com.amazonaws.services.s3.S3ResponseMetadata)
.class public Lcom/amazonaws/services/s3/S3ResponseMetadata;
.super Lcom/amazonaws/ResponseMetadata;
.source "S3ResponseMetadata.java"


# static fields
.field public static final c:Ljava/lang/String; = "HOST_ID"

.field public static final d:Ljava/lang/String; = "CLOUD_FRONT_ID"


# direct methods
.method public constructor <init>(Lcom/amazonaws/ResponseMetadata;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/amazonaws/ResponseMetadata;-><init>(Lcom/amazonaws/ResponseMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/S3ResponseMetadata;->b:Ljava/util/Map;

    const-string v1, "HOST_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/S3ResponseMetadata;->b:Ljava/util/Map;

    const-string v1, "CLOUD_FRONT_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
