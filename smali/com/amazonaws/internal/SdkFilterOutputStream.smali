###### Class com.amazonaws.internal.SdkFilterOutputStream (com.amazonaws.internal.SdkFilterOutputStream)
.class public Lcom/amazonaws/internal/SdkFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SdkFilterOutputStream.java"

# interfaces
.implements Lcom/amazonaws/internal/MetricAware;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public d()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterOutputStream;->out:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/amazonaws/internal/MetricAware;

    if-eqz v0, :cond_f

    .line 35
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterOutputStream;->out:Ljava/io/OutputStream;

    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 36
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->d()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
