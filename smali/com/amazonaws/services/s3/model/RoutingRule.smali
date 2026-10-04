###### Class com.amazonaws.services.s3.model.RoutingRule (com.amazonaws.services.s3.model.RoutingRule)
.class public Lcom/amazonaws/services/s3/model/RoutingRule;
.super Ljava/lang/Object;
.source "RoutingRule.java"


# instance fields
.field a:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

.field b:Lcom/amazonaws/services/s3/model/RedirectRule;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/RoutingRuleCondition;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RoutingRule;->a:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/RedirectRule;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RoutingRule;->b:Lcom/amazonaws/services/s3/model/RedirectRule;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/RoutingRuleCondition;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RoutingRule;->a:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    return-void
.end method

.method public b()Lcom/amazonaws/services/s3/model/RedirectRule;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RoutingRule;->b:Lcom/amazonaws/services/s3/model/RedirectRule;

    return-object v0
.end method

.method public b(Lcom/amazonaws/services/s3/model/RedirectRule;)Lcom/amazonaws/services/s3/model/RoutingRule;
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RoutingRule;->a(Lcom/amazonaws/services/s3/model/RedirectRule;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/RoutingRuleCondition;)Lcom/amazonaws/services/s3/model/RoutingRule;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RoutingRule;->a(Lcom/amazonaws/services/s3/model/RoutingRuleCondition;)V

    return-object p0
.end method
