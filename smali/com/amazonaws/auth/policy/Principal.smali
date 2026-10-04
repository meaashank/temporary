###### Class com.amazonaws.auth.policy.Principal (com.amazonaws.auth.policy.Principal)
.class public Lcom/amazonaws/auth/policy/Principal;
.super Ljava/lang/Object;
.source "Principal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;,
        Lcom/amazonaws/auth/policy/Principal$Services;
    }
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/auth/policy/Principal;

.field public static final b:Lcom/amazonaws/auth/policy/Principal;

.field public static final c:Lcom/amazonaws/auth/policy/Principal;

.field public static final d:Lcom/amazonaws/auth/policy/Principal;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "AWS"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->a:Lcom/amazonaws/auth/policy/Principal;

    .line 49
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "Service"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->b:Lcom/amazonaws/auth/policy/Principal;

    .line 55
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "Federated"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->c:Lcom/amazonaws/auth/policy/Principal;

    .line 62
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "*"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->d:Lcom/amazonaws/auth/policy/Principal;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/policy/Principal$Services;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 78
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal$Services;->getServiceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->e:Ljava/lang/String;

    const-string p1, "Service"

    .line 79
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->f:Ljava/lang/String;

    return-void

    .line 76
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null AWS service name specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;)V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 118
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->getWebIdentityProvider()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->e:Ljava/lang/String;

    const-string p1, "Federated"

    .line 119
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->f:Ljava/lang/String;

    return-void

    .line 116
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null web identity provider specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    const-string v0, "-"

    const-string v1, ""

    .line 105
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->e:Ljava/lang/String;

    const-string p1, "AWS"

    .line 106
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->f:Ljava/lang/String;

    return-void

    .line 102
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null AWS account ID specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->f:Ljava/lang/String;

    const-string v0, "AWS"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "-"

    const-string v0, ""

    .line 90
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 92
    :cond_15
    iput-object p2, p0, Lcom/amazonaws/auth/policy/Principal;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 271
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/auth/policy/Principal;

    if-nez v2, :cond_d

    return v1

    .line 275
    :cond_d
    check-cast p1, Lcom/amazonaws/auth/policy/Principal;

    .line 277
    invoke-virtual {p0}, Lcom/amazonaws/auth/policy/Principal;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 278
    invoke-virtual {p0}, Lcom/amazonaws/auth/policy/Principal;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    return v0

    :cond_2c
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget-object v1, p0, Lcom/amazonaws/auth/policy/Principal;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.amazonaws.auth.policy.Principal.Services (com.amazonaws.auth.policy.Principal$Services)
.class public final enum Lcom/amazonaws/auth/policy/Principal$Services;
.super Ljava/lang/Enum;
.source "Principal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/Principal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Services"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/Principal$Services;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AWSCloudHSM:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AllServices:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;


# instance fields
.field private serviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 151
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AWSDataPipeline"

    const-string v2, "datapipeline.amazonaws.com"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 154
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AmazonElasticTranscoder"

    const-string v2, "elastictranscoder.amazonaws.com"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 157
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AmazonEC2"

    const-string v2, "ec2.amazonaws.com"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 160
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AWSOpsWorks"

    const-string v2, "opsworks.amazonaws.com"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 163
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AWSCloudHSM"

    const-string v2, "cloudhsm.amazonaws.com"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AWSCloudHSM:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 166
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AllServices"

    const-string v2, "*"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AllServices:Lcom/amazonaws/auth/policy/Principal$Services;

    const/4 v0, 0x6

    .line 148
    new-array v0, v0, [Lcom/amazonaws/auth/policy/Principal$Services;

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AWSCloudHSM:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AllServices:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v8

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->$VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 174
    iput-object p3, p0, Lcom/amazonaws/auth/policy/Principal$Services;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;
    .registers 6

    if-eqz p0, :cond_1a

    .line 189
    invoke-static {}, Lcom/amazonaws/auth/policy/Principal$Services;->values()[Lcom/amazonaws/auth/policy/Principal$Services;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 190
    invoke-virtual {v3}, Lcom/amazonaws/auth/policy/Principal$Services;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    return-object v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;
    .registers 2

    .line 148
    const-class v0, Lcom/amazonaws/auth/policy/Principal$Services;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/Principal$Services;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/Principal$Services;
    .registers 1

    .line 148
    sget-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->$VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/Principal$Services;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/Principal$Services;

    return-object v0
.end method


# virtual methods
.method public getServiceId()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal$Services;->serviceId:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.auth.policy.Principal.WebIdentityProviders (com.amazonaws.auth.policy.Principal$WebIdentityProviders)
.class public final enum Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
.super Ljava/lang/Enum;
.source "Principal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/Principal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebIdentityProviders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

.field public static final enum AllProviders:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

.field public static final enum Amazon:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

.field public static final enum Facebook:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

.field public static final enum Google:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;


# instance fields
.field private webIdentityProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 207
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    const-string v1, "Facebook"

    const-string v2, "graph.facebook.com"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->Facebook:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    .line 210
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    const-string v1, "Google"

    const-string v2, "accounts.google.com"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->Google:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    .line 213
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    const-string v1, "Amazon"

    const-string v2, "www.amazon.com"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->Amazon:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    .line 216
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    const-string v1, "AllProviders"

    const-string v2, "*"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->AllProviders:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    const/4 v0, 0x4

    .line 204
    new-array v0, v0, [Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->Facebook:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->Google:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->Amazon:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->AllProviders:Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->$VALUES:[Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput-object p3, p0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->webIdentityProvider:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
    .registers 6

    if-eqz p0, :cond_1a

    .line 239
    invoke-static {}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->values()[Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 240
    invoke-virtual {v3}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->getWebIdentityProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    return-object v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
    .registers 2

    .line 204
    const-class v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
    .registers 1

    .line 204
    sget-object v0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->$VALUES:[Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    return-object v0
.end method


# virtual methods
.method public getWebIdentityProvider()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->webIdentityProvider:Ljava/lang/String;

    return-object v0
.end method
