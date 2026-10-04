###### Class com.amazonaws.regions.Region (com.amazonaws.regions.Region)
.class public final Lcom/amazonaws/regions/Region;
.super Ljava/lang/Object;
.source "Region.java"


# static fields
.field private static final a:Ljava/lang/String; = "amazonaws.com"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/regions/Region;->d:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/regions/Region;->e:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/regions/Region;->f:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/amazonaws/regions/Region;->b:Ljava/lang/String;

    if-eqz p2, :cond_26

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_26

    .line 52
    :cond_23
    iput-object p2, p0, Lcom/amazonaws/regions/Region;->c:Ljava/lang/String;

    goto :goto_2a

    :cond_26
    :goto_26
    const-string p1, "amazonaws.com"

    .line 50
    iput-object p1, p0, Lcom/amazonaws/regions/Region;->c:Ljava/lang/String;

    :goto_2a
    return-void
.end method

.method public static a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;
    .registers 1

    .line 62
    invoke-virtual {p0}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/regions/RegionUtils;->b(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .registers 1

    .line 71
    invoke-static {p0}, Lcom/amazonaws/regions/RegionUtils;->b(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/AmazonWebServiceClient;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceClient;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazonaws/auth/AWSCredentialsProvider;",
            "Lcom/amazonaws/ClientConfiguration;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_16

    if-nez p3, :cond_16

    .line 174
    :try_start_5
    new-array p2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 175
    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonWebServiceClient;

    goto :goto_60

    :catch_14
    move-exception p2

    goto :goto_64

    :cond_16
    const/4 v1, 0x1

    if-nez p2, :cond_2e

    .line 177
    new-array p2, v1, [Ljava/lang/Class;

    const-class v2, Lcom/amazonaws/ClientConfiguration;

    aput-object v2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonWebServiceClient;

    goto :goto_60

    :cond_2e
    if-nez p3, :cond_45

    .line 180
    new-array p3, v1, [Ljava/lang/Class;

    const-class v2, Lcom/amazonaws/auth/AWSCredentialsProvider;

    aput-object v2, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 181
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonWebServiceClient;

    goto :goto_60

    :cond_45
    const/4 v2, 0x2

    .line 183
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/amazonaws/auth/AWSCredentialsProvider;

    aput-object v4, v3, v0

    const-class v4, Lcom/amazonaws/ClientConfiguration;

    aput-object v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 185
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p3, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonWebServiceClient;

    .line 188
    :goto_60
    invoke-virtual {p2, p0}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/regions/Region;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_63} :catch_14

    return-object p2

    .line 191
    :goto_64
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t instantiate instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
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

    .line 100
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->d:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->e:Ljava/util/Map;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amazonaws/regions/Region;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->f:Ljava/util/Map;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/amazonaws/regions/Region;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amazonaws/regions/Region;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 197
    instance-of v0, p1, Lcom/amazonaws/regions/Region;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 200
    :cond_6
    check-cast p1, Lcom/amazonaws/regions/Region;

    .line 201
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 206
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 211
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
