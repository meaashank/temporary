###### Class com.google.android.exoplayer2.drm.DefaultDrmSession (com.google.android.exoplayer2.drm.DefaultDrmSession)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field final callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

.field private final initData:[B

.field private final initialDrmRequestRetryCount:I

.field private lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mimeType:Ljava/lang/String;

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field final postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private final provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;[BLjava/lang/String;I[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;[B",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            "I)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 125
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    .line 126
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 127
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    .line 128
    iput-object p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 129
    iput-object p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 130
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 131
    iput p13, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    .line 133
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    .line 134
    iput-object p12, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    const/4 p1, 0x2

    .line 135
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 137
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    invoke-direct {p1, p0, p10}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    .line 138
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DrmRequestHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 140
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    if-nez p7, :cond_43

    .line 143
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initData:[B

    .line 144
    iput-object p5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mimeType:Ljava/lang/String;

    goto :goto_48

    :cond_43
    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initData:[B

    .line 147
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mimeType:Ljava/lang/String;

    :goto_48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    return p0
.end method

.method private doLicense(Z)V
    .registers 9

    .line 293
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_86

    goto/16 :goto_85

    .line 333
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v0, 0x3

    .line 334
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto/16 :goto_85

    .line 321
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_1c

    .line 322
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_85

    .line 325
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 326
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_85

    .line 296
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 297
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_85

    .line 298
    :cond_2f
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3a

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 299
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v3

    .line 300
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_62

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_62

    const-string v0, "DefaultDrmSession"

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_85

    :cond_62
    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-gtz p1, :cond_71

    .line 306
    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_85

    .line 308
    :cond_71
    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 309
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    if-eqz p1, :cond_85

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz p1, :cond_85

    .line 310
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_85
    :goto_85
    return-void

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_26
        :pswitch_26
        :pswitch_14
        :pswitch_8
    .end packed-switch
.end method

.method private getLicenseDurationRemainingSec()J
    .registers 6

    .line 354
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 357
    :cond_10
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    .line 358
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isOpen()Z
    .registers 3

    .line 455
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4

    .line 440
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 441
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v0, :cond_19

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    :cond_19
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    const/4 p1, 0x1

    .line 450
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    :cond_21
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .registers 4

    .line 377
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 382
    :cond_7
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 383
    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    return-void

    .line 388
    :cond_11
    :try_start_11
    check-cast p1, [B

    check-cast p1, [B

    .line 389
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 390
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object p1

    .line 392
    :cond_23
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_42

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 394
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz p1, :cond_78

    .line 395
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_78

    .line 403
    :cond_42
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    .line 404
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_57

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v0, :cond_5e

    :cond_57
    if-eqz p1, :cond_5e

    array-length v0, p1

    if-eqz v0, :cond_5e

    .line 407
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    :cond_5e
    const/4 p1, 0x4

    .line 409
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 410
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz p1, :cond_78

    .line 411
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p1

    .line 420
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    :cond_78
    :goto_78
    return-void
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .registers 3

    .line 432
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_a

    .line 433
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_d

    .line 435
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    :goto_d
    return-void
.end method

.method private onKeysExpired()V
    .registers 3

    .line 425
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    const/4 v0, 0x3

    .line 426
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 427
    new-instance v0, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    :cond_10
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .registers 4

    .line 272
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 277
    :cond_c
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_18

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    return-void

    .line 283
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    check-cast p1, [B

    check-cast p1, [B

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_27

    .line 289
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    return-void

    :catch_27
    move-exception p1

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    return-void
.end method

.method private openInternal(Z)Z
    .registers 5

    .line 248
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 254
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->createMediaCrypto([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    const/4 v0, 0x3

    .line 256
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I
    :try_end_1d
    .catch Landroid/media/NotProvisionedException; {:try_start_8 .. :try_end_1d} :catch_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    return v1

    :catch_1e
    move-exception p1

    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_2f

    :catch_23
    move-exception v0

    if-eqz p1, :cond_2c

    .line 260
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_2f

    .line 262
    :cond_2c
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    :goto_2f
    const/4 p1, 0x0

    return p1
.end method

.method private postKeyRequest(IZ)V
    .registers 10

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    :goto_5
    move-object v2, v0

    goto :goto_a

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    goto :goto_5

    .line 364
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initData:[B

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    move v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1

    .line 366
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 367
    new-instance v0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object v1

    .line 368
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;-><init>([BLjava/lang/String;)V

    move-object p1, v0

    .line 370
    :cond_33
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(ILjava/lang/Object;Z)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p1

    .line 372
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    :goto_42
    return-void
.end method

.method private restoreKeys()Z
    .registers 4

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    .line 347
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquire()V
    .registers 3

    .line 154
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    if-ne v0, v1, :cond_16

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    if-ne v0, v1, :cond_d

    return-void

    .line 158
    :cond_d
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 159
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_16
    return-void
.end method

.method public final getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .registers 3

    .line 221
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public final getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 216
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasInitData([B)Z
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initData:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hasSessionId([B)Z
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public onMediaDrmEvent(I)V
    .registers 3

    .line 460
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    packed-switch p1, :pswitch_data_1e

    goto :goto_1c

    .line 471
    :pswitch_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysExpired()V

    goto :goto_1c

    :pswitch_f
    const/4 p1, 0x0

    .line 465
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_1c

    :pswitch_14
    const/4 p1, 0x3

    .line 474
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 475
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method public onProvisionCompleted()V
    .registers 2

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_b
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .registers 2

    .line 208
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public provision()V
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(ILjava/lang/Object;Z)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public release()Z
    .registers 5

    .line 168
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v2, 0x0

    if-nez v0, :cond_31

    .line 169
    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 172
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 174
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 175
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    .line 176
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_30

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    .line 179
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    :cond_30
    return v1

    :cond_31
    return v2
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.AnonymousClass1 (com.google.android.exoplayer2.drm.DefaultDrmSession$1)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmKeysRestored()V

    return-void
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.AnonymousClass2 (com.google.android.exoplayer2.drm.DefaultDrmSession$2)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmKeysRemoved()V

    return-void
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.AnonymousClass3 (com.google.android.exoplayer2.drm.DefaultDrmSession$3)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmKeysLoaded()V

    return-void
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.AnonymousClass4 (com.google.android.exoplayer2.drm.DefaultDrmSession$4)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Exception;)V
    .registers 3

    .line 442
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.PostRequestHandler (com.google.android.exoplayer2.drm.DefaultDrmSession$PostRequestHandler)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .registers 3

    .line 510
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 511
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getRetryDelayMillis(I)J
    .registers 4

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    .line 558
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private maybeRetryRequest(Landroid/os/Message;)Z
    .registers 6

    .line 543
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_c

    return v1

    .line 547
    :cond_c
    iget v0, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v0, v2

    .line 548
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)I

    move-result v3

    if-le v0, v3, :cond_18

    return v1

    .line 551
    :cond_18
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    .line 552
    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 553
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->getRetryDelayMillis(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 523
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 531
    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_2a

    .line 528
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v0

    goto :goto_36

    .line 525
    :pswitch_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v0

    goto :goto_36

    .line 531
    :goto_2a
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    .line 534
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->maybeRetryRequest(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_36

    return-void

    .line 539
    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_19
        :pswitch_8
    .end packed-switch
.end method

.method obtainMessage(ILjava/lang/Object;Z)Landroid/os/Message;
    .registers 5

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.PostResponseHandler (com.google.android.exoplayer2.drm.DefaultDrmSession$PostResponseHandler)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .registers 3

    .line 486
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 487
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 492
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    goto :goto_15

    .line 497
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V

    goto :goto_15

    .line 494
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V

    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager (com.google.android.exoplayer2.drm.DefaultDrmSession$ProvisioningManager)
.class public interface abstract Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProvisioningManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onProvisionCompleted()V
.end method

.method public abstract onProvisionError(Ljava/lang/Exception;)V
.end method

.method public abstract provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>;)V"
        }
    .end annotation
.end method
