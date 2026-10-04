###### Class com.amazonaws.util.json.JacksonFactory (com.amazonaws.util.json.JacksonFactory)
.class final Lcom/amazonaws/util/json/JacksonFactory;
.super Ljava/lang/Object;
.source "JacksonFactory.java"

# interfaces
.implements Lcom/amazonaws/util/json/AwsJsonFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;,
        Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;
    }
.end annotation


# instance fields
.field private final a:Lcom/fasterxml/jackson/core/JsonFactory;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    return-void
.end method

.method static synthetic a(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;
    .registers 1

    .line 35
    invoke-static {p0}, Lcom/amazonaws/util/json/JacksonFactory;->b(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_4
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_2e

    .line 198
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->UNKNOWN:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 196
    :pswitch_12
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_STRING:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 194
    :pswitch_15
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 192
    :pswitch_18
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NUMBER:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 189
    :pswitch_1b
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_BOOLEAN:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 186
    :pswitch_1e
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->FIELD_NAME:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 184
    :pswitch_21
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->END_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 182
    :pswitch_24
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 180
    :pswitch_27
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->END_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 178
    :pswitch_2a
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_18
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    .registers 4

    .line 41
    new-instance v0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Ljava/io/Reader;)V

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 4

    .line 46
    new-instance v0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Ljava/io/Writer;)V

    return-object v0
.end method

###### Class com.amazonaws.util.json.JacksonFactory.AnonymousClass1 (com.amazonaws.util.json.JacksonFactory$1)
.class synthetic Lcom/amazonaws/util/json/JacksonFactory$1;
.super Ljava/lang/Object;
.source "JacksonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/JacksonFactory;
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

    .line 176
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonToken;->values()[Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v0, Lcom/amazonaws/util/json/JacksonFactory$1;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_86

    :catch_86
    return-void
.end method

###### Class com.amazonaws.util.json.JacksonFactory.JacksonReader (com.amazonaws.util.json.JacksonFactory$JacksonReader)
.class final Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;
.super Ljava/lang/Object;
.source "JacksonFactory.java"

# interfaces
.implements Lcom/amazonaws/util/json/AwsJsonReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/JacksonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JacksonReader"
.end annotation


# instance fields
.field private a:Lcom/fasterxml/jackson/core/JsonParser;

.field private b:Lcom/fasterxml/jackson/core/JsonToken;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;Ljava/io/Reader;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    .line 56
    :try_start_6
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a:Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 58
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Failed to create JSON reader"

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Lcom/fasterxml/jackson/core/JsonToken;)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p1, :cond_5

    return-void

    .line 166
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v0, :cond_c

    .line 144
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_c
    return-void
.end method

.method private m()V
    .registers 2

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 65
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 66
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->m()V

    return-void
.end method

.method public b()V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 72
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 73
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->m()V

    return-void
.end method

.method public c()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 79
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 80
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->m()V

    return-void
.end method

.method public d()V
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 86
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 87
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->m()V

    return-void
.end method

.method public e()Z
    .registers 3

    .line 92
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 93
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_12

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public f()Z
    .registers 3

    .line 98
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 99
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_11

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 104
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 105
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 106
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->m()V

    .line 107
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 3

    .line 112
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 113
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_11
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->m()V

    return-object v0
.end method

.method public i()Lcom/amazonaws/util/json/AwsJsonToken;
    .registers 2

    .line 120
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 121
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->b:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {v0}, Lcom/amazonaws/util/json/JacksonFactory;->a(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .registers 2

    .line 126
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->l()V

    .line 127
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 128
    invoke-direct {p0}, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->m()V

    return-void
.end method

.method public k()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonReader;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    return-void
.end method

###### Class com.amazonaws.util.json.JacksonFactory.JacksonWriter (com.amazonaws.util.json.JacksonFactory$JacksonWriter)
.class final Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;
.super Ljava/lang/Object;
.source "JacksonFactory.java"

# interfaces
.implements Lcom/amazonaws/util/json/AwsJsonWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/JacksonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JacksonWriter"
.end annotation


# static fields
.field private static final b:I = -0x3


# instance fields
.field private a:Lcom/fasterxml/jackson/core/JsonGenerator;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;Ljava/io/Writer;)V
    .registers 4

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 210
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Failed to create json writer"

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    return-object p0
.end method

.method public a(D)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    return-object p0
.end method

.method public a(J)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 5

    .line 283
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 285
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 286
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 287
    iget-object p1, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 4

    .line 276
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    return-object p0
.end method

.method public b()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    return-object p0
.end method

.method public d()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-object p0
.end method

.method public e()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    return-object p0
.end method

.method public f()V
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    return-void
.end method

.method public g()V
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/amazonaws/util/json/JacksonFactory$JacksonWriter;->a:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    return-void
.end method
