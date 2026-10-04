###### Class com.amazonaws.services.s3.model.SetRequestPaymentConfigurationRequest (com.amazonaws.services.s3.model.SetRequestPaymentConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetRequestPaymentConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->a(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public h()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method
