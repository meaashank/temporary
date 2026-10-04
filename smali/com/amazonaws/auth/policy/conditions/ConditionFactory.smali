###### Class com.amazonaws.auth.policy.conditions.ConditionFactory (com.amazonaws.auth.policy.conditions.ConditionFactory)
.class public final Lcom/amazonaws/auth/policy/conditions/ConditionFactory;
.super Ljava/lang/Object;
.source "ConditionFactory.java"


# static fields
.field public static final a:Ljava/lang/String; = "aws:CurrentTime"

.field public static final b:Ljava/lang/String; = "aws:SecureTransport"

.field public static final c:Ljava/lang/String; = "aws:SourceIp"

.field public static final d:Ljava/lang/String; = "aws:UserAgent"

.field public static final e:Ljava/lang/String; = "aws:EpochTime"

.field public static final f:Ljava/lang/String; = "aws:Referer"

.field public static final g:Ljava/lang/String; = "aws:SourceArn"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/auth/policy/Condition;
    .registers 3

    .line 132
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/BooleanCondition;

    const-string v1, "aws:SecureTransport"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/conditions/BooleanCondition;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .registers 4

    .line 151
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition;

    const-string v1, "aws:UserAgent"

    invoke-direct {v0, p0, v1, p1}, Lcom/amazonaws/auth/policy/conditions/StringCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .registers 4

    .line 121
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition;

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnLike:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const-string v2, "aws:SourceArn"

    invoke-direct {v0, v1, v2, p0}, Lcom/amazonaws/auth/policy/conditions/ArnCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .registers 4

    .line 168
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition;

    const-string v1, "aws:Referer"

    invoke-direct {v0, p0, v1, p1}, Lcom/amazonaws/auth/policy/conditions/StringCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
