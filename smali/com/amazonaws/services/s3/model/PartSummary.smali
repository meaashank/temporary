###### Class com.amazonaws.services.s3.model.PartSummary (com.amazonaws.services.s3.model.PartSummary)
.class public Lcom/amazonaws/services/s3/model/PartSummary;
.super Ljava/lang/Object;
.source "PartSummary.java"


# instance fields
.field private a:I

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/amazonaws/services/s3/model/PartSummary;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartSummary;->a:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 119
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/PartSummary;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartSummary;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartSummary;->b:Ljava/util/Date;

    return-void
.end method

.method public b()Ljava/util/Date;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartSummary;->b:Ljava/util/Date;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartSummary;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/PartSummary;->d:J

    return-wide v0
.end method
