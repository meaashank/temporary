###### Class com.amazonaws.services.kms.model.transform.ScheduleKeyDeletionResultJsonUnmarshaller (com.amazonaws.services.kms.model.transform.ScheduleKeyDeletionResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "ScheduleKeyDeletionResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;
    .registers 1

    .line 54
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;

    .line 56
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;
    .registers 6

    .line 30
    new-instance v0, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 34
    :goto_c
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 35
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyId"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 37
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_2a
    const-string v3, "DeletionDate"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 40
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Date;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;->a(Ljava/util/Date;)V

    goto :goto_c

    .line 43
    :cond_3e
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 46
    :cond_42
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;

    move-result-object p1

    return-object p1
.end method
