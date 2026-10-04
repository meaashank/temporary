###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.AuthEventTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.AuthEventTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "AuthEventTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;
    .registers 1

    .line 82
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 83
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;

    .line 84
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthEventTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 6

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventId"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventType"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDate"

    .line 40
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventResponse"

    .line 45
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 49
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v0

    const-string v1, "EventRisk"

    .line 50
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 51
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventRiskTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventRiskTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventRiskTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 53
    :cond_61
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v0

    const-string v1, "ChallengeResponses"

    .line 56
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_77
    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeResponseType;

    if-eqz v1, :cond_77

    .line 60
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChallengeResponseTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChallengeResponseTypeJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChallengeResponseTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeResponseType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_77

    .line 64
    :cond_8d
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 67
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v0

    const-string v1, "EventContextData"

    .line 68
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 71
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 72
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object p1

    const-string v0, "EventFeedback"

    .line 73
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventFeedbackTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventFeedbackTypeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventFeedbackTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 76
    :cond_bc
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
