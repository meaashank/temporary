###### Class com.amazonaws.auth.policy.conditions.IpAddressCondition (com.amazonaws.auth.policy.conditions.IpAddressCondition)
.class public Lcom/amazonaws/auth/policy/conditions/IpAddressCondition;
.super Lcom/amazonaws/auth/policy/Condition;
.source "IpAddressCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->a:Ljava/lang/String;

    const-string p1, "aws:SourceIp"

    .line 91
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 92
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 72
    sget-object v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->IpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V

    return-void
.end method

###### Class com.amazonaws.auth.policy.conditions.IpAddressCondition.IpAddressComparisonType (com.amazonaws.auth.policy.conditions.IpAddressCondition$IpAddressComparisonType)
.class public final enum Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
.super Ljava/lang/Enum;
.source "IpAddressCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/conditions/IpAddressCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpAddressComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

.field public static final enum IpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

.field public static final enum NotIpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    const-string v1, "IpAddress"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->IpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    .line 50
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    const-string v1, "NotIpAddress"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->NotIpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->IpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->NotIpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->$VALUES:[Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    .registers 2

    .line 37
    const-class v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    .registers 1

    .line 37
    sget-object v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->$VALUES:[Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    return-object v0
.end method
