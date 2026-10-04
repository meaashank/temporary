###### Class com.amazonaws.services.s3.model.lifecycle.LifecyclePrefixPredicate (com.amazonaws.services.s3.model.lifecycle.LifecyclePrefixPredicate)
.class public final Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;
.super Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;
.source "LifecyclePrefixPredicate.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;)V
    .registers 2

    .line 44
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;->a(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;)V

    return-void
.end method
