###### Class com.amazonaws.services.s3.model.FilterRule (com.amazonaws.services.s3.model.FilterRule)
.class public Lcom/amazonaws/services/s3/model/FilterRule;
.super Ljava/lang/Object;
.source "FilterRule.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/FilterRule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->a:Ljava/lang/String;

    return-void

    .line 43
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FilterRule Name is a required argument"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/FilterRule;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/FilterRule;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/FilterRule;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/FilterRule;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/FilterRule;
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/FilterRule;->c(Ljava/lang/String;)V

    return-object p0
.end method
