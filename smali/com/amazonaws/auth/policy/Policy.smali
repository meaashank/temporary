###### Class com.amazonaws.auth.policy.Policy (com.amazonaws.auth.policy.Policy)
.class public Lcom/amazonaws/auth/policy/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field private static final a:Ljava/lang/String; = "2012-10-17"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2012-10-17"

    .line 64
    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->c:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2012-10-17"

    .line 64
    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->c:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->d:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Policy;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/Policy;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/amazonaws/auth/policy/Policy;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    .registers 2

    .line 223
    new-instance v0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;

    invoke-direct {v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->a(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .registers 6

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/amazonaws/auth/policy/Policy;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/auth/policy/Statement;

    .line 230
    invoke-virtual {v2}, Lcom/amazonaws/auth/policy/Statement;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 231
    invoke-virtual {v2}, Lcom/amazonaws/auth/policy/Statement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    const/4 v1, 0x0

    .line 235
    iget-object v2, p0, Lcom/amazonaws/auth/policy/Policy;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/auth/policy/Statement;

    .line 236
    invoke-virtual {v3}, Lcom/amazonaws/auth/policy/Statement;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    goto :goto_2c

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_3f

    .line 241
    :cond_4c
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/auth/policy/Statement;->a(Ljava/lang/String;)V

    goto :goto_2c

    :cond_54
    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/auth/policy/Statement;)Lcom/amazonaws/auth/policy/Policy;
    .registers 2

    .line 198
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Policy;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Policy;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;)V"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->d:Ljava/util/List;

    .line 178
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Policy;->e()V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Policy;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->d:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 210
    new-instance v0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;

    invoke-direct {v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
