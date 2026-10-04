###### Class com.amazonaws.regions.RegionUtils (com.amazonaws.regions.RegionUtils)
.class public Lcom/amazonaws/regions/RegionUtils;
.super Ljava/lang/Object;
.source "RegionUtils.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.amazonaws.request"

    .line 41
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->b:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->a:Ljava/util/List;

    if-nez v1, :cond_a

    .line 48
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->b()V

    .line 51
    :cond_a
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->a:Ljava/util/List;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 46
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v0

    .line 62
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 63
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/regions/Region;

    .line 64
    invoke-virtual {v3, p0}, Lcom/amazonaws/regions/Region;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 65
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_28

    goto :goto_10

    .line 68
    :cond_26
    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception p0

    .line 61
    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/io/InputStream;)V
    .registers 3

    .line 163
    :try_start_0
    new-instance v0, Lcom/amazonaws/regions/RegionMetadataParser;

    invoke-direct {v0}, Lcom/amazonaws/regions/RegionMetadataParser;-><init>()V

    .line 164
    invoke-virtual {v0, p0}, Lcom/amazonaws/regions/RegionMetadataParser;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/amazonaws/regions/RegionUtils;->a:Ljava/util/List;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    .line 166
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->b:Lcom/amazonaws/logging/Log;

    const-string v1, "Failed to parse regional endpoints"

    invoke-interface {v0, v1, p0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .registers 4

    .line 77
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/regions/Region;

    .line 78
    invoke-virtual {v1}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized b()V
    .registers 4

    const-class v0, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v0

    :try_start_3
    const-string v1, "com.amazonaws.regions.RegionUtils.fileOverride"

    .line 125
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2d

    if-eqz v1, :cond_18

    .line 127
    :try_start_b
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->c()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_2d

    goto :goto_18

    :catch_f
    move-exception v1

    .line 129
    :try_start_10
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t find regions override file specified"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 134
    :cond_18
    :goto_18
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->a:Ljava/util/List;

    if-nez v1, :cond_1f

    .line 135
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->d()V

    .line 138
    :cond_1f
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->a:Ljava/util/List;
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_2d

    if-eqz v1, :cond_25

    .line 141
    monitor-exit v0

    return-void

    .line 139
    :cond_25
    :try_start_25
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize the regions."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v1

    .line 124
    monitor-exit v0

    throw v1
.end method

.method public static c(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .registers 6

    .line 100
    invoke-static {p0}, Lcom/amazonaws/regions/RegionUtils;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/regions/Region;

    .line 104
    invoke-virtual {v2}, Lcom/amazonaws/regions/Region;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    invoke-static {v4}, Lcom/amazonaws/regions/RegionUtils;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    return-object v2

    .line 112
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No region found with any service for endpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c()V
    .registers 4

    const-string v0, "com.amazonaws.regions.RegionUtils.fileOverride"

    .line 144
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->b:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 146
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->b:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using local override of the regions file ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to initiate regions data..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 150
    :cond_29
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/net/URI;
    .registers 4

    .line 189
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    .line 191
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_21} :catch_22

    :cond_21
    return-object v0

    :catch_22
    move-exception p0

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse service endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d()V
    .registers 2

    .line 175
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->b:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 176
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->b:Lcom/amazonaws/logging/Log;

    const-string v1, "Initializing the regions with default regions"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 178
    :cond_f
    invoke-static {}, Lcom/amazonaws/regions/RegionDefaults;->a()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->a:Ljava/util/List;

    return-void
.end method
