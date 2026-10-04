###### Class com.amazonaws.services.s3.model.CloudFunctionConfiguration (com.amazonaws.services.s3.model.CloudFunctionConfiguration)
.class public Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;
.super Lcom/amazonaws/services/s3/model/NotificationConfiguration;
.source "CloudFunctionConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazonaws/services/s3/model/S3Event;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>(Ljava/util/EnumSet;)V

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 68
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>([Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->a:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method
