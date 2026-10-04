###### Class com.amazonaws.services.securitytoken.model.transform.ExpiredTokenExceptionUnmarshaller (com.amazonaws.services.securitytoken.model.transform.ExpiredTokenExceptionUnmarshaller)
.class public Lcom/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;
.super Lcom/amazonaws/transform/StandardErrorUnmarshaller;
.source "ExpiredTokenExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    const-class v0, Lcom/amazonaws/services/securitytoken/model/ExpiredTokenException;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;
    .registers 4

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "ExpiredTokenException"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_16

    .line 39
    :cond_f
    invoke-super {p0, p1}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;->a(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/securitytoken/model/ExpiredTokenException;

    return-object p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;->a(Lorg/w3c/dom/Node;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method
