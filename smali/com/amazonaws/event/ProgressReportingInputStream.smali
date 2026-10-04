###### Class com.amazonaws.event.ProgressReportingInputStream (com.amazonaws.event.ProgressReportingInputStream)
.class public Lcom/amazonaws/event/ProgressReportingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ProgressReportingInputStream.java"


# static fields
.field private static final a:I = 0x400

.field private static final b:I = 0x8


# instance fields
.field private c:I

.field private final d:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x2000

    .line 42
    iput p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->c:I

    .line 72
    iput-object p2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    return-void
.end method

.method private b()V
    .registers 4

    .line 150
    iget-boolean v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->f:Z

    if-nez v0, :cond_5

    return-void

    .line 153
    :cond_5
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    const/4 v1, 0x4

    .line 154
    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->a(I)V

    const/4 v1, 0x0

    .line 155
    iput v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    .line 156
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private b(I)V
    .registers 5

    .line 160
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    .line 162
    iget p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->c:I

    if-lt p1, v0, :cond_1b

    .line 163
    iget-object p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    :cond_1b
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    mul-int/lit16 p1, p1, 0x400

    .line 83
    iput p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->c:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->f:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->f:Z

    return v0
.end method

.method public close()V
    .registers 5

    .line 142
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    if-lez v0, :cond_14

    .line 143
    iget-object v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    .line 146
    :cond_14
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 3

    .line 112
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 114
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->b()V

    goto :goto_f

    :cond_b
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;->b(I)V

    :goto_f
    return v0
.end method

.method public read([BII)I
    .registers 4

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_a

    .line 134
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->b()V

    :cond_a
    if-eq p1, p2, :cond_f

    .line 136
    invoke-direct {p0, p1}, Lcom/amazonaws/event/ProgressReportingInputStream;->b(I)V

    :cond_f
    return p1
.end method

.method public reset()V
    .registers 4

    .line 123
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 124
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    const/16 v1, 0x20

    .line 125
    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->a(I)V

    .line 126
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->e:I

    return-void
.end method
