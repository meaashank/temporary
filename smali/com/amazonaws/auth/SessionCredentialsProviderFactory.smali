###### Class com.amazonaws.auth.SessionCredentialsProviderFactory (com.amazonaws.auth.SessionCredentialsProviderFactory)
.class public Lcom/amazonaws/auth/SessionCredentialsProviderFactory;
.super Ljava/lang/Object;
.source "SessionCredentialsProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;",
            "Lcom/amazonaws/auth/STSSessionCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/amazonaws/auth/AWSCredentials;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/auth/STSSessionCredentialsProvider;
    .registers 6

    const-class v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;

    monitor-enter v0

    .line 95
    :try_start_3
    new-instance v1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;

    invoke-interface {p0}, Lcom/amazonaws/auth/AWSCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 97
    sget-object p1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;->a:Ljava/util/Map;

    new-instance v2, Lcom/amazonaws/auth/STSSessionCredentialsProvider;

    invoke-direct {v2, p0, p2}, Lcom/amazonaws/auth/STSSessionCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1e
    sget-object p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;->a:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    monitor-exit v0

    return-object p0

    :catchall_28
    move-exception p0

    .line 94
    monitor-exit v0

    throw p0
.end method

###### Class com.amazonaws.auth.SessionCredentialsProviderFactory.Key (com.amazonaws.auth.SessionCredentialsProviderFactory$Key)
.class final Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;
.super Ljava/lang/Object;
.source "SessionCredentialsProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/SessionCredentialsProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 59
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 61
    :cond_13
    check-cast p1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;

    .line 62
    iget-object v2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->a:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 63
    iget-object v2, p1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->a:Ljava/lang/String;

    if-eqz v2, :cond_29

    return v1

    .line 65
    :cond_1e
    iget-object v2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 67
    :cond_29
    iget-object v2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->b:Ljava/lang/String;

    if-nez v2, :cond_32

    .line 68
    iget-object p1, p1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->b:Ljava/lang/String;

    if-eqz p1, :cond_3d

    return v1

    .line 70
    :cond_32
    iget-object v2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    return v1

    :cond_3d
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->b:Ljava/lang/String;

    if-nez v2, :cond_17

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    return v0
.end method
