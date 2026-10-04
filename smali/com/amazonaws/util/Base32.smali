###### Class com.amazonaws.util.Base32 (com.amazonaws.util.Base32)
.class public final enum Lcom/amazonaws/util/Base32;
.super Ljava/lang/Enum;
.source "Base32.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/Base32;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/Base32;

.field private static final CODEC:Lcom/amazonaws/util/Base32Codec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Lcom/amazonaws/util/Base32;

    sput-object v0, Lcom/amazonaws/util/Base32;->$VALUES:[Lcom/amazonaws/util/Base32;

    .line 26
    new-instance v0, Lcom/amazonaws/util/Base32Codec;

    invoke-direct {v0}, Lcom/amazonaws/util/Base32Codec;-><init>()V

    sput-object v0, Lcom/amazonaws/util/Base32;->CODEC:Lcom/amazonaws/util/Base32Codec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    .line 61
    new-array p0, p0, [B

    return-object p0

    .line 63
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 64
    invoke-static {p0, v0}, Lcom/amazonaws/util/CodecUtils;->sanitize(Ljava/lang/String;[B)I

    move-result p0

    .line 65
    sget-object v1, Lcom/amazonaws/util/Base32;->CODEC:Lcom/amazonaws/util/Base32Codec;

    invoke-virtual {v1, v0, p0}, Lcom/amazonaws/util/Base32Codec;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)[B
    .registers 3

    if-eqz p0, :cond_d

    .line 74
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    sget-object v0, Lcom/amazonaws/util/Base32;->CODEC:Lcom/amazonaws/util/Base32Codec;

    array-length v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/amazonaws/util/Base32Codec;->a([BI)[B

    move-result-object p0

    :cond_d
    :goto_d
    return-object p0
.end method

.method public static encode([B)[B
    .registers 2

    if-eqz p0, :cond_c

    .line 46
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_c

    :cond_6
    sget-object v0, Lcom/amazonaws/util/Base32;->CODEC:Lcom/amazonaws/util/Base32Codec;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/Base32Codec;->a([B)[B

    move-result-object p0

    :cond_c
    :goto_c
    return-object p0
.end method

.method public static varargs encodeAsString([B)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    const-string p0, ""

    goto :goto_14

    :cond_a
    sget-object v0, Lcom/amazonaws/util/Base32;->CODEC:Lcom/amazonaws/util/Base32Codec;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/Base32Codec;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/CodecUtils;->toStringDirect([B)Ljava/lang/String;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/Base32;
    .registers 2

    .line 23
    const-class v0, Lcom/amazonaws/util/Base32;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/Base32;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/Base32;
    .registers 1

    .line 23
    sget-object v0, Lcom/amazonaws/util/Base32;->$VALUES:[Lcom/amazonaws/util/Base32;

    invoke-virtual {v0}, [Lcom/amazonaws/util/Base32;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/Base32;

    return-object v0
.end method
