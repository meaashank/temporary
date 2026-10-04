###### Class com.amazonaws.util.Base32Codec (com.amazonaws.util.Base32Codec)
.class Lcom/amazonaws/util/Base32Codec;
.super Lcom/amazonaws/util/AbstractBase32Codec;
.source "Base32Codec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/Base32Codec$LazyHolder;
    }
.end annotation


# static fields
.field private static final a:I = 0x1a

.field private static final b:I = 0x18


# direct methods
.method constructor <init>()V
    .registers 2

    .line 53
    invoke-static {}, Lcom/amazonaws/util/Base32Codec;->a()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/AbstractBase32Codec;-><init>([B)V

    return-void
.end method

.method private static a()[B
    .registers 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 49
    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->toBytesDirect(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(B)I
    .registers 5

    .line 58
    invoke-static {}, Lcom/amazonaws/util/Base32Codec$LazyHolder;->a()[B

    move-result-object v0

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    return v0

    .line 62
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid base 32 character: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.amazonaws.util.Base32Codec.LazyHolder (com.amazonaws.util.Base32Codec$LazyHolder)
.class Lcom/amazonaws/util/Base32Codec$LazyHolder;
.super Ljava/lang/Object;
.source "Base32Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/Base32Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    invoke-static {}, Lcom/amazonaws/util/Base32Codec$LazyHolder;->b()[B

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/Base32Codec$LazyHolder;->a:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[B
    .registers 1

    .line 27
    sget-object v0, Lcom/amazonaws/util/Base32Codec$LazyHolder;->a:[B

    return-object v0
.end method

.method private static b()[B
    .registers 4

    const/16 v0, 0x7b

    .line 31
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_37

    const/16 v3, 0x41

    if-lt v1, v3, :cond_17

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_17

    add-int/lit8 v2, v1, -0x41

    int-to-byte v2, v2

    .line 35
    aput-byte v2, v0, v1

    goto :goto_34

    :cond_17
    const/16 v3, 0x32

    if-lt v1, v3, :cond_25

    const/16 v3, 0x37

    if-gt v1, v3, :cond_25

    add-int/lit8 v2, v1, -0x18

    int-to-byte v2, v2

    .line 37
    aput-byte v2, v0, v1

    goto :goto_34

    :cond_25
    const/16 v3, 0x61

    if-lt v1, v3, :cond_31

    if-gt v1, v2, :cond_31

    add-int/lit8 v2, v1, -0x61

    int-to-byte v2, v2

    .line 39
    aput-byte v2, v0, v1

    goto :goto_34

    :cond_31
    const/4 v2, -0x1

    .line 41
    aput-byte v2, v0, v1

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_37
    return-object v0
.end method
