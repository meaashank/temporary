###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants (com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants)
.class Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants;
.super Ljava/lang/Object;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;,
        Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;,
        Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "scopes"

.field public static final b:Ljava/lang/String; = "grant_type"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants.GrantTypes (com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants$GrantTypes)
.class final enum Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;
.super Ljava/lang/Enum;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GrantTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

.field public static final enum AUTHORIZATION_CODE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

.field public static final enum REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 643
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    const-string v1, "AUTHORIZATION_CODE"

    const-string v2, "authorization_code"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->AUTHORIZATION_CODE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    .line 644
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    const-string v1, "REFRESH_TOKEN"

    const-string v2, "refresh_token"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    const/4 v0, 0x2

    .line 642
    new-array v0, v0, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->AUTHORIZATION_CODE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->$VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

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

    .line 649
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 650
    iput-object p3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;
    .registers 2

    .line 642
    const-class v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;
    .registers 1

    .line 642
    sget-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->$VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 655
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->value:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants.TokenRequestFields (com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants$TokenRequestFields)
.class final enum Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;
.super Ljava/lang/Enum;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TokenRequestFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

.field public static final enum ACCESS_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

.field public static final enum ID_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 626
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    const-string v1, "ACCESS_TOKEN"

    const-string v2, "access_token"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->ACCESS_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    .line 627
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    const-string v1, "ID_TOKEN"

    const-string v2, "id_token"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->ID_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    const/4 v0, 0x2

    .line 625
    new-array v0, v0, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->ACCESS_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->ID_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->$VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

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

    .line 632
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 633
    iput-object p3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;
    .registers 2

    .line 625
    const-class v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;
    .registers 1

    .line 625
    sget-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->$VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 638
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenRequestFields;->value:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants.TokenResponseFields (com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants$TokenResponseFields)
.class final enum Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;
.super Ljava/lang/Enum;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TokenResponseFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum ACCESS_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum ERROR:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum ERROR_DESCRIPTION:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum ERROR_URI:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum EXPIRES_IN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum ID_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum SCOPES:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

.field public static final enum TOKEN_TYPE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 602
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "ACCESS_TOKEN"

    const-string v2, "access_token"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ACCESS_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 603
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "ID_TOKEN"

    const-string v2, "id_token"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ID_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 604
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "REFRESH_TOKEN"

    const-string v2, "refresh_token"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 605
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "TOKEN_TYPE"

    const-string v2, "token_type"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->TOKEN_TYPE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 606
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "EXPIRES_IN"

    const-string v2, "expires_in"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->EXPIRES_IN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 607
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "SCOPES"

    const-string v2, "scopes"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->SCOPES:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 608
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "ERROR"

    const-string v2, "error"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ERROR:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 609
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "ERROR_DESCRIPTION"

    const-string v2, "error_description"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ERROR_DESCRIPTION:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 610
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const-string v1, "ERROR_URI"

    const-string v2, "error_uri"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ERROR_URI:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    const/16 v0, 0x9

    .line 601
    new-array v0, v0, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ACCESS_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ID_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->TOKEN_TYPE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->EXPIRES_IN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->SCOPES:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ERROR:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ERROR_DESCRIPTION:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ERROR_URI:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    aput-object v1, v0, v11

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->$VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

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

    .line 615
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 616
    iput-object p3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;
    .registers 2

    .line 601
    const-class v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;
    .registers 1

    .line 601
    sget-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->$VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 621
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->value:Ljava/lang/String;

    return-object v0
.end method
