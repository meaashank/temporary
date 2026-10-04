###### Class com.amazonaws.services.s3.internal.crypto.SecuredCEK (com.amazonaws.services.s3.internal.crypto.SecuredCEK)
.class Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;
.super Ljava/lang/Object;
.source "SecuredCEK.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLjava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->a:[B

    .line 49
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->b:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a()[B
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->a:[B

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->c:Ljava/util/Map;

    return-object v0
.end method
