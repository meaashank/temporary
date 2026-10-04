###### Class bolts.AppLinkNavigation (bolts.AppLinkNavigation)
.class public Lbolts/AppLinkNavigation;
.super Ljava/lang/Object;
.source "AppLinkNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AppLinkNavigation$NavigationResult;
    }
.end annotation


# static fields
.field private static final KEY_NAME_REFERER_APP_LINK:Ljava/lang/String; = "referer_app_link"

.field private static final KEY_NAME_REFERER_APP_LINK_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_NAME_REFERER_APP_LINK_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_NAME_USER_AGENT:Ljava/lang/String; = "user_agent"

.field private static final KEY_NAME_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static defaultResolver:Lbolts/AppLinkResolver;


# instance fields
.field private final appLink:Lbolts/AppLink;

.field private final appLinkData:Landroid/os/Bundle;

.field private final extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lbolts/AppLink;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1a

    if-nez p2, :cond_c

    .line 95
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_c
    if-nez p3, :cond_13

    .line 98
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 100
    :cond_13
    iput-object p1, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    .line 101
    iput-object p2, p0, Lbolts/AppLinkNavigation;->extras:Landroid/os/Bundle;

    .line 102
    iput-object p3, p0, Lbolts/AppLinkNavigation;->appLinkData:Landroid/os/Bundle;

    return-void

    .line 92
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appLink must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildAppLinkDataForNavigation(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 6

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2a

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    const-string v3, "package"

    .line 143
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 147
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    const-string v2, "app_name"

    .line 149
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2a
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLinkData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "target_url"

    .line 154
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    move-result-object v2

    invoke-virtual {v2}, Lbolts/AppLink;->getSourceUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    const-string v2, "1.0"

    .line 155
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "user_agent"

    const-string v2, "Bolts Android 1.4.0"

    .line 156
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "referer_app_link"

    .line 157
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "extras"

    .line 158
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getDefaultResolver()Lbolts/AppLinkResolver;
    .registers 1

    .line 359
    sget-object v0, Lbolts/AppLinkNavigation;->defaultResolver:Lbolts/AppLinkResolver;

    return-object v0
.end method

.method private getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 6

    .line 255
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 256
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method private getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 166
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 167
    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lbolts/AppLinkNavigation;->getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 168
    :cond_b
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :cond_14
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_36

    .line 171
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 172
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 173
    invoke-direct {p0, v1}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_23

    :cond_35
    return-object v0

    .line 176
    :cond_36
    instance-of v0, p1, Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    .line 177
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 178
    check-cast p1, Landroid/util/SparseArray;

    .line 179
    :goto_42
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 180
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_5a
    return-object v0

    .line 183
    :cond_5b
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_64

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :cond_64
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_69

    return-object p1

    .line 187
    :cond_69
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_8c

    .line 188
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_81

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_76

    goto :goto_81

    .line 191
    :cond_76
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 189
    :cond_81
    :goto_81
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 193
    :cond_8c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_ab

    .line 194
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 195
    check-cast p1, [Z

    array-length v2, p1

    :goto_98
    if-ge v1, v2, :cond_aa

    aget-boolean v3, p1, v1

    .line 196
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    :cond_aa
    return-object v0

    .line 199
    :cond_ab
    instance-of v0, p1, [C

    if-eqz v0, :cond_ca

    .line 200
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 201
    check-cast p1, [C

    array-length v2, p1

    :goto_b7
    if-ge v1, v2, :cond_c9

    aget-char v3, p1, v1

    .line 202
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    :cond_c9
    return-object v0

    .line 205
    :cond_ca
    instance-of v0, p1, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_e5

    .line 206
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 207
    check-cast p1, [Ljava/lang/CharSequence;

    array-length v2, p1

    :goto_d6
    if-ge v1, v2, :cond_e4

    aget-object v3, p1, v1

    .line 208
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    :cond_e4
    return-object v0

    .line 211
    :cond_e5
    instance-of v0, p1, [D

    if-eqz v0, :cond_104

    .line 212
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 213
    check-cast p1, [D

    array-length v2, p1

    :goto_f1
    if-ge v1, v2, :cond_103

    aget-wide v3, p1, v1

    .line 214
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f1

    :cond_103
    return-object v0

    .line 217
    :cond_104
    instance-of v0, p1, [F

    if-eqz v0, :cond_123

    .line 218
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 219
    check-cast p1, [F

    array-length v2, p1

    :goto_110
    if-ge v1, v2, :cond_122

    aget v3, p1, v1

    .line 220
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_110

    :cond_122
    return-object v0

    .line 223
    :cond_123
    instance-of v0, p1, [I

    if-eqz v0, :cond_142

    .line 224
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 225
    check-cast p1, [I

    array-length v2, p1

    :goto_12f
    if-ge v1, v2, :cond_141

    aget v3, p1, v1

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12f

    :cond_141
    return-object v0

    .line 229
    :cond_142
    instance-of v0, p1, [J

    if-eqz v0, :cond_161

    .line 230
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 231
    check-cast p1, [J

    array-length v2, p1

    :goto_14e
    if-ge v1, v2, :cond_160

    aget-wide v3, p1, v1

    .line 232
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14e

    :cond_160
    return-object v0

    .line 235
    :cond_161
    instance-of v0, p1, [S

    if-eqz v0, :cond_180

    .line 236
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 237
    check-cast p1, [S

    array-length v2, p1

    :goto_16d
    if-ge v1, v2, :cond_17f

    aget-short v3, p1, v1

    .line 238
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16d

    :cond_17f
    return-object v0

    .line 241
    :cond_180
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_19b

    .line 242
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 243
    check-cast p1, [Ljava/lang/String;

    array-length v2, p1

    :goto_18c
    if-ge v1, v2, :cond_19a

    aget-object v3, p1, v1

    .line 244
    :try_start_190
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_194
    .catch Ljava/lang/Throwable; {:try_start_190 .. :try_end_194} :catch_19d

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18c

    :cond_19a
    return-object v0

    :cond_19b
    const/4 p1, 0x0

    return-object p1

    :catch_19d
    move-exception p1

    throw p1
.end method

.method private static getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;
    .registers 2

    .line 363
    invoke-static {}, Lbolts/AppLinkNavigation;->getDefaultResolver()Lbolts/AppLinkResolver;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 364
    invoke-static {}, Lbolts/AppLinkNavigation;->getDefaultResolver()Lbolts/AppLinkResolver;

    move-result-object p0

    return-object p0

    .line 366
    :cond_b
    new-instance v0, Lbolts/WebViewAppLinkResolver;

    invoke-direct {v0, p0}, Lbolts/WebViewAppLinkResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static navigate(Landroid/content/Context;Lbolts/AppLink;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 4

    .line 377
    new-instance v0, Lbolts/AppLinkNavigation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lbolts/AppLinkNavigation;-><init>(Lbolts/AppLink;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lbolts/AppLinkNavigation;->navigate(Landroid/content/Context;)Lbolts/AppLinkNavigation$NavigationResult;

    move-result-object p0

    return-object p0
.end method

.method public static navigateInBackground(Landroid/content/Context;Landroid/net/Uri;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .line 441
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .line 392
    invoke-interface {p2, p1}, Lbolts/AppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lbolts/AppLinkNavigation$1;

    invoke-direct {p2, p0}, Lbolts/AppLinkNavigation$1;-><init>(Landroid/content/Context;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p0}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/lang/String;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .line 471
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Ljava/lang/String;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/lang/String;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/net/URL;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .line 456
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Ljava/net/URL;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/net/URL;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private sendAppLinkNavigateEventBroadcast(Landroid/content/Context;Landroid/content/Intent;Lbolts/AppLinkNavigation$NavigationResult;Lorg/json/JSONException;)V
    .registers 7

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_10

    const-string v1, "error"

    .line 327
    invoke-virtual {p4}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string p4, "success"

    .line 330
    invoke-virtual {p3}, Lbolts/AppLinkNavigation$NavigationResult;->isSucceeded()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "1"

    goto :goto_1d

    :cond_1b
    const-string v1, "0"

    :goto_1d
    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "type"

    .line 331
    invoke-virtual {p3}, Lbolts/AppLinkNavigation$NavigationResult;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "al_nav_out"

    .line 333
    invoke-static {p1, p3, p2, v0}, Lbolts/MeasurementEvent;->sendBroadcastEvent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/util/Map;)V

    return-void
.end method

.method public static setDefaultResolver(Lbolts/AppLinkResolver;)V
    .registers 1

    .line 348
    sput-object p0, Lbolts/AppLinkNavigation;->defaultResolver:Lbolts/AppLinkResolver;

    return-void
.end method


# virtual methods
.method public getAppLink()Lbolts/AppLink;
    .registers 2

    .line 109
    iget-object v0, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    return-object v0
.end method

.method public getAppLinkData()Landroid/os/Bundle;
    .registers 2

    .line 120
    iget-object v0, p0, Lbolts/AppLinkNavigation;->appLinkData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 131
    iget-object v0, p0, Lbolts/AppLinkNavigation;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public navigate(Landroid/content/Context;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 9

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 270
    invoke-direct {p0, p1}, Lbolts/AppLinkNavigation;->buildAppLinkDataForNavigation(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    move-result-object v2

    invoke-virtual {v2}, Lbolts/AppLink;->getTargets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbolts/AppLink$Target;

    .line 274
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3}, Lbolts/AppLink$Target;->getUrl()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_36

    .line 276
    invoke-virtual {v3}, Lbolts/AppLink$Target;->getUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3f

    .line 278
    :cond_36
    iget-object v6, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    invoke-virtual {v6}, Lbolts/AppLink;->getSourceUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 280
    :goto_3f
    invoke-virtual {v3}, Lbolts/AppLink$Target;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v3}, Lbolts/AppLink$Target;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    .line 282
    invoke-virtual {v3}, Lbolts/AppLink$Target;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lbolts/AppLink$Target;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_57
    const-string v3, "al_applink_data"

    .line 284
    invoke-virtual {v5, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    .line 286
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_14

    goto :goto_66

    :cond_65
    move-object v5, v4

    .line 294
    :goto_66
    sget-object v0, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    if-eqz v5, :cond_6e

    .line 297
    sget-object v0, Lbolts/AppLinkNavigation$NavigationResult;->APP:Lbolts/AppLinkNavigation$NavigationResult;

    move-object v1, v5

    goto :goto_a5

    .line 300
    :cond_6e
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    move-result-object v2

    invoke-virtual {v2}, Lbolts/AppLink;->getWebUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 304
    :try_start_78
    invoke-direct {p0, v1}, Lbolts/AppLinkNavigation;->getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_7c} :catch_98

    .line 309
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "al_applink_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 312
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    sget-object v0, Lbolts/AppLinkNavigation$NavigationResult;->WEB:Lbolts/AppLinkNavigation$NavigationResult;

    goto :goto_a5

    :catch_98
    move-exception v0

    .line 306
    sget-object v1, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    invoke-direct {p0, p1, v5, v1, v0}, Lbolts/AppLinkNavigation;->sendAppLinkNavigateEventBroadcast(Landroid/content/Context;Landroid/content/Intent;Lbolts/AppLinkNavigation$NavigationResult;Lorg/json/JSONException;)V

    .line 307
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_a4
    move-object v1, v4

    .line 317
    :goto_a5
    invoke-direct {p0, p1, v1, v0, v4}, Lbolts/AppLinkNavigation;->sendAppLinkNavigateEventBroadcast(Landroid/content/Context;Landroid/content/Intent;Lbolts/AppLinkNavigation$NavigationResult;Lorg/json/JSONException;)V

    if-eqz v1, :cond_ad

    .line 319
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_ad
    return-object v0
.end method

###### Class bolts.AppLinkNavigation.AnonymousClass1 (bolts.AppLinkNavigation$1)
.class final Lbolts/AppLinkNavigation$1;
.super Ljava/lang/Object;
.source "AppLinkNavigation.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lbolts/AppLink;",
        "Lbolts/AppLinkNavigation$NavigationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lbolts/AppLinkNavigation$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lbolts/AppLink;",
            ">;)",
            "Lbolts/AppLinkNavigation$NavigationResult;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lbolts/AppLinkNavigation$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbolts/AppLink;

    invoke-static {v0, p1}, Lbolts/AppLinkNavigation;->navigate(Landroid/content/Context;Lbolts/AppLink;)Lbolts/AppLinkNavigation$NavigationResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 2

    .line 393
    invoke-virtual {p0, p1}, Lbolts/AppLinkNavigation$1;->then(Lbolts/Task;)Lbolts/AppLinkNavigation$NavigationResult;

    move-result-object p1

    return-object p1
.end method

###### Class bolts.AppLinkNavigation.NavigationResult (bolts.AppLinkNavigation$NavigationResult)
.class public final enum Lbolts/AppLinkNavigation$NavigationResult;
.super Ljava/lang/Enum;
.source "AppLinkNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/AppLinkNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbolts/AppLinkNavigation$NavigationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbolts/AppLinkNavigation$NavigationResult;

.field public static final enum APP:Lbolts/AppLinkNavigation$NavigationResult;

.field public static final enum FAILED:Lbolts/AppLinkNavigation$NavigationResult;

.field public static final enum WEB:Lbolts/AppLinkNavigation$NavigationResult;


# instance fields
.field private code:Ljava/lang/String;

.field private succeeded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 55
    new-instance v0, Lbolts/AppLinkNavigation$NavigationResult;

    const-string v1, "FAILED"

    const-string v2, "failed"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lbolts/AppLinkNavigation$NavigationResult;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    .line 59
    new-instance v0, Lbolts/AppLinkNavigation$NavigationResult;

    const-string v1, "WEB"

    const-string v2, "web"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lbolts/AppLinkNavigation$NavigationResult;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lbolts/AppLinkNavigation$NavigationResult;->WEB:Lbolts/AppLinkNavigation$NavigationResult;

    .line 63
    new-instance v0, Lbolts/AppLinkNavigation$NavigationResult;

    const-string v1, "APP"

    const-string v2, "app"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lbolts/AppLinkNavigation$NavigationResult;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lbolts/AppLinkNavigation$NavigationResult;->APP:Lbolts/AppLinkNavigation$NavigationResult;

    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [Lbolts/AppLinkNavigation$NavigationResult;

    sget-object v1, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    aput-object v1, v0, v3

    sget-object v1, Lbolts/AppLinkNavigation$NavigationResult;->WEB:Lbolts/AppLinkNavigation$NavigationResult;

    aput-object v1, v0, v4

    sget-object v1, Lbolts/AppLinkNavigation$NavigationResult;->APP:Lbolts/AppLinkNavigation$NavigationResult;

    aput-object v1, v0, v5

    sput-object v0, Lbolts/AppLinkNavigation$NavigationResult;->$VALUES:[Lbolts/AppLinkNavigation$NavigationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lbolts/AppLinkNavigation$NavigationResult;->code:Ljava/lang/String;

    .line 75
    iput-boolean p4, p0, Lbolts/AppLinkNavigation$NavigationResult;->succeeded:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 2

    .line 51
    const-class v0, Lbolts/AppLinkNavigation$NavigationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbolts/AppLinkNavigation$NavigationResult;

    return-object p0
.end method

.method public static values()[Lbolts/AppLinkNavigation$NavigationResult;
    .registers 1

    .line 51
    sget-object v0, Lbolts/AppLinkNavigation$NavigationResult;->$VALUES:[Lbolts/AppLinkNavigation$NavigationResult;

    invoke-virtual {v0}, [Lbolts/AppLinkNavigation$NavigationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbolts/AppLinkNavigation$NavigationResult;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lbolts/AppLinkNavigation$NavigationResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public isSucceeded()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lbolts/AppLinkNavigation$NavigationResult;->succeeded:Z

    return v0
.end method
