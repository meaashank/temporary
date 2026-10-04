###### Class com.amazonaws.auth.policy.internal.JsonPolicyReader (com.amazonaws.auth.policy.internal.JsonPolicyReader)
.class public Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;
.super Ljava/lang/Object;
.source "JsonPolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AWS"

.field private static final b:Ljava/lang/String; = "Service"

.field private static final c:Ljava/lang/String; = "Federated"


# instance fields
.field private d:Lcom/amazonaws/util/json/AwsJsonReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal;
    .registers 5

    const-string v0, "AWS"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 240
    new-instance p1, Lcom/amazonaws/auth/policy/Principal;

    invoke-direct {p1, p2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_e
    const-string v0, "Service"

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 242
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1c
    const-string v0, "Federated"

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 244
    invoke-static {p2}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 245
    new-instance p1, Lcom/amazonaws/auth/policy/Principal;

    .line 246
    invoke-static {p2}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;)V

    return-object p1

    .line 248
    :cond_34
    new-instance p1, Lcom/amazonaws/auth/policy/Principal;

    const-string v0, "Federated"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 251
    :cond_3c
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schema "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid value for the principal."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Lcom/amazonaws/util/json/AwsJsonReader;)Lcom/amazonaws/auth/policy/Statement;
    .registers 6

    .line 121
    new-instance v0, Lcom/amazonaws/auth/policy/Statement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/policy/Statement;-><init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    .line 123
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 124
    :goto_9
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 125
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Effect"

    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 127
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/auth/policy/Statement$Effect;->valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement$Effect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/auth/policy/Statement;->a(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    goto :goto_9

    :cond_27
    const-string v3, "Sid"

    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 129
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/auth/policy/Statement;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_37
    const-string v3, "Action"

    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->b(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/auth/policy/Statement;->a(Ljava/util/Collection;)V

    goto :goto_9

    :cond_47
    const-string v3, "Resource"

    .line 132
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 133
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->c(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/auth/policy/Statement;->b(Ljava/util/Collection;)V

    goto :goto_9

    :cond_57
    const-string v3, "Principal"

    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 135
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/auth/policy/Statement;->c(Ljava/util/Collection;)V

    goto :goto_9

    :cond_67
    const-string v3, "Condition"

    .line 136
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 137
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->e(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/auth/policy/Statement;->a(Ljava/util/List;)V

    goto :goto_9

    .line 139
    :cond_77
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_9

    .line 142
    :cond_7b
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    .line 144
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Statement;->b()Lcom/amazonaws/auth/policy/Statement$Effect;

    move-result-object p1

    if-nez p1, :cond_85

    move-object v0, v1

    :cond_85
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Lcom/amazonaws/util/json/AwsJsonReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")V"
        }
    .end annotation

    .line 287
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 288
    :goto_3
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 289
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 291
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 292
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->a()V

    .line 293
    :goto_1b
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 294
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 296
    :cond_29
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->b()V

    goto :goto_34

    .line 298
    :cond_2d
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_34
    new-instance v2, Lcom/amazonaws/auth/policy/Condition;

    invoke-direct {v2}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    invoke-virtual {v2, p2}, Lcom/amazonaws/auth/policy/Condition;->c(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazonaws/auth/policy/Condition;->d(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/policy/Condition;->b(Ljava/util/List;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v0

    .line 300
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 303
    :cond_49
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-void
.end method

.method private b(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 157
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 158
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->a()V

    .line 159
    :goto_e
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 160
    new-instance v1, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 162
    :cond_21
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->b()V

    goto :goto_31

    .line 164
    :cond_25
    new-instance v1, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_31
    return-object v0
.end method

.method private c(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 179
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 180
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->a()V

    .line 181
    :goto_e
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 182
    new-instance v1, Lcom/amazonaws/auth/policy/Resource;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 184
    :cond_21
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->b()V

    goto :goto_31

    .line 186
    :cond_25
    new-instance v1, Lcom/amazonaws/auth/policy/Resource;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_31
    return-object v0
.end method

.method private d(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 202
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 203
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 205
    :goto_e
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 206
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 208
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->a()V

    .line 209
    :goto_21
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 210
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 212
    :cond_33
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->b()V

    goto :goto_e

    .line 214
    :cond_37
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 217
    :cond_43
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    goto :goto_58

    .line 219
    :cond_47
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "*"

    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 221
    sget-object p1, Lcom/amazonaws/auth/policy/Principal;->d:Lcom/amazonaws/auth/policy/Principal;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_58
    return-object v0

    .line 223
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid principals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 266
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 267
    :goto_8
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 268
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->a(Ljava/util/List;Ljava/lang/String;Lcom/amazonaws/util/json/AwsJsonReader;)V

    goto :goto_8

    .line 270
    :cond_16
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    .registers 5

    if-eqz p1, :cond_99

    .line 65
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    .line 66
    new-instance p1, Lcom/amazonaws/auth/policy/Policy;

    invoke-direct {p1}, Lcom/amazonaws/auth/policy/Policy;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 70
    :try_start_17
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 71
    :goto_1c
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 72
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Id"

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 74
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/policy/Policy;->a(Ljava/lang/String;)V

    goto :goto_1c

    :cond_3c
    const-string v2, "Statement"

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 76
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->a()V

    .line 77
    :goto_49
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 78
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->a(Lcom/amazonaws/util/json/AwsJsonReader;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 80
    :cond_5b
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->b()V

    goto :goto_1c

    .line 82
    :cond_61
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_1c

    .line 85
    :cond_67
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6c} :catch_77
    .catchall {:try_start_17 .. :try_end_6c} :catchall_75

    .line 93
    :try_start_6c
    iget-object v1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->k()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_71} :catch_71

    .line 97
    :catch_71
    invoke-virtual {p1, v0}, Lcom/amazonaws/auth/policy/Policy;->a(Ljava/util/Collection;)V

    return-object p1

    :catchall_75
    move-exception p1

    goto :goto_93

    :catch_77
    move-exception p1

    .line 88
    :try_start_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to generate policy object fron JSON string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_75

    .line 93
    :goto_93
    :try_start_93
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->d:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->k()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_98} :catch_98

    .line 96
    :catch_98
    throw p1

    .line 62
    :cond_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON string cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.amazonaws.auth.policy.internal.JsonPolicyReader.NamedAction (com.amazonaws.auth.policy.internal.JsonPolicyReader$NamedAction)
.class Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;
.super Ljava/lang/Object;
.source "JsonPolicyReader.java"

# interfaces
.implements Lcom/amazonaws/auth/policy/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedAction"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;->a:Ljava/lang/String;

    return-object v0
.end method
