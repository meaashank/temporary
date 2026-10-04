###### Class com.amazonaws.cognito.clientcontext.util.SignatureGenerator (com.amazonaws.cognito.clientcontext.util.SignatureGenerator)
.class public Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;
.super Ljava/lang/Object;
.source "SignatureGenerator.java"


# static fields
.field private static final a:Ljava/lang/String; = "HMAC_SHA256_Signature"

.field private static final b:Ljava/lang/String; = "HmacSHA256"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "HMAC_SHA256_Signature"

    const-string v1, "Exception while completing context data signature"

    .line 66
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    :try_start_2
    const-string v1, "HmacSHA256"

    .line 50
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 51
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/amazonaws/cognito/clientcontext/data/ConfigurationConstant;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v3, "HmacSHA256"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 54
    sget-object p2, Lcom/amazonaws/cognito/clientcontext/data/ConfigurationConstant;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 55
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 57
    sget-object p2, Lcom/amazonaws/cognito/clientcontext/data/ConfigurationConstant;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 58
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    move-exception p1

    .line 60
    invoke-direct {p0, p1}, Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;->a(Ljava/lang/Exception;)V

    move-object p1, v0

    :goto_36
    return-object p1
.end method
