###### Class com.amazonaws.auth.policy.Statement (com.amazonaws.auth.policy.Statement)
.class public Lcom/amazonaws/auth/policy/Statement;
.super Ljava/lang/Object;
.source "Statement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/Statement$Effect;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/auth/policy/Statement$Effect;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->c:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->d:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->f:Ljava/util/List;

    .line 96
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->b:Lcom/amazonaws/auth/policy/Statement$Effect;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/auth/policy/Action;)Lcom/amazonaws/auth/policy/Statement;
    .registers 2

    .line 231
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Statement;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs a([Lcom/amazonaws/auth/policy/Condition;)Lcom/amazonaws/auth/policy/Statement;
    .registers 2

    .line 347
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Statement;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs a([Lcom/amazonaws/auth/policy/Resource;)Lcom/amazonaws/auth/policy/Statement;
    .registers 2

    .line 280
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Statement;->b(Ljava/util/Collection;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/auth/policy/Statement$Effect;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->b:Lcom/amazonaws/auth/policy/Statement$Effect;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;)V"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->d:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->f:Ljava/util/List;

    return-void
.end method

.method public varargs a([Lcom/amazonaws/auth/policy/Principal;)V
    .registers 3

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->c(Ljava/util/Collection;)V

    return-void
.end method

.method public b()Lcom/amazonaws/auth/policy/Statement$Effect;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->b:Lcom/amazonaws/auth/policy/Statement$Effect;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement;
    .registers 2

    .line 161
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Statement;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs b([Lcom/amazonaws/auth/policy/Principal;)Lcom/amazonaws/auth/policy/Statement;
    .registers 2

    .line 407
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Statement;->a([Lcom/amazonaws/auth/policy/Principal;)V

    return-object p0
.end method

.method public b(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;)V"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->e:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->d:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;)V"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->c:Ljava/util/List;

    return-void
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->e:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->f:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->c:Ljava/util/List;

    return-object v0
.end method

###### Class com.amazonaws.auth.policy.Statement.Effect (com.amazonaws.auth.policy.Statement$Effect)
.class public final enum Lcom/amazonaws/auth/policy/Statement$Effect;
.super Ljava/lang/Enum;
.source "Statement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/Statement$Effect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/Statement$Effect;

.field public static final enum Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

.field public static final enum Deny:Lcom/amazonaws/auth/policy/Statement$Effect;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 70
    new-instance v0, Lcom/amazonaws/auth/policy/Statement$Effect;

    const-string v1, "Allow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Statement$Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

    .line 73
    new-instance v0, Lcom/amazonaws/auth/policy/Statement$Effect;

    const-string v1, "Deny"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/auth/policy/Statement$Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/Statement$Effect;->Deny:Lcom/amazonaws/auth/policy/Statement$Effect;

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [Lcom/amazonaws/auth/policy/Statement$Effect;

    sget-object v1, Lcom/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/Statement$Effect;->Deny:Lcom/amazonaws/auth/policy/Statement$Effect;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/auth/policy/Statement$Effect;->$VALUES:[Lcom/amazonaws/auth/policy/Statement$Effect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement$Effect;
    .registers 2

    .line 67
    const-class v0, Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/Statement$Effect;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/Statement$Effect;
    .registers 1

    .line 67
    sget-object v0, Lcom/amazonaws/auth/policy/Statement$Effect;->$VALUES:[Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/Statement$Effect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/Statement$Effect;

    return-object v0
.end method
