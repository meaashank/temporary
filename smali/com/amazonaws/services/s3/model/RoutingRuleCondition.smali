###### Class com.amazonaws.services.s3.model.RoutingRuleCondition (com.amazonaws.services.s3.model.RoutingRuleCondition)
.class public Lcom/amazonaws/services/s3/model/RoutingRuleCondition;
.super Ljava/lang/Object;
.source "RoutingRuleCondition.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RoutingRuleCondition;
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RoutingRuleCondition;
    .registers 2

    .line 86
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->c(Ljava/lang/String;)V

    return-object p0
.end method
