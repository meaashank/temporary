###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation (com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;
.super Ljava/lang/Object;
.source "ChallengeContinuation.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/CognitoIdentityProviderContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/CognitoIdentityProviderContinuation<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Z = false


# instance fields
.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field private final k:Z


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .registers 9

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 80
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->e:Landroid/content/Context;

    .line 81
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->f:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->g:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 84
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->i:Ljava/lang/String;

    .line 85
    iput-object p8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 86
    iput-boolean p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->k:Z

    .line 87
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    return-object p0
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .registers 5

    .line 136
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->c:Ljava/util/Map;

    const-string v2, "USERNAME"

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->c:Ljava/util/Map;

    const-string v2, "SECRET_HASH"

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->c(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->e(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->a(Ljava/util/Map;)V

    .line 143
    iget-boolean v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->k:Z

    if-eqz v1, :cond_45

    .line 144
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;

    invoke-direct {v2, p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_59

    .line 165
    :cond_45
    :try_start_45
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_4f

    goto :goto_56

    :catch_4f
    move-exception v0

    .line 167
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$2;

    invoke-direct {v1, p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 174
    :goto_56
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_59
    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;
.super Ljava/lang/Object;
.source "ChallengeContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)V
    .registers 3

    .line 144
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 147
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-static {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_2a

    :catch_23
    move-exception v1

    .line 152
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1$1;

    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 159
    :goto_2a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation.AnonymousClass1.RunnableC00241 (com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation$1$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1$1;
.super Ljava/lang/Object;
.source "ChallengeContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;Ljava/lang/Exception;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1$1;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$1$1;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$2;
.super Ljava/lang/Object;
.source "ChallengeContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;Ljava/lang/Exception;)V
    .registers 3

    .line 167
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method
