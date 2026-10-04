###### Class com.amazonaws.internal.keyvaluestore.AWSKeyValueStore (com.amazonaws.internal.keyvaluestore.AWSKeyValueStore)
.class public Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;
.super Ljava/lang/Object;
.source "AWSKeyValueStore.java"


# static fields
.field private static final A:Ljava/lang/Object;

.field static a:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final g:Ljava/lang/String; = "AES/GCM/NoPadding"

.field static final h:I = 0xc

.field static final i:I = 0x80

.field static final j:Ljava/lang/String; = "UTF-8"

.field static final k:Ljava/lang/String; = ".encrypted"

.field static final l:Ljava/lang/String; = ".iv"

.field static final m:Ljava/lang/String; = ".keyvaluestoreversion"

.field static final n:Ljava/lang/String; = ".encryptionkey"

.field static final o:Ljava/lang/String; = ".aesKeyStoreAlias"

.field static final p:Ljava/lang/String; = ".rsaKeyStoreAlias"

.field private static final q:Lcom/amazonaws/logging/Log;

.field private static final w:I = 0x17

.field private static final x:I = 0x12

.field private static final y:I = 0xa

.field private static final z:I = 0x1


# instance fields
.field private B:I

.field b:Z

.field c:Landroid/content/Context;

.field d:Landroid/content/SharedPreferences;

.field final e:Ljava/lang/String;

.field f:Landroid/content/SharedPreferences;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

.field private t:Ljava/security/Key;

.field private u:Ljava/security/SecureRandom;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->A:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_6
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->u:Ljava/security/SecureRandom;

    .line 104
    invoke-static {p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r:Ljava/util/Map;

    .line 105
    iput-object p2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    .line 106
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->B:I

    .line 107
    iput-object p1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    .line 108
    invoke-virtual {p0, p3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Z)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private a(Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    .line 341
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 342
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->t:Ljava/security/Key;

    invoke-virtual {v0, v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string p1, "UTF-8"

    .line 345
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 346
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    .line 348
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    const-string v0, "Error in encrypting data. "

    invoke-interface {p2, v0, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 355
    :try_start_0
    invoke-static {p2}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    const-string v0, "AES/GCM/NoPadding"

    .line 356
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 357
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->t:Ljava/security/Key;

    invoke-virtual {v0, v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 360
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 361
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p2

    :catch_1c
    move-exception p1

    .line 363
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    const-string v0, "Error in decrypting data. "

    invoke-interface {p2, v0, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .registers 7

    .line 299
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".encrypted"

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, ".iv"

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, ".keyvaluestoreversion"

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 306
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_4f

    .line 307
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 308
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 309
    :cond_4f
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_63

    .line 310
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 311
    :cond_63
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_7e

    .line 312
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 313
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    .line 314
    :cond_7e
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_99

    .line 315
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 316
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    .line 317
    :cond_99
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_b3

    .line 318
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 319
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    .line 320
    :cond_b3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-eqz v3, :cond_ec

    .line 321
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 324
    :cond_ca
    :goto_ca
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 325
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ca

    const-string v5, ","

    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ca

    .line 330
    :cond_e5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_ec
    :goto_ec
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_e

    :cond_fb
    return-void
.end method

.method private c()[B
    .registers 3

    const/16 v0, 0xc

    .line 381
    new-array v0, v0, [B

    .line 382
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->u:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 82
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 84
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private e(Ljava/lang/String;)[B
    .registers 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".iv"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 373
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_25
    return-object v1
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 283
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 286
    iget-boolean v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    if-eqz v1, :cond_19

    .line 287
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 288
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 225
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->A:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_93

    .line 231
    :try_start_5
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-boolean v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    if-eqz v1, :cond_91

    if-nez p2, :cond_1c

    .line 237
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    const-string v1, "Value is null. Removing the data, IV and version from SharedPreferences"

    invoke-interface {p2, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/lang/String;)V

    .line 239
    monitor-exit v0

    return-void

    .line 242
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".encrypted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_9b

    .line 245
    :try_start_2d
    invoke-direct {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c()[B

    move-result-object v1

    .line 246
    iget v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->B:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3f

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    goto :goto_44

    :cond_3f
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_44
    invoke-direct {p0, v2, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 253
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 254
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 255
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".iv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".keyvaluestoreversion"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 257
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 258
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_88} :catch_89
    .catchall {:try_start_2d .. :try_end_88} :catchall_9b

    goto :goto_91

    :catch_89
    move-exception p1

    .line 260
    :try_start_8a
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    const-string v1, "Error in encrypting data. "

    invoke-interface {p2, v1, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 263
    :cond_91
    :goto_91
    monitor-exit v0

    return-void

    .line 227
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_9b
    move-exception p1

    .line 263
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_8a .. :try_end_9d} :catchall_9b

    throw p1
.end method

.method public a(Z)V
    .registers 8

    .line 113
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-boolean v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    .line 115
    iput-boolean p1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    if-eqz p1, :cond_136

    if-nez v1, :cond_136

    .line 118
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 120
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".encryptionkey"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->f:Landroid/content/SharedPreferences;

    .line 124
    sget-object v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected Android API Level = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->B:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 126
    iget v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->B:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_93

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".aesKeyStoreAlias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->v:Ljava/lang/String;

    .line 129
    sget-object v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using keyAlias = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 130
    new-instance v2, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;

    invoke-direct {v2}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->s:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 131
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->s:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->f:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    invoke-interface {v2, v3, v4, v5}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->t:Ljava/security/Key;

    goto/16 :goto_11a

    .line 133
    :cond_93
    iget v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->B:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_dc

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rsaKeyStoreAlias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->v:Ljava/lang/String;

    .line 136
    sget-object v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using keyAlias = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 137
    new-instance v2, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;

    invoke-direct {v2}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->s:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 138
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->s:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->f:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    invoke-interface {v2, v3, v4, v5}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->t:Ljava/security/Key;

    goto :goto_11a

    .line 140
    :cond_dc
    iget v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->B:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_f7

    .line 142
    new-instance v2, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;

    invoke-direct {v2}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->s:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 143
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->s:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->f:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    invoke-interface {v2, v3, v4, v5}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->t:Ljava/security/Key;

    goto :goto_11a

    .line 146
    :cond_f7
    sget-object v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "API Level "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not supported by the SDK. Setting persistence to false."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 150
    iput-boolean v4, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    .line 153
    :goto_11a
    sget-object v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating the AWSKeyValueStore with key for sharedPreferences = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 156
    invoke-direct {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b()V

    goto :goto_13f

    :cond_136
    if-nez p1, :cond_13f

    .line 158
    sget-object v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    const-string v3, "Persistence is disabled. Data will be accessed from memory."

    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    :cond_13f
    :goto_13f
    if-nez p1, :cond_150

    if-eqz v1, :cond_150

    .line 164
    iget-object p1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 165
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 166
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    :cond_150
    monitor-exit v0

    return-void

    :catchall_152
    move-exception p1

    monitor-exit v0
    :try_end_154
    .catchall {:try_start_3 .. :try_end_154} :catchall_152

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    .line 172
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-boolean v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    if-eqz v1, :cond_20

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".encrypted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 177
    :cond_20
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_28
    move-exception p1

    .line 179
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 183
    :try_start_1
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->A:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a3

    .line 184
    :try_start_4
    iget-boolean v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    if-eqz v1, :cond_95

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".encrypted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_25

    .line 189
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_a0

    monitor-exit p0

    return-object v3

    .line 195
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".keyvaluestoreversion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_61

    .line 199
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The version of the data read from SharedPreferences for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match the version of the store."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5e} :catch_8a
    .catchall {:try_start_25 .. :try_end_5e} :catchall_a0

    .line 201
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_a0

    monitor-exit p0

    return-object v3

    .line 205
    :cond_61
    :try_start_61
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-direct {p0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)[B

    move-result-object v1

    .line 207
    iget v4, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->B:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_79

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    goto :goto_7e

    :cond_79
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_7e
    invoke-direct {p0, v4, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_87} :catch_8a
    .catchall {:try_start_61 .. :try_end_87} :catchall_a0

    .line 213
    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_a0

    monitor-exit p0

    return-object v1

    :catch_8a
    move-exception p1

    .line 215
    :try_start_8b
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q:Lcom/amazonaws/logging/Log;

    const-string v2, "Error in decrypting data. "

    invoke-interface {v1, v2, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 216
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_a0

    monitor-exit p0

    return-object v3

    .line 219
    :cond_95
    :try_start_95
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_a0

    monitor-exit p0

    return-object p1

    :catchall_a0
    move-exception p1

    .line 221
    :try_start_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw p1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p1

    .line 182
    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    .line 267
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-boolean v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    if-eqz v1, :cond_54

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".encrypted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 274
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".iv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".keyvaluestoreversion"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 277
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    :cond_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw p1
.end method
