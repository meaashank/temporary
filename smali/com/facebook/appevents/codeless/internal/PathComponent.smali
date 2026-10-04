###### Class com.facebook.appevents.codeless.internal.PathComponent (com.facebook.appevents.codeless.internal.PathComponent)
.class public final Lcom/facebook/appevents/codeless/internal/PathComponent;
.super Ljava/lang/Object;
.source "PathComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;
    }
.end annotation


# static fields
.field private static final PATH_CLASS_NAME_KEY:Ljava/lang/String; = "class_name"

.field private static final PATH_DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field private static final PATH_HINT_KEY:Ljava/lang/String; = "hint"

.field private static final PATH_ID_KEY:Ljava/lang/String; = "id"

.field private static final PATH_INDEX_KEY:Ljava/lang/String; = "index"

.field private static final PATH_MATCH_BITMASK_KEY:Ljava/lang/String; = "match_bitmask"

.field private static final PATH_TAG_KEY:Ljava/lang/String; = "tag"

.field private static final PATH_TEXT_KEY:Ljava/lang/String; = "text"


# instance fields
.field public final className:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final hint:Ljava/lang/String;

.field public final id:I

.field public final index:I

.field public final matchBitmask:I

.field public final tag:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "class_name"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v0, "index"

    const/4 v1, -0x1

    .line 65
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    const-string v0, "id"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/appevents/codeless/internal/PathComponent;->id:I

    const-string v0, "text"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/internal/PathComponent;->text:Ljava/lang/String;

    const-string v0, "tag"

    .line 68
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/internal/PathComponent;->tag:Ljava/lang/String;

    const-string v0, "description"

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/internal/PathComponent;->description:Ljava/lang/String;

    const-string v0, "hint"

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/internal/PathComponent;->hint:Ljava/lang/String;

    const-string v0, "match_bitmask"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    return-void
.end method

###### Class com.facebook.appevents.codeless.internal.PathComponent.MatchBitmaskType (com.facebook.appevents.codeless.internal.PathComponent$MatchBitmaskType)
.class public final enum Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;
.super Ljava/lang/Enum;
.source "PathComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/internal/PathComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchBitmaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

.field public static final enum DESCRIPTION:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

.field public static final enum HINT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

.field public static final enum ID:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

.field public static final enum TAG:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

.field public static final enum TEXT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 28
    new-instance v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    const-string v1, "ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->ID:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 29
    new-instance v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    const-string v1, "TEXT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TEXT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 30
    new-instance v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    const-string v1, "TAG"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TAG:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 31
    new-instance v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    const-string v1, "DESCRIPTION"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->DESCRIPTION:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 32
    new-instance v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    const-string v1, "HINT"

    const/16 v7, 0x10

    invoke-direct {v0, v1, v5, v7}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->HINT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    const/4 v0, 0x5

    .line 27
    new-array v0, v0, [Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    sget-object v1, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->ID:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TEXT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TAG:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->DESCRIPTION:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->HINT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->$VALUES:[Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;
    .registers 2

    .line 27
    const-class v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;
    .registers 1

    .line 27
    sget-object v0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->$VALUES:[Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v0}, [Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->value:I

    return v0
.end method
