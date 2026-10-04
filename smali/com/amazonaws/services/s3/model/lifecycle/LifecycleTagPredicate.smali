###### Class com.amazonaws.services.s3.model.lifecycle.LifecycleTagPredicate (com.amazonaws.services.s3.model.lifecycle.LifecycleTagPredicate)
.class public final Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;
.super Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;
.source "LifecycleTagPredicate.java"


# instance fields
.field private final a:Lcom/amazonaws/services/s3/model/Tag;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/Tag;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;->a:Lcom/amazonaws/services/s3/model/Tag;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/Tag;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;->a:Lcom/amazonaws/services/s3/model/Tag;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;)V
    .registers 2

    .line 42
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;->a(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;)V

    return-void
.end method
