###### Class com.amazonaws.internal.keyvaluestore.KeyProvider23 (com.amazonaws.internal.keyvaluestore.KeyProvider23)
.class Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;
.super Ljava/lang/Object;
.source "KeyProvider23.java"

# interfaces
.implements Lcom/amazonaws/internal/keyvaluestore/KeyProvider;


# static fields
.field static final a:Ljava/lang/String; = "AES"

.field static final b:I = 0x100

.field static final c:Ljava/lang/String; = "AndroidKeyStore"

.field private static final d:Lcom/amazonaws/logging/Log;

.field private static final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;->d:Lcom/amazonaws/logging/Log;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;->e:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;
    .registers 8

    .line 39
    sget-object p1, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    const-string p3, "AndroidKeyStore"

    .line 41
    invoke-static {p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p3

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p3, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 46
    invoke-virtual {p3, p2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string p3, "AES"

    const-string v0, "AndroidKeyStore"

    .line 47
    invoke-static {p3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p3

    .line 50
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/String;

    const-string v2, "GCM"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 53
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "NoPadding"

    aput-object v1, p2, v3

    .line 54
    invoke-virtual {v0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const/16 v0, 0x100

    .line 55
    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 56
    invoke-virtual {p2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    .line 50
    invoke-virtual {p3, p2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    invoke-virtual {p3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4c} :catch_6c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_6a

    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_6a

    return-object p2

    .line 60
    :cond_4e
    :try_start_4e
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;->d:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AndroidKeyStore contains keyAlias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p3, p2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_68} :catch_6c
    .catchall {:try_start_4e .. :try_end_68} :catchall_6a

    :try_start_68
    monitor-exit p1

    return-object p2

    :catchall_6a
    move-exception p2

    goto :goto_7a

    :catch_6c
    move-exception p2

    .line 64
    sget-object p3, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;->d:Lcom/amazonaws/logging/Log;

    const-string v0, "Error in accessing the Android KeyStore."

    invoke-interface {p3, v0, p2}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 65
    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 67
    :goto_7a
    monitor-exit p1
    :try_end_7b
    .catchall {:try_start_68 .. :try_end_7b} :catchall_6a

    throw p2
.end method
