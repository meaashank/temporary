###### Class com.amazonaws.services.s3.model.ProgressEvent (com.amazonaws.services.s3.model.ProgressEvent)
.class public Lcom/amazonaws/services/s3/model/ProgressEvent;
.super Lcom/amazonaws/event/ProgressEvent;
.source "ProgressEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 4

    int-to-long v0, p1

    .line 29
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/event/ProgressEvent;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->a(J)V

    return-void
.end method

.method public c()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ProgressEvent;->a()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
