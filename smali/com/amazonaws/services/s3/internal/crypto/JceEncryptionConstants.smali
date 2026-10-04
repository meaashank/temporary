###### Class com.amazonaws.services.s3.internal.crypto.JceEncryptionConstants (com.amazonaws.services.s3.internal.crypto.JceEncryptionConstants)
.class public Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;
.super Ljava/lang/Object;
.source "JceEncryptionConstants.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "AES"

.field public static final b:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final c:I = 0x100

.field public static final d:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
