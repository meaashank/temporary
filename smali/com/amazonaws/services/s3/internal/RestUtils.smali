###### Class com.amazonaws.services.s3.internal.RestUtils (com.amazonaws.services.s3.internal.RestUtils)
.class public Lcom/amazonaws/services/s3/internal/RestUtils;
.super Ljava/lang/Object;
.source "RestUtils.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x1e

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "acl"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "torrent"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "logging"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "location"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "policy"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "requestPayment"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "versioning"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "versions"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "versionId"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "notification"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "uploadId"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "uploads"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "partNumber"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "website"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "delete"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "lifecycle"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "tagging"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "cors"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "restore"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "replication"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "accelerate"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "inventory"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "analytics"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "metrics"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "response-cache-control"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "response-content-disposition"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "response-content-encoding"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "response-content-language"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "response-content-type"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "response-expires"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/RestUtils;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/internal/RestUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p2}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p0

    .line 101
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    if-eqz p0, :cond_75

    .line 102
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_75

    .line 103
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 104
    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 105
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v3, :cond_4d

    goto :goto_32

    .line 112
    :cond_4d
    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content-type"

    .line 115
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    const-string v4, "content-md5"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    const-string v4, "date"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    const-string v4, "x-amz-"

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 117
    :cond_71
    invoke-interface {v1, v3, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_75
    const-string p0, "x-amz-date"

    .line 123
    invoke-interface {v1, p0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_84

    const-string p0, "date"

    const-string v2, ""

    .line 124
    invoke-interface {v1, p0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    if-eqz p3, :cond_8b

    const-string p0, "date"

    .line 131
    invoke-interface {v1, p0, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    const-string p0, "content-type"

    .line 136
    invoke-interface {v1, p0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a

    const-string p0, "content-type"

    const-string p3, ""

    .line 137
    invoke-interface {v1, p0, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    const-string p0, "content-md5"

    .line 139
    invoke-interface {v1, p0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a9

    const-string p0, "content-md5"

    const-string p3, ""

    .line 140
    invoke-interface {v1, p0, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_a9
    invoke-interface {p2}, Lcom/amazonaws/Request;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b5
    :goto_b5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_db

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x-amz-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 147
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, v2, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5

    .line 152
    :cond_db
    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11c

    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v2, "x-amz-"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_116

    .line 160
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_116

    :cond_111
    if-eqz p3, :cond_116

    .line 163
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_116
    :goto_116
    const-string p3, "\n"

    .line 165
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    .line 169
    :cond_11c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-interface {p2}, Lcom/amazonaws/Request;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 171
    invoke-interface {p2}, Lcom/amazonaws/Request;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 170
    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 172
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/16 p1, 0x3f

    .line 174
    array-length p3, p0

    const/4 v1, 0x0

    :goto_13e
    if-ge v1, p3, :cond_178

    aget-object v2, p0, v1

    .line 177
    sget-object v3, Lcom/amazonaws/services/s3/internal/RestUtils;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_153

    if-eqz p4, :cond_175

    .line 180
    invoke-interface {p4, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_153

    goto :goto_175

    .line 184
    :cond_153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_15c

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_15c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-interface {p2}, Lcom/amazonaws/Request;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_173

    const-string v2, "="

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_173
    const/16 p1, 0x26

    :cond_175
    :goto_175
    add-int/lit8 v1, v1, 0x1

    goto :goto_13e

    .line 197
    :cond_178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
