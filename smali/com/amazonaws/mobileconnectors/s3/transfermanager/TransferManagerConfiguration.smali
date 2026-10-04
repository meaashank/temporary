###### Class com.amazonaws.mobileconnectors.s3.transfermanager.TransferManagerConfiguration (com.amazonaws.mobileconnectors.s3.transfermanager.TransferManagerConfiguration)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;
.super Ljava/lang/Object;
.source "TransferManagerConfiguration.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:I = 0x500000

.field private static final b:J = 0x1000000L

.field private static final c:J = 0x140000000L

.field private static final d:J = 0x6400000L


# instance fields
.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x500000

    .line 57
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->e:J

    const-wide/32 v0, 0x1000000

    .line 71
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->f:J

    const-wide v0, 0x140000000L

    .line 79
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->g:J

    const-wide/32 v0, 0x6400000

    .line 86
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->h:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->e:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3

    .line 110
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->e:J

    return-void
.end method

.method public b()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->f:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3

    .line 145
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->f:J

    return-void
.end method

.method public c()J
    .registers 3

    .line 157
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->h:J

    return-wide v0
.end method

.method public c(J)V
    .registers 3

    .line 169
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->h:J

    return-void
.end method

.method public d()J
    .registers 3

    .line 180
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->g:J

    return-wide v0
.end method

.method public d(J)V
    .registers 3

    .line 193
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->g:J

    return-void
.end method
