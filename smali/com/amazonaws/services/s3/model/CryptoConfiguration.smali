###### Class com.amazonaws.services.s3.model.CryptoConfiguration (com.amazonaws.services.s3.model.CryptoConfiguration)
.class public Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.super Ljava/lang/Object;
.source "CryptoConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77ffb7cc751194fcL


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/CryptoMode;

.field private b:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

.field private c:Ljava/security/Provider;

.field private d:Z

.field private transient e:Lcom/amazonaws/regions/Region;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>(Lcom/amazonaws/services/s3/model/CryptoMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->d:Z

    .line 74
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c:Ljava/security/Provider;

    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/model/CryptoConfiguration;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    iput-object v0, p1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 304
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    iput-object v0, p1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    .line 305
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c:Ljava/security/Provider;

    iput-object v0, p1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c:Ljava/security/Provider;

    .line 306
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->d:Z

    iput-boolean v0, p1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->d:Z

    .line 307
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e:Lcom/amazonaws/regions/Region;

    iput-object v0, p1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e:Lcom/amazonaws/regions/Region;

    return-object p1
.end method

.method private c(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    .registers 3

    .line 227
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne p1, v0, :cond_2c

    .line 229
    :cond_8
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c:Ljava/security/Provider;

    if-nez p1, :cond_24

    .line 230
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->a()Z

    move-result p1

    if-nez p1, :cond_24

    .line 231
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->b()V

    .line 232
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->a()Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_24

    .line 233
    :cond_1c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The Bouncy castle library jar is required on the classpath to enable authenticated encryption"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c:Ljava/security/Provider;

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->a(Ljava/security/Provider;)Z

    move-result p1

    if-eqz p1, :cond_2d

    :cond_2c
    return-void

    .line 239
    :cond_2d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "More recent version of the Bouncy castle library is required to enable authenticated encryption"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/CryptoStorageMode;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    return-object v0
.end method

.method public a(Lcom/amazonaws/regions/Region;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e:Lcom/amazonaws/regions/Region;

    return-void
.end method

.method public a(Lcom/amazonaws/regions/Regions;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_a

    .line 346
    invoke-static {p1}, Lcom/amazonaws/regions/Region;->a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a(Lcom/amazonaws/regions/Region;)V

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    .line 348
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a(Lcom/amazonaws/regions/Region;)V

    :goto_e
    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    return-void
.end method

.method public a(Ljava/security/Provider;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c:Ljava/security/Provider;

    .line 121
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c(Lcom/amazonaws/services/s3/model/CryptoMode;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 206
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->d:Z

    return-void
.end method

.method public b(Lcom/amazonaws/regions/Region;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e:Lcom/amazonaws/regions/Region;

    return-object p0
.end method

.method public b(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a(Lcom/amazonaws/regions/Regions;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    return-object p0
.end method

.method public b(Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c:Ljava/security/Provider;

    .line 134
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c(Lcom/amazonaws/services/s3/model/CryptoMode;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 215
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->d:Z

    return-object p0
.end method

.method public b()Ljava/security/Provider;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c:Ljava/security/Provider;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/s3/model/CryptoMode;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->g()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->d:Z

    return v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 3

    .line 291
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 294
    :cond_7
    new-instance v0, Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;-><init>(Lcom/amazonaws/services/s3/model/CryptoConfiguration$1;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a(Lcom/amazonaws/services/s3/model/CryptoConfiguration;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 299
    new-instance v0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a(Lcom/amazonaws/services/s3/model/CryptoConfiguration;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/amazonaws/regions/Regions;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e:Lcom/amazonaws/regions/Region;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e:Lcom/amazonaws/regions/Region;

    invoke-virtual {v0}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/amazonaws/regions/Region;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e:Lcom/amazonaws/regions/Region;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.model.CryptoConfiguration.AnonymousClass1 (com.amazonaws.services.s3.model.CryptoConfiguration$1)
.class synthetic Lcom/amazonaws/services/s3/model/CryptoConfiguration$1;
.super Ljava/lang/Object;
.source "CryptoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.services.s3.model.CryptoConfiguration.ReadOnly (com.amazonaws.services.s3.model.CryptoConfiguration$ReadOnly)
.class final Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;
.super Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.source "CryptoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReadOnly"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/model/CryptoConfiguration$1;)V
    .registers 2

    .line 250
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/regions/Regions;)V
    .registers 2

    .line 280
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    .registers 2

    .line 266
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)V
    .registers 2

    .line 254
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Ljava/security/Provider;)V
    .registers 2

    .line 260
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Z)V
    .registers 2

    .line 273
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 283
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 269
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 257
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .registers 2

    .line 277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 250
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->g()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
