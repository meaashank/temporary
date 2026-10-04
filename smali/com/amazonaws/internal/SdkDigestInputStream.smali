###### Class com.amazonaws.internal.SdkDigestInputStream (com.amazonaws.internal.SdkDigestInputStream)
.class public Lcom/amazonaws/internal/SdkDigestInputStream;
.super Ljava/security/DigestInputStream;
.source "SdkDigestInputStream.java"

# interfaces
.implements Lcom/amazonaws/internal/MetricAware;


# static fields
.field static final synthetic a:Z

.field private static final b:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/amazonaws/internal/SdkDigestInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazonaws/internal/SdkDigestInputStream;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public final d()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazonaws/internal/SdkDigestInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/amazonaws/internal/MetricAware;

    if-eqz v0, :cond_f

    .line 37
    iget-object v0, p0, Lcom/amazonaws/internal/SdkDigestInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 38
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->d()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final skip(J)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide p1

    :cond_7
    const-wide/16 v2, 0x800

    .line 69
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    move-wide v3, p1

    :goto_11
    cmp-long v5, v3, v0

    if-lez v5, :cond_31

    const/4 v5, 0x0

    .line 72
    array-length v6, v2

    int-to-long v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v2, v5, v6}, Lcom/amazonaws/internal/SdkDigestInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2e

    cmp-long v0, v3, p1

    if-nez v0, :cond_2b

    const-wide/16 p1, -0x1

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    sub-long/2addr p1, v3

    :goto_2d
    return-wide p1

    :cond_2e
    int-to-long v5, v5

    sub-long/2addr v3, v5

    goto :goto_11

    .line 77
    :cond_31
    sget-boolean v2, Lcom/amazonaws/internal/SdkDigestInputStream;->a:Z

    if-nez v2, :cond_40

    cmp-long v2, v3, v0

    if-nez v2, :cond_3a

    goto :goto_40

    :cond_3a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_40
    :goto_40
    return-wide p1
.end method
