###### Class com.amazonaws.mobile.client.results.SignInState (com.amazonaws.mobile.client.results.SignInState)
.class public final enum Lcom/amazonaws/mobile/client/results/SignInState;
.super Ljava/lang/Enum;
.source "SignInState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/results/SignInState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum ADMIN_NO_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum CUSTOM_CHALLENGE:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum DEVICE_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum DONE:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum NEW_PASSWORD_REQUIRED:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum UNKNOWN:Lcom/amazonaws/mobile/client/results/SignInState;


# instance fields
.field private final serviceText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 27
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "SMS_MFA"

    const-string v2, "CONFIRMATION_CODE"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 32
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "PASSWORD_VERIFIER"

    const-string v2, "PASSWORD_VERIFIER"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 37
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "CUSTOM_CHALLENGE"

    const-string v2, "CUSTOM_CHALLENGE"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->CUSTOM_CHALLENGE:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 42
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "DEVICE_SRP_AUTH"

    const-string v2, "DEVICE_SRP_AUTH"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->DEVICE_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 47
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "DEVICE_PASSWORD_VERIFIER"

    const-string v2, "DEVICE_PASSWORD_VERIFIER"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 52
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "ADMIN_NO_SRP_AUTH"

    const-string v2, "ADMIN_NO_SRP_AUTH"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->ADMIN_NO_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 57
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "NEW_PASSWORD_REQUIRED"

    const-string v2, "NEW_PASSWORD_REQUIRED"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->NEW_PASSWORD_REQUIRED:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 62
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "DONE"

    const-string v2, "This means the flow is complete."

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->DONE:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 67
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->UNKNOWN:Lcom/amazonaws/mobile/client/results/SignInState;

    const/16 v0, 0x9

    .line 23
    new-array v0, v0, [Lcom/amazonaws/mobile/client/results/SignInState;

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->CUSTOM_CHALLENGE:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->DEVICE_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->ADMIN_NO_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->NEW_PASSWORD_REQUIRED:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->DONE:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->UNKNOWN:Lcom/amazonaws/mobile/client/results/SignInState;

    aput-object v1, v0, v11

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->$VALUES:[Lcom/amazonaws/mobile/client/results/SignInState;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/amazonaws/mobile/client/results/SignInState;->serviceText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/SignInState;
    .registers 2

    .line 23
    const-class v0, Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/client/results/SignInState;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/results/SignInState;
    .registers 1

    .line 23
    sget-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->$VALUES:[Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/results/SignInState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobile/client/results/SignInState;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/SignInState;->serviceText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
