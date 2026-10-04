###### Class com.facebook.AccessTokenCache (com.facebook.AccessTokenCache)
.class Lcom/facebook/AccessTokenCache;
.super Ljava/lang/Object;
.source "AccessTokenCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;
    }
.end annotation


# static fields
.field static final CACHED_ACCESS_TOKEN_KEY:Ljava/lang/String; = "com.facebook.AccessTokenManager.CachedAccessToken"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

.field private final tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 48
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    invoke-direct {v1}, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;-><init>()V

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/facebook/AccessTokenCache;-><init>(Landroid/content/SharedPreferences;Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    iput-object p2, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    return-void
.end method

.method private getCachedAccessToken()Lcom/facebook/AccessToken;
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 101
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {v1}, Lcom/facebook/AccessToken;->createFromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;

    move-result-object v0
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    return-object v2

    :cond_16
    return-object v2
.end method

.method private getLegacyAccessToken()Lcom/facebook/AccessToken;
    .registers 3

    .line 116
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/LegacyTokenHelper;->load()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 118
    invoke-static {v0}, Lcom/facebook/LegacyTokenHelper;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 119
    invoke-static {v0}, Lcom/facebook/AccessToken;->createFromLegacyCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method private getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

    if-nez v0, :cond_16

    .line 126
    monitor-enter p0

    .line 127
    :try_start_5
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

    if-nez v0, :cond_11

    .line 128
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;->create()Lcom/facebook/LegacyTokenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

    .line 130
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 132
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

    return-object v0
.end method

.method private hasCachedAccessToken()Z
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldCheckLegacyToken()Z
    .registers 2

    .line 111
    invoke-static {}, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->shouldCheckLegacyToken()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 89
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/LegacyTokenHelper;->clear()V

    :cond_1c
    return-void
.end method

.method public load()Lcom/facebook/AccessToken;
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->hasCachedAccessToken()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getCachedAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    goto :goto_23

    .line 61
    :cond_b
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->shouldCheckLegacyToken()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 62
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getLegacyAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 65
    invoke-virtual {p0, v0}, Lcom/facebook/AccessTokenCache;->save(Lcom/facebook/AccessToken;)V

    .line 66
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/LegacyTokenHelper;->clear()V

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :cond_23
    :goto_23
    return-object v0
.end method

.method public save(Lcom/facebook/AccessToken;)V
    .registers 4

    const-string v0, "accessToken"

    .line 74
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    :try_start_5
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

###### Class com.facebook.AccessTokenCache.SharedPreferencesTokenCachingStrategyFactory (com.facebook.AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory)
.class Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;
.super Ljava/lang/Object;
.source "AccessTokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedPreferencesTokenCachingStrategyFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/LegacyTokenHelper;
    .registers 3

    .line 137
    new-instance v0, Lcom/facebook/LegacyTokenHelper;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
