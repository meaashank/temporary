###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType (com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType)
.class public abstract enum Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.super Ljava/lang/Enum;
.source "TransferNetworkConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

.field public static final enum ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

.field private static final LOGGER:Lcom/amazonaws/logging/Log;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MOBILE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

.field public static final enum WIFI:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 33
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 43
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$2;

    const-string v1, "WIFI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->WIFI:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 54
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$3;

    const-string v1, "MOBILE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MOBILE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->WIFI:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MOBILE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

    .line 65
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->values()[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    move-result-object v0

    array-length v1, v0

    :goto_3b
    if-ge v2, v1, :cond_4b

    aget-object v3, v0, v2

    .line 66
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 70
    :cond_4b
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->LOGGER:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getConnectionType(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .registers 4

    .line 90
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 91
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object p0

    .line 94
    :cond_11
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->LOGGER:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown connection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " transfer will have connection type set to ANY."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 96
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .registers 2

    .line 29
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .registers 1

    .line 29
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    invoke-virtual {v0}, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object v0
.end method


# virtual methods
.method isConnected(Landroid/net/ConnectivityManager;)Z
    .registers 2

    .line 78
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->verify(Landroid/net/NetworkInfo;)Z

    move-result p1

    return p1
.end method

.method protected abstract verify(Landroid/net/NetworkInfo;)Z
.end method

###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType.AnonymousClass1 (com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType$1)
.class final enum Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;
.super Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.source "TransferNetworkConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;-><init>(Ljava/lang/String;ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;)V

    return-void
.end method


# virtual methods
.method protected verify(Landroid/net/NetworkInfo;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 36
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType.AnonymousClass2 (com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType$2)
.class final enum Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$2;
.super Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.source "TransferNetworkConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;-><init>(Ljava/lang/String;ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;)V

    return-void
.end method


# virtual methods
.method protected verify(Landroid/net/NetworkInfo;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 46
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 47
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-ne p1, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType.AnonymousClass3 (com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType$3)
.class final enum Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$3;
.super Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.source "TransferNetworkConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;-><init>(Ljava/lang/String;ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;)V

    return-void
.end method


# virtual methods
.method protected verify(Landroid/net/NetworkInfo;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 57
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 58
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
