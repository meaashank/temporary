###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoSecretHash (com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoSecretHash)
.class public final Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;
.super Ljava/lang/Object;
.source "CognitoSecretHash.java"


# static fields
.field private static final a:Ljava/lang/String; = "HmacSHA256"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_4f

    if-eqz p1, :cond_47

    .line 54
    invoke-static {p2}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_c
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_19
    const-string p2, "HmacSHA256"

    .line 62
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p2

    .line 63
    invoke-virtual {p2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 64
    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 65
    sget-object p0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 66
    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3e} :catch_3f

    return-object p1

    .line 68
    :catch_3f
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p1, "errors in HMAC calculation"

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_47
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p1, "client ID cannot be null"

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_4f
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p1, "user ID cannot be null"

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
