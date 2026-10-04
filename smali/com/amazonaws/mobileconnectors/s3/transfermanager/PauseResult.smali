###### Class com.amazonaws.mobileconnectors.s3.transfermanager.PauseResult (com.amazonaws.mobileconnectors.s3.transfermanager.PauseResult)
.class public final Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
.super Ljava/lang/Object;
.source "PauseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;",
            "TT;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 34
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    .line 35
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->b:Ljava/lang/Object;

    return-void

    .line 33
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->b:Ljava/lang/Object;

    return-object v0
.end method
