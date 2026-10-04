###### Class com.amazonaws.internal.keyvaluestore.KeyProvider18 (com.amazonaws.internal.keyvaluestore.KeyProvider18)
.class public Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;
.super Ljava/lang/Object;
.source "KeyProvider18.java"

# interfaces
.implements Lcom/amazonaws/internal/keyvaluestore/KeyProvider;


# static fields
.field static final a:Ljava/lang/String; = "AES"

.field static final b:I = 0x100

.field static final c:Ljava/lang/String; = "AndroidKeyStore"

.field static final d:Ljava/lang/String; = "RSA"

.field static final e:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field static final f:Ljava/lang/String; = "AndroidOpenSSL"

.field static final g:I = 0x800

.field static final h:Ljava/lang/String; = "AesGcmNoPadding18-encrypted-encryption-key"

.field private static final i:Lcom/amazonaws/logging/Log;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private k:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->i:Lcom/amazonaws/logging/Log;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/security/KeyStore;Ljava/lang/String;)V
    .registers 8

    .line 141
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_66

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 145
    new-instance v1, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v1, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v1, p3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object p3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 148
    invoke-virtual {p1, p3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 149
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    const/16 p2, 0x800

    .line 151
    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    const-string p2, "RSA"

    const-string p3, "AndroidKeyStore"

    .line 153
    invoke-static {p2, p3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p2

    .line 156
    invoke-virtual {p2, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 157
    invoke-virtual {p2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    goto :goto_7c

    .line 159
    :cond_66
    sget-object p1, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->i:Lcom/amazonaws/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Android KeyStore contains the alias: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    :goto_7c
    return-void
.end method

.method private a(Ljava/lang/String;[B)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AndroidKeyStore"

    .line 102
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 105
    invoke-virtual {v1, p1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "AndroidOpenSSL"

    .line 108
    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 110
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    .line 109
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 112
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    return-object p1

    :catch_29
    move-exception p1

    .line 114
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->i:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while encrypting data. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;[B)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AndroidKeyStore"

    .line 121
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 124
    invoke-virtual {v1, p1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "AndroidOpenSSL"

    .line 127
    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 129
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    .line 128
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 131
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    return-object p1

    :catch_25
    move-exception p1

    .line 133
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->i:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while decrypting data. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;
    .registers 7

    .line 67
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "AndroidKeyStore"

    .line 70
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 72
    invoke-direct {p0, p3, v1, p2}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->a(Landroid/content/Context;Ljava/security/KeyStore;Ljava/lang/String;)V

    const-string p3, "AesGcmNoPadding18-encrypted-encryption-key"

    .line 75
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2f

    const-string p3, "AesGcmNoPadding18-encrypted-encryption-key"

    .line 77
    invoke-interface {p1, p3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 79
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    const-string p2, "AES"

    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_64
    .catchall {:try_start_3 .. :try_end_2d} :catchall_62

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_62

    return-object p3

    .line 82
    :cond_2f
    :try_start_2f
    new-instance p3, Ljava/security/SecureRandom;

    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    iput-object p3, p0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->k:Ljava/security/SecureRandom;

    const-string p3, "AES"

    .line 83
    invoke-static {p3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p3

    const/16 v1, 0x100

    .line 84
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->k:Ljava/security/SecureRandom;

    invoke-virtual {p3, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 85
    invoke-virtual {p3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 87
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "AesGcmNoPadding18-encrypted-encryption-key"

    .line 89
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->a(Ljava/lang/String;[B)[B

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_60} :catch_64
    .catchall {:try_start_2f .. :try_end_60} :catchall_62

    .line 91
    :try_start_60
    monitor-exit v0

    return-object p3

    :catchall_62
    move-exception p1

    goto :goto_72

    :catch_64
    move-exception p1

    .line 94
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/KeyProvider18;->i:Lcom/amazonaws/logging/Log;

    const-string p3, "Error in getting the key."

    invoke-interface {p2, p3, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 95
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 97
    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_60 .. :try_end_73} :catchall_62

    throw p1
.end method
