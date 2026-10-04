###### Class android.support.v4.content.Loader (android.support.v4.content.Loader)
.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$OnLoadCanceledListener;,
        Landroid/support/v4/content/Loader$OnLoadCompleteListener;,
        Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 45
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 47
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 48
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 410
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onAbandon()V

    return-void
.end method

.method public cancelLoad()Z
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 318
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .registers 2

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deliverCancellation()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    invoke-interface {v0, p0}, Landroid/support/v4/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroid/support/v4/content/Loader;)V

    :cond_9
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 556
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    if-eqz p2, :cond_44

    .line 558
    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    .line 559
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    .line 560
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    :cond_44
    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    if-nez p2, :cond_4c

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mReset:Z

    if-eqz p2, :cond_63

    .line 563
    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/Loader;->mReset:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_63
    return-void
.end method

.method public forceLoad()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 347
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 161
    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method protected onCancelLoad()Z
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 511
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    if-eqz v0, :cond_8

    .line 512
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    :goto_b
    return-void
.end method

.method protected onForceLoad()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method protected onReset()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method protected onStartLoading()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method protected onStopLoading()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .registers 4
    .param p2    # Landroid/support/v4/content/Loader$OnLoadCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_9

    .line 176
    iput-object p2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 177
    iput p1, p0, Landroid/support/v4/content/Loader;->mId:I

    return-void

    .line 174
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    .registers 3
    .param p1    # Landroid/support/v4/content/Loader$OnLoadCanceledListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_7

    .line 210
    iput-object p1, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    return-void

    .line 208
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is already a listener registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 447
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onReset()V

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 450
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 451
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 452
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public rollbackContentChanged()V
    .registers 2

    .line 496
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_7

    .line 497
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    :cond_7
    return-void
.end method

.method public final startLoading()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 284
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 285
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 381
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V

    return-void
.end method

.method public takeContentChanged()Z
    .registers 3

    .line 471
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    const/4 v1, 0x0

    .line 472
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 473
    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .registers 3
    .param p1    # Landroid/support/v4/content/Loader$OnLoadCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_14

    .line 190
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    return-void

    .line 191
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    .registers 3
    .param p1    # Landroid/support/v4/content/Loader$OnLoadCanceledListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_14

    .line 226
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    return-void

    .line 227
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class android.support.v4.content.Loader.ForceLoadContentObserver (android.support.v4.content.Loader$ForceLoadContentObserver)
.class public final Landroid/support/v4/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/Loader;


# direct methods
.method public constructor <init>(Landroid/support/v4/content/Loader;)V
    .registers 2

    .line 58
    iput-object p1, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 2

    .line 69
    iget-object p1, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->onContentChanged()V

    return-void
.end method

###### Class android.support.v4.content.Loader.OnLoadCanceledListener (android.support.v4.content.Loader$OnLoadCanceledListener)
.class public interface abstract Landroid/support/v4/content/Loader$OnLoadCanceledListener;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadCanceledListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadCanceled(Landroid/support/v4/content/Loader;)V
    .param p1    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "TD;>;)V"
        }
    .end annotation
.end method

###### Class android.support.v4.content.Loader.OnLoadCompleteListener (android.support.v4.content.Loader$OnLoadCompleteListener)
.class public interface abstract Landroid/support/v4/content/Loader$OnLoadCompleteListener;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadCompleteListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .param p1    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation
.end method
