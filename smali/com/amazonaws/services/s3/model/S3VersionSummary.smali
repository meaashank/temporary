###### Class com.amazonaws.services.s3.model.S3VersionSummary (com.amazonaws.services.s3.model.S3VersionSummary)
.class public Lcom/amazonaws/services/s3/model/S3VersionSummary;
.super Ljava/lang/Object;
.source "S3VersionSummary.java"


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/Date;

.field private f:Lcom/amazonaws/services/s3/model/Owner;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .line 307
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->h:J

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/Owner;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->f:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->e:Ljava/util/Date;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 157
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 243
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->j:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->g:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->d:Z

    return v0
.end method

.method public e()Ljava/util/Date;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->e:Ljava/util/Date;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Lcom/amazonaws/services/s3/model/Owner;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->f:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->j:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .registers 3

    .line 297
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/S3VersionSummary;->h:J

    return-wide v0
.end method
