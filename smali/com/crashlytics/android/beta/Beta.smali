###### Class com.crashlytics.android.beta.Beta (com.crashlytics.android.beta.Beta)
.class public Lcom/crashlytics/android/beta/Beta;
.super Lio/fabric/sdk/android/i;
.source "Beta.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/i<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/fabric/sdk/android/services/common/k;"
    }
.end annotation


# static fields
.field private static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"

.field private static final CRASHLYTICS_BUILD_PROPERTIES:Ljava/lang/String; = "crashlytics-build.properties"

.field static final NO_DEVICE_TOKEN:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "Beta"


# instance fields
.field private final deviceTokenCache:Lio/fabric/sdk/android/services/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;

.field private updatesController:Lcom/crashlytics/android/beta/UpdatesController;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lio/fabric/sdk/android/i;-><init>()V

    .line 39
    new-instance v0, Lio/fabric/sdk/android/services/a/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/a/b;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenCache:Lio/fabric/sdk/android/services/a/b;

    .line 40
    new-instance v0, Lcom/crashlytics/android/beta/DeviceTokenLoader;

    invoke-direct {v0}, Lcom/crashlytics/android/beta/DeviceTokenLoader;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;

    return-void
.end method

.method private getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 p2, 0x0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenCache:Lio/fabric/sdk/android/services/a/b;

    iget-object v1, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;

    invoke-virtual {v0, p1, v1}, Lio/fabric/sdk/android/services/a/b;->a(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ""

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16

    if-eqz v0, :cond_14

    goto :goto_22

    :cond_14
    move-object p2, p1

    goto :goto_22

    :catch_16
    move-exception p1

    .line 151
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Failed to load the Beta device token"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :goto_22
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v0, "Beta"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beta device token present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private getBetaSettingsData()Lio/fabric/sdk/android/services/settings/g;
    .registers 2

    .line 160
    invoke-static {}, Lio/fabric/sdk/android/services/settings/r;->a()Lio/fabric/sdk/android/services/settings/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/r;->c()Lio/fabric/sdk/android/services/settings/t;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 163
    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/t;->f:Lio/fabric/sdk/android/services/settings/g;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/crashlytics/android/beta/Beta;
    .registers 1

    .line 47
    const-class v0, Lcom/crashlytics/android/beta/Beta;

    invoke-static {v0}, Lio/fabric/sdk/android/d;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/i;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/beta/Beta;

    return-object v0
.end method

.method private loadBuildProperties(Landroid/content/Context;)Lcom/crashlytics/android/beta/BuildProperties;
    .registers 8

    const/4 v0, 0x0

    .line 174
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "crashlytics-build.properties"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_67
    .catchall {:try_start_1 .. :try_end_b} :catchall_62

    if-eqz p1, :cond_4f

    .line 177
    :try_start_d
    invoke-static {p1}, Lcom/crashlytics/android/beta/BuildProperties;->fromPropertiesStream(Ljava/io/InputStream;)Lcom/crashlytics/android/beta/BuildProperties;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_4a
    .catchall {:try_start_d .. :try_end_11} :catchall_8a

    .line 179
    :try_start_11
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "Beta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/crashlytics/android/beta/BuildProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " build properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/crashlytics/android/beta/BuildProperties;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/crashlytics/android/beta/BuildProperties;->versionCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/crashlytics/android/beta/BuildProperties;->buildId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_48
    .catchall {:try_start_11 .. :try_end_46} :catchall_8a

    move-object v0, v1

    goto :goto_4f

    :catch_48
    move-exception v0

    goto :goto_6b

    :catch_4a
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6b

    :cond_4f
    :goto_4f
    if-eqz p1, :cond_89

    .line 188
    :try_start_51
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_89

    :catch_55
    move-exception p1

    .line 190
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Beta"

    const-string v3, "Error closing Beta build properties asset"

    invoke-interface {v1, v2, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_89

    :catchall_62
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_8b

    :catch_67
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 184
    :goto_6b
    :try_start_6b
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error reading Beta build properties"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_8a

    if-eqz p1, :cond_88

    .line 188
    :try_start_78
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_88

    :catch_7c
    move-exception p1

    .line 190
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "Beta"

    const-string v3, "Error closing Beta build properties asset"

    invoke-interface {v0, v2, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_88
    :goto_88
    move-object v0, v1

    :cond_89
    :goto_89
    return-object v0

    :catchall_8a
    move-exception v0

    :goto_8b
    if-eqz p1, :cond_9d

    .line 188
    :try_start_8d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_9d

    :catch_91
    move-exception p1

    .line 190
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Beta"

    const-string v3, "Error closing Beta build properties asset"

    invoke-interface {v1, v2, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_9d
    :goto_9d
    throw v0
.end method


# virtual methods
.method canCheckForUpdates(Lio/fabric/sdk/android/services/settings/g;Lcom/crashlytics/android/beta/BuildProperties;)Z
    .registers 3

    if-eqz p1, :cond_e

    .line 139
    iget-object p1, p1, Lio/fabric/sdk/android/services/settings/g;->a:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    if-eqz p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method createUpdatesController(ILandroid/app/Application;)Lcom/crashlytics/android/beta/UpdatesController;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 p2, 0xe

    if-lt p1, p2, :cond_1a

    .line 104
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getFabric()Lio/fabric/sdk/android/d;

    move-result-object p1

    invoke-virtual {p1}, Lio/fabric/sdk/android/d;->e()Lio/fabric/sdk/android/a;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getFabric()Lio/fabric/sdk/android/d;

    move-result-object p2

    invoke-virtual {p2}, Lio/fabric/sdk/android/d;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 106
    new-instance v0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;-><init>(Lio/fabric/sdk/android/a;Ljava/util/concurrent/ExecutorService;)V

    return-object v0

    .line 109
    :cond_1a
    new-instance p1, Lcom/crashlytics/android/beta/ImmediateCheckForUpdatesController;

    invoke-direct {p1}, Lcom/crashlytics/android/beta/ImmediateCheckForUpdatesController;-><init>()V

    return-object p1
.end method

.method protected doInBackground()Ljava/lang/Boolean;
    .registers 13

    .line 62
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta kit initializing..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 65
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v6

    .line 66
    invoke-virtual {v6}, Lio/fabric/sdk/android/services/common/IdManager;->i()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-direct {p0, v4, v0}, Lcom/crashlytics/android/beta/Beta;->getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 70
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "A Beta device token was not found for this app"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 74
    :cond_32
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta device token is present, checking for app updates."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/crashlytics/android/beta/Beta;->getBetaSettingsData()Lio/fabric/sdk/android/services/settings/g;

    move-result-object v7

    .line 77
    invoke-direct {p0, v4}, Lcom/crashlytics/android/beta/Beta;->loadBuildProperties(Landroid/content/Context;)Lcom/crashlytics/android/beta/BuildProperties;

    move-result-object v8

    .line 79
    invoke-virtual {p0, v7, v8}, Lcom/crashlytics/android/beta/Beta;->canCheckForUpdates(Lio/fabric/sdk/android/services/settings/g;Lcom/crashlytics/android/beta/BuildProperties;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 80
    iget-object v3, p0, Lcom/crashlytics/android/beta/Beta;->updatesController:Lcom/crashlytics/android/beta/UpdatesController;

    new-instance v9, Lio/fabric/sdk/android/services/c/e;

    invoke-direct {v9, p0}, Lio/fabric/sdk/android/services/c/e;-><init>(Lio/fabric/sdk/android/i;)V

    new-instance v10, Lio/fabric/sdk/android/services/common/r;

    invoke-direct {v10}, Lio/fabric/sdk/android/services/common/r;-><init>()V

    new-instance v11, Lio/fabric/sdk/android/services/network/b;

    .line 88
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-direct {v11, v0}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/l;)V

    move-object v5, p0

    .line 80
    invoke-interface/range {v3 .. v11}, Lcom/crashlytics/android/beta/UpdatesController;->initialize(Landroid/content/Context;Lcom/crashlytics/android/beta/Beta;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/g;Lcom/crashlytics/android/beta/BuildProperties;Lio/fabric/sdk/android/services/c/d;Lio/fabric/sdk/android/services/common/j;Lio/fabric/sdk/android/services/network/c;)V

    :cond_64
    const/4 v0, 0x1

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdentifiers()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->i()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/beta/Beta;->getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 122
    sget-object v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .registers 3

    .line 199
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.2.8.25"

    return-object v0
.end method

.method protected onPreExecute()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/beta/Beta;->createUpdatesController(ILandroid/app/Application;)Lcom/crashlytics/android/beta/UpdatesController;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/beta/Beta;->updatesController:Lcom/crashlytics/android/beta/UpdatesController;

    const/4 v0, 0x1

    return v0
.end method
