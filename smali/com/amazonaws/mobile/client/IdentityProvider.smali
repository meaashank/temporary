###### Class com.amazonaws.mobile.client.IdentityProvider (com.amazonaws.mobile.client.IdentityProvider)
.class public final enum Lcom/amazonaws/mobile/client/IdentityProvider;
.super Ljava/lang/Enum;
.source "IdentityProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/IdentityProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum AMAZON:Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum FACEBOOK:Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum GOOGLE:Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum TWITTER:Lcom/amazonaws/mobile/client/IdentityProvider;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 24
    new-instance v0, Lcom/amazonaws/mobile/client/IdentityProvider;

    const-string v1, "AMAZON"

    const-string v2, "www.amazon.com"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->AMAZON:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 25
    new-instance v0, Lcom/amazonaws/mobile/client/IdentityProvider;

    const-string v1, "FACEBOOK"

    const-string v2, "graph.facebook.com"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->FACEBOOK:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 26
    new-instance v0, Lcom/amazonaws/mobile/client/IdentityProvider;

    const-string v1, "GOOGLE"

    const-string v2, "accounts.google.com"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->GOOGLE:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 27
    new-instance v0, Lcom/amazonaws/mobile/client/IdentityProvider;

    const-string v1, "TWITTER"

    const-string v2, "api.twitter.com"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->TWITTER:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 28
    new-instance v0, Lcom/amazonaws/mobile/client/IdentityProvider;

    const-string v1, "DEVELOPER"

    const-string v2, "cognito-identity.amazonaws.com"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

    const/4 v0, 0x5

    .line 23
    new-array v0, v0, [Lcom/amazonaws/mobile/client/IdentityProvider;

    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->AMAZON:Lcom/amazonaws/mobile/client/IdentityProvider;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->FACEBOOK:Lcom/amazonaws/mobile/client/IdentityProvider;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->GOOGLE:Lcom/amazonaws/mobile/client/IdentityProvider;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->TWITTER:Lcom/amazonaws/mobile/client/IdentityProvider;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

    aput-object v1, v0, v7

    sput-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->$VALUES:[Lcom/amazonaws/mobile/client/IdentityProvider;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/amazonaws/mobile/client/IdentityProvider;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/IdentityProvider;
    .registers 2

    .line 23
    const-class v0, Lcom/amazonaws/mobile/client/IdentityProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/client/IdentityProvider;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/IdentityProvider;
    .registers 1

    .line 23
    sget-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->$VALUES:[Lcom/amazonaws/mobile/client/IdentityProvider;

    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/IdentityProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobile/client/IdentityProvider;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/amazonaws/mobile/client/IdentityProvider;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/amazonaws/mobile/client/IdentityProvider;->key:Ljava/lang/String;

    return-object v0
.end method
