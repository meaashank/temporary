###### Class com.amazonaws.util.Md5Utils (com.amazonaws.util.Md5Utils)
.class public Lcom/amazonaws/util/Md5Utils;
.super Ljava/lang/Object;
.source "Md5Utils.java"


# static fields
.field private static final a:I = 0xe

.field private static final b:I = 0x4000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)[B
    .registers 2

    .line 108
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 6

    .line 47
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_5
    const-string p0, "MD5"

    .line 49
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/16 v1, 0x4000

    .line 50
    new-array v1, v1, [B

    .line 52
    :goto_f
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1c

    .line 53
    invoke-virtual {p0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_f

    .line 55
    :cond_1c
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_20} :catch_42
    .catchall {:try_start_5 .. :try_end_20} :catchall_40

    .line 61
    :try_start_20
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_3f

    :catch_24
    move-exception v0

    .line 63
    const-class v1, Lcom/amazonaws/util/Md5Utils;

    invoke-static {v1}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to close input stream of hash candidate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :goto_3f
    return-object p0

    :catchall_40
    move-exception p0

    goto :goto_49

    :catch_42
    move-exception p0

    .line 58
    :try_start_43
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_40

    .line 61
    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_68

    :catch_4d
    move-exception v0

    .line 63
    const-class v1, Lcom/amazonaws/util/Md5Utils;

    invoke-static {v1}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to close input stream of hash candidate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 66
    :goto_68
    throw p0
.end method

.method public static a([B)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    .line 86
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 116
    invoke-static {p0}, Lcom/amazonaws/util/Md5Utils;->a(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1

    .line 75
    invoke-static {p0}, Lcom/amazonaws/util/Md5Utils;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 1

    .line 99
    invoke-static {p0}, Lcom/amazonaws/util/Md5Utils;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
