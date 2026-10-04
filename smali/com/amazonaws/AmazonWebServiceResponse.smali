###### Class com.amazonaws.AmazonWebServiceResponse (com.amazonaws.AmazonWebServiceResponse)
.class public Lcom/amazonaws/AmazonWebServiceResponse;
.super Ljava/lang/Object;
.source "AmazonWebServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/amazonaws/ResponseMetadata;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/amazonaws/ResponseMetadata;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceResponse;->b:Lcom/amazonaws/ResponseMetadata;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceResponse;->a:Ljava/lang/Object;

    return-void
.end method

.method public b()Lcom/amazonaws/ResponseMetadata;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->b:Lcom/amazonaws/ResponseMetadata;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->b:Lcom/amazonaws/ResponseMetadata;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->b:Lcom/amazonaws/ResponseMetadata;

    invoke-virtual {v0}, Lcom/amazonaws/ResponseMetadata;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
