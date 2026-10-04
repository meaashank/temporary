###### Class com.facebook.RequestProgress (com.facebook.RequestProgress)
.class Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "RequestProgress.java"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/facebook/GraphRequest;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    .line 34
    iput-object p1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcom/facebook/FacebookSdk;->getOnProgressThreshold()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/RequestProgress;->threshold:J

    return-void
.end method


# virtual methods
.method addProgress(J)V
    .registers 7

    .line 48
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 50
    iget-wide p1, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->threshold:J

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_18

    iget-wide p1, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1b

    .line 51
    :cond_18
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->reportProgress()V

    :cond_1b
    return-void
.end method

.method addToMax(J)V
    .registers 5

    .line 56
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-void
.end method

.method getMaxProgress()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-wide v0
.end method

.method getProgress()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    return-wide v0
.end method

.method reportProgress()V
    .registers 10

    .line 60
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_39

    .line 61
    iget-object v0, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    .line 62
    iget-wide v1, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_39

    instance-of v1, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v1, :cond_39

    .line 64
    iget-wide v5, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 65
    iget-wide v7, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 66
    move-object v4, v0

    check-cast v4, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 68
    iget-object v0, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_29

    .line 69
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    goto :goto_35

    .line 72
    :cond_29
    iget-object v0, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/RequestProgress$1;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/RequestProgress$1;-><init>(Lcom/facebook/RequestProgress;Lcom/facebook/GraphRequest$OnProgressCallback;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_35
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    :cond_39
    return-void
.end method

###### Class com.facebook.RequestProgress.AnonymousClass1 (com.facebook.RequestProgress$1)
.class Lcom/facebook/RequestProgress$1;
.super Ljava/lang/Object;
.source "RequestProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/RequestProgress;->reportProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/RequestProgress;

.field final synthetic val$callbackCopy:Lcom/facebook/GraphRequest$OnProgressCallback;

.field final synthetic val$currentCopy:J

.field final synthetic val$maxProgressCopy:J


# direct methods
.method constructor <init>(Lcom/facebook/RequestProgress;Lcom/facebook/GraphRequest$OnProgressCallback;JJ)V
    .registers 7

    .line 72
    iput-object p1, p0, Lcom/facebook/RequestProgress$1;->this$0:Lcom/facebook/RequestProgress;

    iput-object p2, p0, Lcom/facebook/RequestProgress$1;->val$callbackCopy:Lcom/facebook/GraphRequest$OnProgressCallback;

    iput-wide p3, p0, Lcom/facebook/RequestProgress$1;->val$currentCopy:J

    iput-wide p5, p0, Lcom/facebook/RequestProgress$1;->val$maxProgressCopy:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 75
    iget-object v0, p0, Lcom/facebook/RequestProgress$1;->val$callbackCopy:Lcom/facebook/GraphRequest$OnProgressCallback;

    iget-wide v1, p0, Lcom/facebook/RequestProgress$1;->val$currentCopy:J

    iget-wide v3, p0, Lcom/facebook/RequestProgress$1;->val$maxProgressCopy:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    return-void
.end method
