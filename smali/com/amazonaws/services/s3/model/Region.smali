###### Class com.amazonaws.services.s3.model.Region (com.amazonaws.services.s3.model.Region)
.class public final enum Lcom/amazonaws/services/s3/model/Region;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Mumbai:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Seoul:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum CA_Montreal:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum CN_Beijing:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum CN_Ningxia:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Frankfurt:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_London:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Paris:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Stockholm:Lcom/amazonaws/services/s3/model/Region;

.field public static final S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

.field public static final enum SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_East_2:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_GovCloud:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_Gov_East_1:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_Standard:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_West:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_West_2:Lcom/amazonaws/services/s3/model/Region;


# instance fields
.field private final regionIds:Ljava/util/List;
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
    .registers 17

    .line 56
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_Standard"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    .line 68
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_East_2"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "us-east-2"

    aput-object v5, v4, v3

    invoke-direct {v0, v1, v2, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_East_2:Lcom/amazonaws/services/s3/model/Region;

    .line 85
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_West"

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "us-west-1"

    aput-object v5, v4, v3

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_West:Lcom/amazonaws/services/s3/model/Region;

    .line 97
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_West_2"

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "us-west-2"

    aput-object v6, v4, v3

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_West_2:Lcom/amazonaws/services/s3/model/Region;

    .line 103
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_GovCloud"

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "s3-us-gov-west-1"

    aput-object v7, v4, v3

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_GovCloud:Lcom/amazonaws/services/s3/model/Region;

    .line 109
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_Gov_East_1"

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "s3-us-gov-east-1"

    aput-object v8, v4, v3

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Gov_East_1:Lcom/amazonaws/services/s3/model/Region;

    .line 120
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_Ireland"

    new-array v4, v5, [Ljava/lang/String;

    const-string v9, "eu-west-1"

    aput-object v9, v4, v3

    const-string v9, "EU"

    aput-object v9, v4, v2

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

    .line 132
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_London"

    new-array v4, v2, [Ljava/lang/String;

    const-string v10, "eu-west-2"

    aput-object v10, v4, v3

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_London:Lcom/amazonaws/services/s3/model/Region;

    .line 144
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_Paris"

    new-array v4, v2, [Ljava/lang/String;

    const-string v11, "eu-west-3"

    aput-object v11, v4, v3

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_Paris:Lcom/amazonaws/services/s3/model/Region;

    .line 157
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_Frankfurt"

    new-array v4, v2, [Ljava/lang/String;

    const-string v12, "eu-central-1"

    aput-object v12, v4, v3

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_Frankfurt:Lcom/amazonaws/services/s3/model/Region;

    .line 170
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_Stockholm"

    new-array v4, v2, [Ljava/lang/String;

    const-string v13, "eu-north-1"

    aput-object v13, v4, v3

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_Stockholm:Lcom/amazonaws/services/s3/model/Region;

    .line 182
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Mumbai"

    new-array v4, v2, [Ljava/lang/String;

    const-string v14, "ap-south-1"

    aput-object v14, v4, v3

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Mumbai:Lcom/amazonaws/services/s3/model/Region;

    .line 194
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Singapore"

    new-array v4, v2, [Ljava/lang/String;

    const-string v15, "ap-southeast-1"

    aput-object v15, v4, v3

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

    .line 206
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Sydney"

    new-array v4, v2, [Ljava/lang/String;

    const-string v16, "ap-southeast-2"

    aput-object v16, v4, v3

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

    .line 218
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Tokyo"

    new-array v4, v2, [Ljava/lang/String;

    const-string v16, "ap-northeast-1"

    aput-object v16, v4, v3

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

    .line 230
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Seoul"

    new-array v4, v2, [Ljava/lang/String;

    const-string v16, "ap-northeast-2"

    aput-object v16, v4, v3

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Seoul:Lcom/amazonaws/services/s3/model/Region;

    .line 242
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "SA_SaoPaulo"

    new-array v4, v2, [Ljava/lang/String;

    const-string v15, "sa-east-1"

    aput-object v15, v4, v3

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

    .line 254
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "CA_Montreal"

    new-array v4, v2, [Ljava/lang/String;

    const-string v15, "ca-central-1"

    aput-object v15, v4, v3

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->CA_Montreal:Lcom/amazonaws/services/s3/model/Region;

    .line 263
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "CN_Beijing"

    new-array v4, v2, [Ljava/lang/String;

    const-string v15, "cn-north-1"

    aput-object v15, v4, v3

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->CN_Beijing:Lcom/amazonaws/services/s3/model/Region;

    .line 272
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "CN_Ningxia"

    new-array v4, v2, [Ljava/lang/String;

    const-string v15, "cn-northwest-1"

    aput-object v15, v4, v3

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->CN_Ningxia:Lcom/amazonaws/services/s3/model/Region;

    const/16 v0, 0x14

    .line 42
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/Region;

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_East_2:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_West:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_West_2:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_GovCloud:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_Gov_East_1:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_London:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_Paris:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_Frankfurt:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_Stockholm:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v13

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Mumbai:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v14

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Seoul:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->CA_Montreal:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->CN_Beijing:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->CN_Ningxia:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->$VALUES:[Lcom/amazonaws/services/s3/model/Region;

    const-string v0, "s3[-.]([^.]+)\\.amazonaws\\.com(\\.[^.]*)?"

    .line 284
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_a

    .line 295
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;
    .registers 6

    if-eqz p0, :cond_47

    const-string v0, "US"

    .line 333
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "us-east-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_47

    .line 336
    :cond_13
    invoke-static {}, Lcom/amazonaws/services/s3/model/Region;->values()[Lcom/amazonaws/services/s3/model/Region;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_2b

    aget-object v3, v0, v2

    .line 337
    iget-object v4, v3, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    if-eqz v4, :cond_28

    .line 338
    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    return-object v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 343
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_47
    :goto_47
    sget-object p0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    return-object p0
.end method

.method private getFirstRegionId0()Ljava/lang/String;
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_17

    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    const/4 v1, 0x0

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;
    .registers 2

    .line 42
    const-class v0, Lcom/amazonaws/services/s3/model/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/Region;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/Region;
    .registers 1

    .line 42
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->$VALUES:[Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/Region;

    return-object v0
.end method


# virtual methods
.method public getFirstRegionId()Ljava/lang/String;
    .registers 2

    .line 311
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAWSRegion()Lcom/amazonaws/regions/Region;
    .registers 2

    .line 351
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "s3.amazonaws.com"

    .line 353
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->c(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v0

    return-object v0

    .line 355
    :cond_d
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->b(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 304
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
