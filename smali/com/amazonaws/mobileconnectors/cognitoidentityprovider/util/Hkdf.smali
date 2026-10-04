###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.util.Hkdf (com.amazonaws.mobileconnectors.cognitoidentityprovider.util.Hkdf)
.class public final Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;
.super Ljava/lang/Object;
.source "Hkdf.java"


# static fields
.field private static final a:[B

.field private static final d:I = 0xff


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [B

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:[B

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c:Ljavax/crypto/SecretKey;

    const-string v0, "Hmac"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 110
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljava/lang/String;

    return-void

    .line 107
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Hkdf may only be used with Hmac algorithms."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;
    .registers 2

    .line 49
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 50
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a()Ljavax/crypto/Mac;
    .registers 3

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_13
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b()V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_5

    return-void

    .line 203
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hkdf has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljavax/crypto/SecretKey;)V
    .registers 5

    .line 93
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c:Ljavax/crypto/SecretKey;

    return-void

    .line 94
    :cond_f
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Algorithm for the provided key must match the algorithm for this Hkdf. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([B)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a([B[B)V

    return-void
.end method

.method public a([BI[BI)V
    .registers 11

    .line 148
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b()V

    if-ltz p2, :cond_5b

    .line 151
    array-length v0, p3

    add-int/2addr p4, p2

    if-lt v0, p4, :cond_55

    .line 154
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a()Ljavax/crypto/Mac;

    move-result-object p4

    .line 155
    invoke-virtual {p4}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    if-gt p2, v0, :cond_4d

    .line 159
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_1c
    if-ge v0, p2, :cond_49

    .line 165
    :try_start_1e
    invoke-virtual {p4, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 166
    invoke-virtual {p4, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 167
    invoke-virtual {p4, v3}, Ljavax/crypto/Mac;->update(B)V

    .line 168
    invoke-virtual {p4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_44

    move v1, v0

    const/4 v0, 0x0

    .line 170
    :goto_2d
    :try_start_2d
    array-length v5, v4

    if-ge v0, v5, :cond_3b

    if-ge v1, p2, :cond_3b

    .line 171
    aget-byte v5, v4, v0

    aput-byte v5, p3, v1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_41

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    move v0, v1

    move-object v1, v4

    goto :goto_1c

    :catchall_41
    move-exception p1

    move-object v1, v4

    goto :goto_45

    :catchall_44
    move-exception p1

    .line 176
    :goto_45
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 177
    throw p1

    .line 176
    :cond_49
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 156
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested keys may not be longer than 255 times the underlying HMAC length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_55
    new-instance p1, Ljavax/crypto/ShortBufferException;

    invoke-direct {p1}, Ljavax/crypto/ShortBufferException;-><init>()V

    throw p1

    .line 150
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length must be a non-negative value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B[B)V
    .registers 8

    if-nez p2, :cond_5

    .line 65
    sget-object p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:[B

    goto :goto_b

    :cond_5
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 66
    :goto_b
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:[B

    const/4 v1, 0x0

    .line 69
    :try_start_e
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 70
    array-length v3, p2

    if-nez v3, :cond_20

    .line 71
    invoke-virtual {v2}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p2

    new-array p2, p2, [B

    .line 72
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 75
    :cond_20
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 76
    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_2e
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_2e} :catch_49
    .catchall {:try_start_e .. :try_end_2e} :catchall_47

    .line 77
    :try_start_2e
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 78
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a(Ljavax/crypto/SecretKey;)V
    :try_end_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_3b} :catch_43
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3f

    .line 83
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void

    :catchall_3f
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_52

    :catch_43
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_4a

    :catchall_47
    move-exception p1

    goto :goto_52

    :catch_49
    move-exception p1

    .line 81
    :goto_4a
    :try_start_4a
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {p2, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_47

    .line 83
    :goto_52
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 84
    throw p1
.end method

.method public a(Ljava/lang/String;I)[B
    .registers 4

    if-eqz p1, :cond_9

    .line 120
    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public a([BI)[B
    .registers 5

    .line 129
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 132
    :try_start_3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a([BI[BI)V
    :try_end_6
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception p1

    .line 135
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
