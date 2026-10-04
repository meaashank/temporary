###### Class com.amazonaws.util.json.GsonFactory (com.amazonaws.util.json.GsonFactory)
.class final Lcom/amazonaws/util/json/GsonFactory;
.super Ljava/lang/Object;
.source "GsonFactory.java"

# interfaces
.implements Lcom/amazonaws/util/json/AwsJsonFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/json/GsonFactory$GsonWriter;,
        Lcom/amazonaws/util/json/GsonFactory$GsonReader;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/gson/stream/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;
    .registers 1

    .line 34
    invoke-static {p0}, Lcom/amazonaws/util/json/GsonFactory;->b(Lcom/google/gson/stream/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/gson/stream/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 127
    :cond_4
    sget-object v1, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_2e

    .line 149
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->UNKNOWN:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    :pswitch_12
    return-object v0

    .line 145
    :pswitch_13
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_STRING:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 143
    :pswitch_16
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 141
    :pswitch_19
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NUMBER:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 139
    :pswitch_1c
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_BOOLEAN:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 137
    :pswitch_1f
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->FIELD_NAME:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 135
    :pswitch_22
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->END_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 133
    :pswitch_25
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 131
    :pswitch_28
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->END_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 129
    :pswitch_2b
    sget-object p0, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    .registers 3

    .line 38
    new-instance v0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/json/GsonFactory$GsonReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 43
    new-instance v0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

###### Class com.amazonaws.util.json.GsonFactory.AnonymousClass1 (com.amazonaws.util.json.GsonFactory$1)
.class synthetic Lcom/amazonaws/util/json/GsonFactory$1;
.super Ljava/lang/Object;
.source "GsonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/GsonFactory;
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

    .line 127
    invoke-static {}, Lcom/google/gson/stream/JsonToken;->values()[Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/amazonaws/util/json/GsonFactory$1;->a:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7a

    :catch_7a
    return-void
.end method

###### Class com.amazonaws.util.json.GsonFactory.GsonReader (com.amazonaws.util.json.GsonFactory$GsonReader)
.class final Lcom/amazonaws/util/json/GsonFactory$GsonReader;
.super Ljava/lang/Object;
.source "GsonFactory.java"

# interfaces
.implements Lcom/amazonaws/util/json/AwsJsonReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/GsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GsonReader"
.end annotation


# instance fields
.field private final a:Lcom/google/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    return-void
.end method

.method public b()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-void
.end method

.method public c()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    return-void
.end method

.method public d()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public e()Z
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public f()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 94
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_15
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 98
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "true"

    goto :goto_2a

    :cond_28
    const-string v0, "false"

    :goto_2a
    return-object v0

    .line 100
    :cond_2b
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/amazonaws/util/json/AwsJsonToken;
    .registers 2

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/json/GsonFactory;->a(Lcom/google/gson/stream/JsonToken;)Lcom/amazonaws/util/json/AwsJsonToken;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    return-void
.end method

.method public k()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonReader;->a:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V

    return-void
.end method

###### Class com.amazonaws.util.json.GsonFactory.GsonWriter (com.amazonaws.util.json.GsonFactory$GsonWriter)
.class final Lcom/amazonaws/util/json/GsonFactory$GsonWriter;
.super Ljava/lang/Object;
.source "GsonFactory.java"

# interfaces
.implements Lcom/amazonaws/util/json/AwsJsonWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/GsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GsonWriter"
.end annotation


# static fields
.field private static final b:I = -0x3


# instance fields
.field private final a:Lcom/google/gson/stream/JsonWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public a(D)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public a(J)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 5

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 232
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 233
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 235
    iget-object p1, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 4

    .line 224
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public b()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public c()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public d()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public e()Lcom/amazonaws/util/json/AwsJsonWriter;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public f()V
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->flush()V

    return-void
.end method

.method public g()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->close()V

    return-void
.end method
