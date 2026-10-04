###### Class com.amazonaws.services.s3.model.GetRequestPaymentConfigurationRequest (com.amazonaws.services.s3.model.GetRequestPaymentConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetRequestPaymentConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method
