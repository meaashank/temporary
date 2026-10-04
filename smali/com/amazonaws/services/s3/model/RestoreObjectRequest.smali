###### Class com.amazonaws.services.s3.model.RestoreObjectRequest (com.amazonaws.services.s3.model.RestoreObjectRequest)
.class public Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RestoreObjectRequest.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 99
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->b:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->c:Ljava/lang/String;

    .line 102
    iput p3, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)V
    .registers 2

    .line 203
    iput p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->a:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 260
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->e:Z

    return-void
.end method

.method public b(I)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .registers 2

    .line 219
    iput p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->a:I

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .registers 2

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->a(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .registers 2

    .line 210
    iget v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->a:I

    return v0
.end method

.method public l()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->e:Z

    return v0
.end method
