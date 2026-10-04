###### Class com.amazonaws.services.s3.internal.BucketNameUtils (com.amazonaws.services.s3.internal.BucketNameUtils)
.class public final enum Lcom/amazonaws/services/s3/internal/BucketNameUtils;
.super Ljava/lang/Enum;
.source "BucketNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/internal/BucketNameUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;

.field private static final IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_BUCKET_NAME_LENGTH:I = 0x3f

.field private static final MIN_BUCKET_NAME_LENGTH:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    sput-object v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->$VALUES:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    const-string v0, "(\\d+\\.){3}\\d+"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static exception(ZLjava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 188
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDNSBucketName(Ljava/lang/String;)Z
    .registers 1

    .line 73
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isValidV2BucketName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidV2BucketName(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isValidV2BucketName(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isValidV2BucketName(Ljava/lang/String;Z)Z
    .registers 9

    if-nez p0, :cond_9

    const-string p0, "Bucket name cannot be null"

    .line 89
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    .line 92
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_dd

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_1a

    goto/16 :goto_dd

    .line 101
    :cond_1a
    sget-object v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string p0, "Bucket name must not be formatted as an IP Address"

    .line 102
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_2d
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    :goto_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2d

    const/16 v5, 0x2e

    if-ge v1, v3, :cond_c6

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x41

    if-lt v3, v6, :cond_4d

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_4d

    const-string p0, "Bucket name should not contain uppercase characters"

    .line 113
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_4d
    const/16 v6, 0x20

    if-eq v3, v6, :cond_bf

    const/16 v6, 0x9

    if-eq v3, v6, :cond_bf

    const/16 v6, 0xd

    if-eq v3, v6, :cond_bf

    const/16 v6, 0xa

    if-ne v3, v6, :cond_5e

    goto :goto_bf

    :cond_5e
    if-ne v3, v5, :cond_7b

    if-nez v2, :cond_69

    const-string p0, "Bucket name should not begin with a period"

    .line 126
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_69
    if-ne v2, v5, :cond_72

    const-string p0, "Bucket name should not contain two adjacent periods"

    .line 131
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_72
    if-ne v2, v4, :cond_a0

    const-string p0, "Bucket name should not contain dashes next to periods"

    .line 136
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_7b
    if-ne v3, v4, :cond_8f

    if-ne v2, v5, :cond_86

    const-string p0, "Bucket name should not contain dashes next to periods"

    .line 142
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_86
    if-nez v2, :cond_a0

    const-string p0, "Bucket name should not begin with a \'-\'"

    .line 147
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_8f
    const/16 v2, 0x30

    if-lt v3, v2, :cond_a4

    const/16 v2, 0x39

    if-le v3, v2, :cond_9b

    const/16 v2, 0x61

    if-lt v3, v2, :cond_a4

    :cond_9b
    const/16 v2, 0x7a

    if-le v3, v2, :cond_a0

    goto :goto_a4

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_30

    .line 155
    :cond_a4
    :goto_a4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bucket name should not contain \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_bf
    :goto_bf
    const-string p0, "Bucket name should not contain white space"

    .line 119
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_c6
    if-eq v2, v5, :cond_d6

    if-ne v2, v4, :cond_cb

    goto :goto_d6

    :cond_cb
    const-string p1, "."

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d4

    return v0

    :cond_d4
    const/4 p0, 0x1

    return p0

    :cond_d6
    :goto_d6
    const-string p0, "Bucket name should not end with \'-\' or \'.\'"

    .line 164
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_dd
    :goto_dd
    const-string p0, "Bucket name should be between 3 and 63 characters long"

    .line 95
    invoke-static {p1, p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static validateBucketName(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isValidV2BucketName(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/BucketNameUtils;
    .registers 2

    .line 25
    const-class v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/internal/BucketNameUtils;
    .registers 1

    .line 25
    sget-object v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->$VALUES:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    return-object v0
.end method
