###### Class com.amazonaws.services.s3.internal.ProgressReportingInputStream (com.amazonaws.services.s3.internal.ProgressReportingInputStream)
.class public Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ProgressReportingInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:I = 0x2000


# instance fields
.field private final b:Lcom/amazonaws/services/s3/model/ProgressListener;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->b:Lcom/amazonaws/services/s3/model/ProgressListener;

    return-void
.end method

.method private a(I)V
    .registers 4

    .line 144
    iget v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    .line 145
    iget p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    const/16 v0, 0x2000

    if-lt p1, v0, :cond_1a

    .line 146
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->b:Lcom/amazonaws/services/s3/model/ProgressListener;

    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/model/ProgressListener;->a(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    :cond_1a
    return-void
.end method

.method private b()V
    .registers 3

    .line 133
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->d:Z

    if-nez v0, :cond_5

    return-void

    .line 137
    :cond_5
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    const/4 v1, 0x4

    .line 138
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->a(I)V

    const/4 v1, 0x0

    .line 139
    iput v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    .line 140
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->b:Lcom/amazonaws/services/s3/model/ProgressListener;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/model/ProgressListener;->a(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->d:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->d:Z

    return v0
.end method

.method public close()V
    .registers 4

    .line 125
    iget v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    if-lez v0, :cond_13

    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->b:Lcom/amazonaws/services/s3/model/ProgressListener;

    new-instance v1, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressListener;->a(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    .line 129
    :cond_13
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 3

    .line 92
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 94
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->b()V

    :cond_a
    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    .line 97
    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->a(I)V

    :cond_10
    return v0
.end method

.method public read([BII)I
    .registers 4

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_a

    .line 115
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->b()V

    :cond_a
    if-eq p1, p2, :cond_f

    .line 118
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->a(I)V

    :cond_f
    return p1
.end method

.method public reset()V
    .registers 3

    .line 104
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 105
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    const/16 v1, 0x20

    .line 106
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->a(I)V

    .line 107
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->b:Lcom/amazonaws/services/s3/model/ProgressListener;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/model/ProgressListener;->a(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->c:I

    return-void
.end method
