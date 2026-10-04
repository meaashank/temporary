###### Class com.amazonaws.RequestClientOptions (com.amazonaws.RequestClientOptions)
.class public final Lcom/amazonaws/RequestClientOptions;
.super Ljava/lang/Object;
.source "RequestClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/RequestClientOptions$Marker;
    }
.end annotation


# static fields
.field public static final a:I = 0x20001

.field private static final b:I = 0x11


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazonaws/RequestClientOptions$Marker;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/amazonaws/RequestClientOptions;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1b

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1b
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    sget-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {p0, v0}, Lcom/amazonaws/RequestClientOptions;->a(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Lcom/amazonaws/RequestClientOptions$Marker;Ljava/lang/String;)V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/RequestClientOptions;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->c:Ljava/util/Map;

    sget-object v1, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    .line 101
    :cond_e
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/RequestClientOptions;->a(Lcom/amazonaws/RequestClientOptions$Marker;Ljava/lang/String;)V

    return-void
.end method

###### Class com.amazonaws.RequestClientOptions.Marker (com.amazonaws.RequestClientOptions$Marker)
.class public final enum Lcom/amazonaws/RequestClientOptions$Marker;
.super Ljava/lang/Enum;
.source "RequestClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/RequestClientOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Marker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/RequestClientOptions$Marker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/RequestClientOptions$Marker;

.field public static final enum USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Lcom/amazonaws/RequestClientOptions$Marker;

    const-string v1, "USER_AGENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/RequestClientOptions$Marker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Lcom/amazonaws/RequestClientOptions$Marker;

    sget-object v1, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->$VALUES:[Lcom/amazonaws/RequestClientOptions$Marker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/RequestClientOptions$Marker;
    .registers 2

    .line 39
    const-class v0, Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/RequestClientOptions$Marker;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/RequestClientOptions$Marker;
    .registers 1

    .line 39
    sget-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->$VALUES:[Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {v0}, [Lcom/amazonaws/RequestClientOptions$Marker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/RequestClientOptions$Marker;

    return-object v0
.end method
