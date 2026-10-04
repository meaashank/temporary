###### Class com.amazonaws.util.IOUtils (com.amazonaws.util.IOUtils)
.class public final enum Lcom/amazonaws/util/IOUtils;
.super Ljava/lang/Enum;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/IOUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/IOUtils;

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final logger:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 30
    new-array v0, v0, [Lcom/amazonaws/util/IOUtils;

    sput-object v0, Lcom/amazonaws/util/IOUtils;->$VALUES:[Lcom/amazonaws/util/IOUtils;

    .line 34
    const-class v0, Lcom/amazonaws/util/IOUtils;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/IOUtils;->logger:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V
    .registers 3

    if-eqz p0, :cond_16

    .line 76
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_16

    :catch_6
    move-exception p0

    .line 78
    sget-object p1, Lcom/amazonaws/util/IOUtils;->logger:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 79
    sget-object p1, Lcom/amazonaws/util/IOUtils;->logger:Lcom/amazonaws/logging/Log;

    const-string v0, "Ignore failure in closing the Closeable"

    invoke-interface {p1, v0, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7

    const/16 v0, 0x1000

    .line 117
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 120
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_14

    const/4 v4, 0x0

    .line 121
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_6

    :cond_14
    return-wide v1
.end method

.method public static release(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V
    .registers 2

    .line 103
    invoke-static {p0, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 5

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    .line 46
    :try_start_7
    new-array v1, v1, [B

    .line 48
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 51
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1d

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_1d
    move-exception p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 54
    throw p0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amazonaws/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/IOUtils;
    .registers 2

    .line 30
    const-class v0, Lcom/amazonaws/util/IOUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/IOUtils;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/IOUtils;
    .registers 1

    .line 30
    sget-object v0, Lcom/amazonaws/util/IOUtils;->$VALUES:[Lcom/amazonaws/util/IOUtils;

    invoke-virtual {v0}, [Lcom/amazonaws/util/IOUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/IOUtils;

    return-object v0
.end method
