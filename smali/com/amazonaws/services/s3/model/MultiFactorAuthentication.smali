###### Class com.amazonaws.services.s3.model.MultiFactorAuthentication (com.amazonaws.services.s3.model.MultiFactorAuthentication)
.class public Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
.super Ljava/lang/Object;
.source "MultiFactorAuthentication.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .registers 2

    .line 149
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->c(Ljava/lang/String;)V

    return-object p0
.end method
