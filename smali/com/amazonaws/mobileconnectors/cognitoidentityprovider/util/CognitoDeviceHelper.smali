###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper (com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper)
.class public final Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;
.super Ljava/lang/Object;
.source "CognitoDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;
    }
.end annotation


# static fields
.field public static final a:I = 0xa

.field static b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP; = null

.field static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/amazonaws/logging/Log;

.field private static final e:Ljava/lang/String; = "CognitoIdentityProviderDeviceCache"

.field private static final f:Ljava/lang/String; = "DeviceKey"

.field private static final g:Ljava/lang/String; = "DeviceGroupKey"

.field private static final h:Ljava/lang/String; = "DeviceSecret"

.field private static final i:Ljava/lang/Object;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Ljava/util/Map;

    const/4 v0, 0x1

    .line 66
    sput-boolean v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;
    .registers 5

    .line 97
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-static {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    sget-object p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 101
    sget-object p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_29
    .catchall {:try_start_3 .. :try_end_17} :catchall_27

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_27

    return-object p0

    .line 103
    :cond_19
    :try_start_19
    new-instance p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-boolean v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->j:Z

    invoke-direct {p2, p0, p1, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    sget-object p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_29
    .catchall {:try_start_19 .. :try_end_25} :catchall_27

    .line 107
    :try_start_25
    monitor-exit v0

    return-object p2

    :catchall_27
    move-exception p0

    goto :goto_34

    :catch_29
    move-exception p0

    .line 110
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Error in retrieving the persistent store."

    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 111
    monitor-exit v0

    return-object p0

    .line 113
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_27

    throw p0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 123
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 137
    :try_start_0
    invoke-static {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object p0

    if-eqz p0, :cond_1d

    const-string p1, "DeviceKey"

    .line 138
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "DeviceKey"

    .line 139
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 142
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Error accessing SharedPreferences"

    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b()Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    invoke-direct {v2, p1, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    .line 273
    sget-object p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 274
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const-string v2, "salt"

    .line 275
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "verifier"

    .line 276
    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "secret"

    .line 277
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 203
    :try_start_0
    invoke-static {p3, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object p0

    const-string p1, "DeviceKey"

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    .line 206
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Error accessing SharedPreferences"

    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.method public static a(Z)V
    .registers 5

    .line 73
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    sput-boolean p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->j:Z

    .line 76
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    sget-object v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 78
    invoke-virtual {v2, p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_29
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_f

    :catchall_27
    move-exception p0

    goto :goto_33

    :catch_29
    move-exception p0

    .line 81
    :try_start_2a
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string v2, "Error in setting the isPersistenceEnabled flag in the key-value store."

    invoke-interface {v1, v2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    :cond_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    throw p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 496
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 497
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CognitoIdentityProviderDeviceCache."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 158
    :try_start_0
    invoke-static {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object p0

    if-eqz p0, :cond_1d

    const-string p1, "DeviceSecret"

    .line 159
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "DeviceSecret"

    .line 160
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 163
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Error accessing SharedPreferences"

    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 221
    :try_start_0
    invoke-static {p3, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object p0

    const-string p1, "DeviceSecret"

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    .line 224
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Error accessing SharedPreferences"

    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 179
    :try_start_0
    invoke-static {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object p0

    if-eqz p0, :cond_1d

    const-string p1, "DeviceGroupKey"

    .line 180
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "DeviceGroupKey"

    .line 181
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 184
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Error accessing SharedPreferences"

    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 239
    :try_start_0
    invoke-static {p3, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object p0

    const-string p1, "DeviceGroupKey"

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    .line 242
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Error accessing SharedPreferences"

    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .line 255
    :try_start_0
    invoke-static {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    .line 258
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Error accessing SharedPreferences"

    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper.deviceSRP (com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper$deviceSRP)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;
.super Ljava/lang/Object;
.source "CognitoDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "deviceSRP"
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "SHA-256"

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/String; = "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

.field private static final f:Ljava/math/BigInteger;

.field private static final g:Ljava/math/BigInteger;

.field private static final h:Ljava/security/SecureRandom;

.field private static final i:I = 0x80


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 301
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP$1;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP$1;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    .line 330
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->f:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 331
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->g:Ljava/math/BigInteger;

    :try_start_1a
    const-string v0, "SHA1PRNG"

    .line 337
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->h:Ljava/security/SecureRandom;
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    .line 339
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 369
    new-instance p2, Ljava/math/BigInteger;

    sget-object p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->h:Ljava/security/SecureRandom;

    const/16 v0, 0x80

    invoke-direct {p2, v0, p3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a:Ljava/math/BigInteger;

    .line 370
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a:Ljava/math/BigInteger;

    invoke-static {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->b:Ljava/math/BigInteger;

    return-void
.end method

.method private static a(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .registers 3

    .line 380
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c()V

    .line 381
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a(Ljava/math/BigInteger;)V

    .line 382
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a([B)V

    .line 383
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d()[B

    move-result-object p0

    .line 385
    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 386
    sget-object p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->g:Ljava/math/BigInteger;

    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->f:Ljava/math/BigInteger;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .line 437
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    if-eqz p0, :cond_13

    .line 439
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    :cond_13
    return-void
.end method

.method public static a(Ljava/math/BigInteger;)V
    .registers 2

    .line 461
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    if-eqz p0, :cond_11

    .line 463
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    :cond_11
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 472
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    if-eqz p0, :cond_11

    .line 474
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    :cond_11
    return-void
.end method

.method public static a([B)V
    .registers 2

    .line 483
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    if-eqz p0, :cond_d

    .line 485
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    :cond_d
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)V
    .registers 6

    .line 424
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 425
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1c

    aget-object v3, p0, v2

    if-eqz v3, :cond_19

    .line 427
    sget-object v4, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public static varargs a([Ljava/math/BigInteger;)V
    .registers 5

    .line 448
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 449
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    if-eqz v3, :cond_17

    .line 451
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    .line 397
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c()V

    const/4 v0, 0x4

    .line 398
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, ":"

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p3, v0, p1

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a([Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d()[B

    move-result-object p1

    return-object p1
.end method

.method public static c()V
    .registers 1

    .line 406
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 407
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public static d()[B
    .registers 1

    .line 415
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 416
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public b()Ljava/math/BigInteger;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->b:Ljava/math/BigInteger;

    return-object v0
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper.deviceSRP.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper$deviceSRP$1)
.class final Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP$1;
.super Ljava/lang/ThreadLocal;
.source "CognitoDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/security/MessageDigest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/security/MessageDigest;
    .registers 3

    :try_start_0
    const-string v0, "SHA-256"

    .line 306
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP$1;->a()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method
