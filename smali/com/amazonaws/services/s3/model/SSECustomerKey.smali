###### Class com.amazonaws.services.s3.model.SSECustomerKey (com.amazonaws.services.s3.model.SSECustomerKey)
.class public Lcom/amazonaws/services/s3/model/SSECustomerKey;
.super Ljava/lang/Object;
.source "SSECustomerKey.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    .line 69
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a:Ljava/lang/String;

    return-void

    .line 66
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encryption key must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_18

    .line 111
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c:Ljava/lang/String;

    .line 112
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a:Ljava/lang/String;

    return-void

    .line 108
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encryption key must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    .line 86
    array-length v0, p1

    if-eqz v0, :cond_17

    .line 90
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a:Ljava/lang/String;

    return-void

    .line 87
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encryption key must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static e(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    if-eqz p0, :cond_c

    .line 253
    new-instance v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/SSECustomerKey;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    return-object p0

    .line 252
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 179
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 229
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c(Ljava/lang/String;)V

    return-object p0
.end method
