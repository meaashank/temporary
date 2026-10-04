###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferUtilityOptions (com.amazonaws.mobileconnectors.s3.transferutility.TransferUtilityOptions)
.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;
.super Ljava/lang/Object;
.source "TransferUtilityOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:I = 0xea60

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private b:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private c:I

.field private d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:J

    .line 79
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:I

    .line 80
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->f()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-void
.end method

.method public constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;)V
    .registers 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:J

    .line 94
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:I

    .line 95
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-void
.end method

.method static d()I
    .registers 1

    .line 162
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static e()J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method static f()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .registers 1

    .line 184
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    if-gez p1, :cond_9

    .line 141
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d()I

    move-result p1

    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:I

    goto :goto_b

    .line 143
    :cond_9
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:I

    :goto_b
    return-void
.end method

.method public a(J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public b()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:I

    return v0
.end method

.method public c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object v0
.end method
