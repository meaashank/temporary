###### Class com.amazonaws.auth.policy.conditions.S3ConditionFactory (com.amazonaws.auth.policy.conditions.S3ConditionFactory)
.class public final Lcom/amazonaws/auth/policy/conditions/S3ConditionFactory;
.super Ljava/lang/Object;
.source "S3ConditionFactory.java"


# static fields
.field public static final a:Ljava/lang/String; = "s3:x-amz-acl"

.field public static final b:Ljava/lang/String; = "s3:LocationConstraint"

.field public static final c:Ljava/lang/String; = "s3:prefix"

.field public static final d:Ljava/lang/String; = "s3:delimiter"

.field public static final e:Ljava/lang/String; = "s3:max-keys"

.field public static final f:Ljava/lang/String; = "s3:x-amz-copy-source"

.field public static final g:Ljava/lang/String; = "s3:x-amz-metadata-directive"

.field public static final h:Ljava/lang/String; = "s3:VersionId"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/auth/policy/Condition;
    .registers 4

    .line 106
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition;

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v2, "s3:x-amz-acl"

    .line 107
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazonaws/auth/policy/conditions/StringCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
