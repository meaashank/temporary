###### Class com.amazonaws.auth.SignerFactory (com.amazonaws.auth.SignerFactory)
.class public final Lcom/amazonaws/auth/SignerFactory;
.super Ljava/lang/Object;
.source "SignerFactory.java"


# static fields
.field private static final a:Ljava/lang/String; = "QueryStringSignerType"

.field private static final b:Ljava/lang/String; = "AWS3SignerType"

.field private static final c:Ljava/lang/String; = "AWS4SignerType"

.field private static final d:Ljava/lang/String; = "NoOpSignerType"

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/auth/Signer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/auth/SignerFactory;->e:Ljava/util/Map;

    .line 36
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->e:Ljava/util/Map;

    const-string v1, "QueryStringSignerType"

    const-class v2, Lcom/amazonaws/auth/QueryStringSigner;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->e:Ljava/util/Map;

    const-string v1, "AWS3SignerType"

    const-class v2, Lcom/amazonaws/auth/AWS3Signer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->e:Ljava/util/Map;

    const-string v1, "AWS4SignerType"

    const-class v2, Lcom/amazonaws/auth/AWS4Signer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->e:Ljava/util/Map;

    const-string v1, "NoOpSignerType"

    const-class v2, Lcom/amazonaws/auth/NoOpSigner;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .registers 2

    .line 79
    invoke-static {p0, p1}, Lcom/amazonaws/auth/SignerFactory;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/auth/Signer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    .line 65
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->e:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 62
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signerClass cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signerType cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .registers 2

    .line 92
    invoke-static {p0, p1}, Lcom/amazonaws/auth/SignerFactory;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .registers 3

    .line 100
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig$Factory;->a()Lcom/amazonaws/internal/config/InternalConfig;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0, p1}, Lcom/amazonaws/internal/config/InternalConfig;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/amazonaws/internal/config/SignerConfig;->a()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1, p0}, Lcom/amazonaws/auth/SignerFactory;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .registers 5

    .line 113
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_53

    .line 118
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/Signer;
    :try_end_10
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_10} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_10} :catch_1b

    .line 129
    instance-of p0, v0, Lcom/amazonaws/auth/ServiceAwareSigner;

    if-eqz p0, :cond_1a

    .line 130
    move-object p0, v0

    check-cast p0, Lcom/amazonaws/auth/ServiceAwareSigner;

    invoke-interface {p0, p1}, Lcom/amazonaws/auth/ServiceAwareSigner;->a(Ljava/lang/String;)V

    :cond_1a
    return-object v0

    :catch_1b
    move-exception p1

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_37
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 115
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
