###### Class com.amazonaws.services.s3.internal.S3ExecutionContext (com.amazonaws.services.s3.internal.S3ExecutionContext)
.class public Lcom/amazonaws/services/s3/internal/S3ExecutionContext;
.super Lcom/amazonaws/http/ExecutionContext;
.source "S3ExecutionContext.java"


# instance fields
.field private a:Lcom/amazonaws/auth/Signer;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;Z",
            "Lcom/amazonaws/AmazonWebServiceClient;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .registers 2

    .line 52
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;->a:Lcom/amazonaws/auth/Signer;

    return-object p1
.end method

.method public a(Lcom/amazonaws/auth/Signer;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;->a:Lcom/amazonaws/auth/Signer;

    return-void
.end method
