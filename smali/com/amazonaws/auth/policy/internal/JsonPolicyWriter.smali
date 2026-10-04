###### Class com.amazonaws.auth.policy.internal.JsonPolicyWriter (com.amazonaws.auth.policy.internal.JsonPolicyWriter)
.class public Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;
.super Ljava/lang/Object;
.source "JsonPolicyWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
    }
.end annotation


# static fields
.field private static final c:Lcom/amazonaws/logging/Log;


# instance fields
.field private a:Lcom/amazonaws/util/json/AwsJsonWriter;

.field private final b:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.amazonaws.auth.policy"

    .line 52
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->c:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b:Ljava/io/Writer;

    .line 59
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b:Ljava/io/Writer;

    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private a()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 343
    iget-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 380
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 381
    iget-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1, p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b(Ljava/lang/String;)V

    .line 329
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_7

    .line 331
    :cond_19
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "Condition"

    .line 152
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_38

    .line 163
    :cond_4c
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a()V

    goto :goto_11

    .line 165
    :cond_50
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method private b(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    const-string v0, "Version"

    .line 99
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Id"

    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    const-string v0, "Statement"

    .line 104
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->c()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Statement;

    .line 107
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 109
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "Sid"

    .line 110
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const-string v1, "Effect"

    .line 113
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->b()Lcom/amazonaws/auth/policy/Statement$Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/auth/policy/Statement$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-direct {p0, v1, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->f()Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_72

    .line 117
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->d(Ljava/util/List;)V

    .line 119
    :cond_72
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->c()Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    .line 121
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->c(Ljava/util/List;)V

    .line 123
    :cond_85
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->d()Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_98

    .line 125
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b(Ljava/util/List;)V

    .line 127
    :cond_98
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->e()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 129
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/util/List;)V

    .line 131
    :cond_ab
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    goto/16 :goto_2e

    .line 134
    :cond_b2
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b()V

    .line 136
    iget-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 138
    iget-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->f()V

    .line 140
    iget-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 362
    iget-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;)V"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/Resource;

    .line 179
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Resource;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    const-string p1, "Resource"

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;)V"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/Action;

    .line 194
    invoke-interface {v1}, Lcom/amazonaws/auth/policy/Action;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    const-string p1, "Action"

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private d(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;)V"
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Principal;

    sget-object v3, Lcom/amazonaws/auth/policy/Principal;->d:Lcom/amazonaws/auth/policy/Principal;

    invoke-virtual {v0, v3}, Lcom/amazonaws/auth/policy/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p1, "Principal"

    .line 207
    sget-object v0, Lcom/amazonaws/auth/policy/Principal;->d:Lcom/amazonaws/auth/policy/Principal;

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    :cond_22
    const-string v0, "Principal"

    .line 209
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->e(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 214
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 217
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_5f

    .line 218
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 220
    :cond_5f
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_33

    .line 224
    :cond_69
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a()V

    :goto_6c
    return-void
.end method

.method private e(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/Principal;

    .line 241
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Principal;->a()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 246
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Principal;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_35
    return-object v0
.end method

.method private f(Ljava/util/List;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/Condition;

    .line 307
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Condition;->a()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Condition;->b()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 311
    new-instance v4, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    invoke-direct {v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;-><init>()V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_2b
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    .line 315
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Condition;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_9

    :cond_39
    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    .registers 4

    .line 73
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 77
    :try_start_6
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_12
    .catchall {:try_start_6 .. :try_end_a} :catchall_10

    .line 84
    :try_start_a
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_2e

    :catch_12
    move-exception p1

    .line 79
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to serialize policy to JSON string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_10

    .line 84
    :goto_2e
    :try_start_2e
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_33

    .line 87
    :catch_33
    throw p1

    .line 74
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Policy cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.amazonaws.auth.policy.internal.JsonPolicyWriter.ConditionsByKey (com.amazonaws.auth.policy.internal.JsonPolicyWriter$ConditionsByKey)
.class Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
.super Ljava/lang/Object;
.source "JsonPolicyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConditionsByKey"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    .line 286
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 288
    :cond_11
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_14
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->a:Ljava/util/Map;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
