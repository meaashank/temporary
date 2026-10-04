###### Class com.crashlytics.android.Crashlytics (com.crashlytics.android.Crashlytics)
.class public Lcom/crashlytics/android/Crashlytics;
.super Lio/fabric/sdk/android/i;
.source "Crashlytics.java"

# interfaces
.implements Lio/fabric/sdk/android/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/Crashlytics$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/i<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/j;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Crashlytics"


# instance fields
.field public final answers:Lcom/crashlytics/android/answers/Answers;

.field public final beta:Lcom/crashlytics/android/beta/Beta;

.field public final core:Lcom/crashlytics/android/core/CrashlyticsCore;

.field public final kits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 29
    new-instance v0, Lcom/crashlytics/android/answers/Answers;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/Answers;-><init>()V

    new-instance v1, Lcom/crashlytics/android/beta/Beta;

    invoke-direct {v1}, Lcom/crashlytics/android/beta/Beta;-><init>()V

    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;-><init>(Lcom/crashlytics/android/answers/Answers;Lcom/crashlytics/android/beta/Beta;Lcom/crashlytics/android/core/CrashlyticsCore;)V

    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/answers/Answers;Lcom/crashlytics/android/beta/Beta;Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .registers 6

    .line 32
    invoke-direct {p0}, Lio/fabric/sdk/android/i;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->answers:Lcom/crashlytics/android/answers/Answers;

    .line 34
    iput-object p2, p0, Lcom/crashlytics/android/Crashlytics;->beta:Lcom/crashlytics/android/beta/Beta;

    .line 35
    iput-object p3, p0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [Lio/fabric/sdk/android/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->kits:Ljava/util/Collection;

    return-void
.end method

.method private static checkInitialized()V
    .registers 2

    .line 373
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    .line 374
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/crashlytics/android/Crashlytics;
    .registers 1

    .line 190
    const-class v0, Lcom/crashlytics/android/Crashlytics;

    invoke-static {v0}, Lio/fabric/sdk/android/d;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/i;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/Crashlytics;

    return-object v0
.end method

.method public static getPinningInfoProvider()Lcom/crashlytics/android/core/PinningInfoProvider;
    .registers 1

    .line 200
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 201
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getPinningInfoProvider()Lcom/crashlytics/android/core/PinningInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 232
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 233
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsCore;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    .line 220
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 221
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .registers 2

    .line 209
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 210
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .registers 3

    .line 277
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 278
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setDouble(Ljava/lang/String;D)V
    .registers 4

    .line 286
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 287
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsCore;->setDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .registers 3

    .line 295
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 296
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .registers 3

    .line 304
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 305
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .registers 4

    .line 313
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 314
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsCore;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static setPinningInfoProvider(Lcom/crashlytics/android/core/PinningInfoProvider;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p0

    const-string v0, "Crashlytics"

    const-string v1, "Use of Crashlytics.setPinningInfoProvider is deprecated"

    invoke-interface {p0, v0, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 268
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 269
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .registers 2

    .line 259
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 260
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setUserEmail(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 241
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 242
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setUserIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .registers 2

    .line 250
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    .line 251
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setUserName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public crash()V
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->crash()V

    return-void
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDebugMode()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Use of Crashlytics.getDebugMode is deprecated."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getFabric()Lio/fabric/sdk/android/d;

    invoke-static {}, Lio/fabric/sdk/android/d;->j()Z

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public getKits()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->kits:Ljava/util/Collection;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "2.9.3.25"

    return-object v0
.end method

.method public setDebugMode(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v0, "Crashlytics"

    const-string v1, "Use of Crashlytics.setDebugMode is deprecated."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setListener(Lcom/crashlytics/android/core/CrashlyticsListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->setListener(Lcom/crashlytics/android/core/CrashlyticsListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 344
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    .line 342
    monitor-exit p0

    throw p1
.end method

.method public verifyPinning(Ljava/net/URL;)Z
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->verifyPinning(Ljava/net/URL;)Z

    move-result p1

    return p1
.end method

###### Class com.crashlytics.android.Crashlytics.Builder (com.crashlytics.android.Crashlytics$Builder)
.class public Lcom/crashlytics/android/Crashlytics$Builder;
.super Ljava/lang/Object;
.source "Crashlytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/Crashlytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private answers:Lcom/crashlytics/android/answers/Answers;

.field private beta:Lcom/crashlytics/android/beta/Beta;

.field private core:Lcom/crashlytics/android/core/CrashlyticsCore;

.field private coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .registers 2

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    if-nez v0, :cond_c

    .line 157
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    .line 159
    :cond_c
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    .line 155
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public answers(Lcom/crashlytics/android/answers/Answers;)Lcom/crashlytics/android/Crashlytics$Builder;
    .registers 3

    if-eqz p1, :cond_11

    .line 96
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    if-nez v0, :cond_9

    .line 100
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    return-object p0

    .line 97
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Answers Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Answers Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public beta(Lcom/crashlytics/android/beta/Beta;)Lcom/crashlytics/android/Crashlytics$Builder;
    .registers 3

    if-eqz p1, :cond_11

    .line 109
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    if-nez v0, :cond_9

    .line 113
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    return-object p0

    .line 110
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Beta Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Beta Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/crashlytics/android/Crashlytics;
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    if-eqz v0, :cond_19

    .line 132
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    if-nez v0, :cond_11

    .line 137
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    goto :goto_19

    .line 133
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    if-nez v0, :cond_24

    .line 141
    new-instance v0, Lcom/crashlytics/android/answers/Answers;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/Answers;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    .line 144
    :cond_24
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    if-nez v0, :cond_2f

    .line 145
    new-instance v0, Lcom/crashlytics/android/beta/Beta;

    invoke-direct {v0}, Lcom/crashlytics/android/beta/Beta;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    .line 148
    :cond_2f
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    if-nez v0, :cond_3a

    .line 149
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 152
    :cond_3a
    new-instance v0, Lcom/crashlytics/android/Crashlytics;

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;-><init>(Lcom/crashlytics/android/answers/Answers;Lcom/crashlytics/android/beta/Beta;Lcom/crashlytics/android/core/CrashlyticsCore;)V

    return-object v0
.end method

.method public core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;
    .registers 3

    if-eqz p1, :cond_11

    .line 122
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    if-nez v0, :cond_9

    .line 126
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    return-object p0

    .line 123
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CrashlyticsCore Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CrashlyticsCore Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delay(F)Lcom/crashlytics/android/Crashlytics$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics$Builder;->getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay(F)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    return-object p0
.end method

.method public disabled(Z)Lcom/crashlytics/android/Crashlytics$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics$Builder;->getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    return-object p0
.end method

.method public listener(Lcom/crashlytics/android/core/CrashlyticsListener;)Lcom/crashlytics/android/Crashlytics$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics$Builder;->getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener(Lcom/crashlytics/android/core/CrashlyticsListener;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    return-object p0
.end method

.method public pinningInfo(Lcom/crashlytics/android/core/PinningInfoProvider;)Lcom/crashlytics/android/Crashlytics$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics$Builder;->getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->pinningInfo(Lcom/crashlytics/android/core/PinningInfoProvider;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    return-object p0
.end method
