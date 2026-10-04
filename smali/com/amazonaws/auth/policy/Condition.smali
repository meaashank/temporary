###### Class com.amazonaws.auth.policy.Condition (com.amazonaws.auth.policy.Condition)
.class public Lcom/amazonaws/auth/policy/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .registers 2

    .line 177
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Condition;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->c:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/auth/policy/Condition;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/auth/policy/Condition;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Condition;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .registers 2

    .line 156
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Condition;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->c:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .registers 2

    .line 166
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Condition;->b(Ljava/lang/String;)V

    return-object p0
.end method
