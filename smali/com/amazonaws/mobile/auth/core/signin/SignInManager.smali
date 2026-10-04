###### Class com.amazonaws.mobile.auth.core.signin.SignInManager (com.amazonaws.mobile.auth.core.signin.SignInManager)
.class public Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
.super Ljava/lang/Object;
.source "SignInManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SignInManager"

.field private static volatile c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/amazonaws/mobile/auth/core/SignInResultHandler;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b:Ljava/util/Map;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->e:Landroid/util/SparseArray;

    .line 64
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 67
    :try_start_29
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    if-eqz v2, :cond_1d

    .line 69
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b()Lcom/amazonaws/mobile/config/AWSConfiguration;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;->a(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 70
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    instance-of v3, v2, Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;

    if-eqz v3, :cond_1d

    .line 72
    check-cast v2, Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;

    .line 73
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->e:Landroid/util/SparseArray;

    invoke-interface {v2}, Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;->a()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_50} :catch_71
    .catch Ljava/lang/InstantiationException; {:try_start_29 .. :try_end_50} :catch_51

    goto :goto_1d

    .line 79
    :catch_51
    sget-object v2, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " . Skipping this provider."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 77
    :catch_71
    sget-object v2, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " . Skipping this provider."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 84
    :cond_91
    sput-object p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    return-void
.end method

.method public static declared-synchronized a()Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    .registers 2

    const-class v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    .registers 3

    const-class v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    monitor-enter v0

    .line 102
    :try_start_3
    sget-object v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    if-nez v1, :cond_e

    .line 103
    new-instance v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 105
    :cond_e
    sget-object p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 101
    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/Class;)Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;)",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    if-eqz v0, :cond_b

    return-object v0

    .line 273
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such provider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized c()V
    .registers 2

    const-class v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 130
    :try_start_4
    sput-object v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 131
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    .line 129
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Class;Landroid/view/View;)Landroid/view/View$OnClickListener;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a(Ljava/lang/Class;)Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    move-result-object p1

    .line 264
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->f:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->b(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;)Landroid/app/Activity;

    move-result-object v0

    .line 265
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g()Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

    move-result-object v1

    .line 264
    invoke-interface {p1, v0, p2, v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;->a(Landroid/app/Activity;Landroid/view/View;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method public a(I[Ljava/lang/String;[I)V
    .registers 5

    .line 310
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;

    if-eqz v0, :cond_d

    .line 312
    invoke-interface {v0, p1, p2, p3}, Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;->a(I[Ljava/lang/String;[I)V

    :cond_d
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/IdentityProvider;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V
    .registers 6

    if-eqz p2, :cond_2b

    .line 228
    invoke-interface {p2}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given provider not previously logged in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    .line 233
    :cond_12
    new-instance v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;-><init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;Lcom/amazonaws/mobile/auth/core/signin/SignInManager$1;)V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->f:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    .line 234
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object p1

    iget-object p3, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->f:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    invoke-virtual {p1, p3}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V

    .line 235
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V

    return-void

    .line 225
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The sign-in provider cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V
    .registers 5

    .line 247
    new-instance v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;-><init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;Lcom/amazonaws/mobile/auth/core/signin/SignInManager$1;)V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->f:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    .line 249
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->f:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    invoke-virtual {p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/auth/core/SignInResultHandler;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d:Lcom/amazonaws/mobile/auth/core/SignInResultHandler;

    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .registers 7

    .line 290
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    .line 291
    invoke-interface {v1, p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 292
    invoke-interface {v1, p1, p2, p3}, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;->a(IILandroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/amazonaws/mobile/auth/core/SignInResultHandler;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d:Lcom/amazonaws/mobile/auth/core/SignInResultHandler;

    return-object v0
.end method

.method public d()Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;
    .registers 5

    .line 144
    sget-object v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Providers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    .line 149
    invoke-interface {v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;->c()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 150
    sget-object v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshing provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.amazonaws.mobile.auth.core.signin.SignInManager.AnonymousClass1 (com.amazonaws.mobile.auth.core.signin.SignInManager$1)
.class synthetic Lcom/amazonaws/mobile/auth/core/signin/SignInManager$1;
.super Ljava/lang/Object;
.source "SignInManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.mobile.auth.core.signin.SignInManager.SignInProviderResultAdapter (com.amazonaws.mobile.auth.core.signin.SignInManager$SignInProviderResultAdapter)
.class Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;
.super Ljava/lang/Object;
.source "SignInManager.java"

# interfaces
.implements Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignInProviderResultAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

.field private final b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

.field private final c:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V
    .registers 4

    .line 162
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->a:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p3, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    .line 164
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->c:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;Lcom/amazonaws/mobile/auth/core/signin/SignInManager$1;)V
    .registers 5

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;-><init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V

    return-void
.end method

.method private a()Landroid/app/Activity;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;)Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;)Landroid/app/Activity;
    .registers 1

    .line 157
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 3

    .line 174
    new-instance v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$1;-><init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/internal/util/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V
    .registers 4

    .line 196
    new-instance v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;-><init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/internal/util/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 3

    .line 185
    new-instance v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$2;-><init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/internal/util/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.signin.SignInManager.SignInProviderResultAdapter.AnonymousClass1 (com.amazonaws.mobile.auth.core.signin.SignInManager$SignInProviderResultAdapter$1)
.class Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$1;
.super Ljava/lang/Object;
.source "SignInManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

.field final synthetic b:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 3

    .line 174
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$1;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$1;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->a(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;)Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.signin.SignInManager.SignInProviderResultAdapter.AnonymousClass2 (com.amazonaws.mobile.auth.core.signin.SignInManager$SignInProviderResultAdapter$2)
.class Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$2;
.super Ljava/lang/Object;
.source "SignInManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->b(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

.field final synthetic b:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 3

    .line 185
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$2;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$2;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->a(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;)Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;->b(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.signin.SignInManager.SignInProviderResultAdapter.AnonymousClass3 (com.amazonaws.mobile.auth.core.signin.SignInManager$SignInProviderResultAdapter$3)
.class Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;
.super Ljava/lang/Object;
.source "SignInManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V
    .registers 4

    .line 196
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;->c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;->a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    iput-object p3, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;->c:Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->a(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;)Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;->a:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter$3;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    return-void
.end method
