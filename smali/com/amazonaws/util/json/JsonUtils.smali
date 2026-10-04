###### Class com.amazonaws.util.json.JsonUtils (com.amazonaws.util.json.JsonUtils)
.class public Lcom/amazonaws/util/json/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/amazonaws/util/json/AwsJsonFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/amazonaws/util/json/GsonFactory;

    invoke-direct {v0}, Lcom/amazonaws/util/json/GsonFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    .registers 2

    .line 99
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    if-eqz v0, :cond_b

    .line 102
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    invoke-interface {v0, p0}, Lcom/amazonaws/util/json/AwsJsonFactory;->a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object p0

    return-object p0

    .line 100
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Json engine is unavailable."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 113
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    if-eqz v0, :cond_b

    .line 116
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    invoke-interface {v0, p0}, Lcom/amazonaws/util/json/AwsJsonFactory;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object p0

    return-object p0

    .line 114
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Json engine is unavailable."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_51

    .line 177
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_51

    .line 182
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 183
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v1

    .line 184
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 185
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_1d

    .line 188
    :cond_3d
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 189
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->g()V

    .line 190
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_47} :catch_48

    return-object p0

    :catch_48
    move-exception p0

    .line 192
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to serialize to JSON String."

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_51
    :goto_51
    const-string p0, "{}"

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_13

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 167
    :cond_9
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->b(Ljava/io/Reader;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 165
    :cond_13
    :goto_13
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method static a(Lcom/amazonaws/util/json/AwsJsonFactory;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 88
    sput-object p0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    return-void

    .line 86
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/amazonaws/util/json/JsonUtils$JsonEngine;)V
    .registers 2

    .line 66
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils$1;->a:[I

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_24

    .line 74
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported json engine"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :pswitch_13
    new-instance p0, Lcom/amazonaws/util/json/JacksonFactory;

    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory;-><init>()V

    sput-object p0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    goto :goto_22

    .line 68
    :pswitch_1b
    new-instance p0, Lcom/amazonaws/util/json/GsonFactory;

    invoke-direct {p0}, Lcom/amazonaws/util/json/GsonFactory;-><init>()V

    sput-object p0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method

.method public static b(Ljava/io/Reader;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object p0

    .line 131
    :try_start_4
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->i()Lcom/amazonaws/util/json/AwsJsonToken;

    move-result-object v0

    if-nez v0, :cond_d

    .line 132
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 135
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 137
    :goto_15
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 138
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 141
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_15

    .line 143
    :cond_29
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 146
    :cond_31
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    .line 147
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->k()V

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3b} :catch_3c

    return-object p0

    :catch_3c
    move-exception p0

    .line 151
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to parse JSON String."

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 1

    .line 205
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

###### Class com.amazonaws.util.json.JsonUtils.AnonymousClass1 (com.amazonaws.util.json.JsonUtils$1)
.class synthetic Lcom/amazonaws/util/json/JsonUtils$1;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/JsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 66
    invoke-static {}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->values()[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils$1;->a:[I

    sget-object v1, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Gson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils$1;->a:[I

    sget-object v1, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Jackson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

###### Class com.amazonaws.util.json.JsonUtils.JsonEngine (com.amazonaws.util.json.JsonUtils$JsonEngine)
.class public final enum Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
.super Ljava/lang/Enum;
.source "JsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/JsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsonEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/json/JsonUtils$JsonEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

.field public static final enum Gson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

.field public static final enum Jackson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 50
    new-instance v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    const-string v1, "Gson"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Gson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    .line 57
    new-instance v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    const-string v1, "Jackson"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Jackson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    sget-object v1, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Gson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Jackson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->$VALUES:[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
    .registers 2

    .line 39
    const-class v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
    .registers 1

    .line 39
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->$VALUES:[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    invoke-virtual {v0}, [Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    return-object v0
.end method
