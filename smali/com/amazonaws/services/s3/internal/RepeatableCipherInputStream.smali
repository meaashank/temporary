###### Class com.amazonaws.services.s3.internal.RepeatableCipherInputStream (com.amazonaws.services.s3.internal.RepeatableCipherInputStream)
.class public Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;
.super Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;
.source "RepeatableCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream<",
        "Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    .registers 4

    .line 63
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->b(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;

    move-result-object v0

    .line 62
    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Ljava/io/FilterInputStream;Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;
    .registers 3

    .line 75
    new-instance v0, Ljavax/crypto/CipherInputStream;

    .line 76
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->a()Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;
    .registers 3

    .line 70
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->b(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/FilterInputStream;
    .registers 3

    .line 46
    check-cast p2, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->a(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;

    move-result-object p1

    return-object p1
.end method
