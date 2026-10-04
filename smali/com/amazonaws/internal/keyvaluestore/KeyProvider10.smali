###### Class com.amazonaws.internal.keyvaluestore.KeyProvider10 (com.amazonaws.internal.keyvaluestore.KeyProvider10)
.class Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;
.super Ljava/lang/Object;
.source "KeyProvider10.java"

# interfaces
.implements Lcom/amazonaws/internal/keyvaluestore/KeyProvider;


# static fields
.field static final a:Ljava/lang/String; = "AES"

.field static final b:I = 0x100

.field static final c:Ljava/lang/String; = "AesGcmNoPaddingEncryption10-encryption-key"

.field private static final d:Lcom/amazonaws/logging/Log;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private e:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;->d:Lcom/amazonaws/logging/Log;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;->f:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;->e:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;
    .registers 6

    .line 40
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;->f:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    const-string p3, "AesGcmNoPaddingEncryption10-encryption-key"

    .line 43
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1f

    const-string p3, "AesGcmNoPaddingEncryption10-encryption-key"

    const/4 v0, 0x0

    .line 45
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "AES"

    invoke-direct {p3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_49
    .catchall {:try_start_3 .. :try_end_1d} :catchall_47

    :try_start_1d
    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_47

    return-object p3

    :cond_1f
    :try_start_1f
    const-string p3, "AES"

    .line 49
    invoke-static {p3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p3

    const/16 v0, 0x100

    .line 50
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;->e:Ljava/security/SecureRandom;

    invoke-virtual {p3, v0, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 51
    invoke-virtual {p3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 54
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "AesGcmNoPaddingEncryption10-encryption-key"

    .line 56
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_45} :catch_49
    .catchall {:try_start_1f .. :try_end_45} :catchall_47

    .line 58
    :try_start_45
    monitor-exit p2

    return-object p3

    :catchall_47
    move-exception p1

    goto :goto_57

    :catch_49
    move-exception p1

    .line 61
    sget-object p3, Lcom/amazonaws/internal/keyvaluestore/KeyProvider10;->d:Lcom/amazonaws/logging/Log;

    const-string v0, "Error in loading the key from keystore."

    invoke-interface {p3, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 62
    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 64
    :goto_57
    monitor-exit p2
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_47

    throw p1
.end method
