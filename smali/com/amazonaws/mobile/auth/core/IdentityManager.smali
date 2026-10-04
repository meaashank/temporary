###### Class com.amazonaws.mobile.auth.core.IdentityManager (com.amazonaws.mobile.auth.core.IdentityManager)
.class public Lcom/amazonaws/mobile/auth/core/IdentityManager;
.super Ljava/lang/Object;
.source "IdentityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;,
        Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;,
        Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "IdentityManager"

.field private static final c:Ljava/lang/String; = "awsconfiguration.json"

.field private static n:Lcom/amazonaws/mobile/auth/core/IdentityManager; = null

.field private static final o:Ljava/lang/String; = "com.amazonaws.android.auth"

.field private static final p:Ljava/lang/String; = "expirationDate"


# instance fields
.field a:Z

.field private final d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

.field private final e:Landroid/content/Context;

.field private f:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field private final g:Lcom/amazonaws/ClientConfiguration;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/util/concurrent/CountDownLatch;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

.field private l:Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

.field private final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 122
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    .line 125
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i:Ljava/util/concurrent/CountDownLatch;

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    .line 167
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    .line 169
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    .line 208
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 209
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/ClientConfiguration;

    .line 210
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    .line 211
    new-instance p1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    const-string v1, "com.amazonaws.android.auth"

    iget-boolean v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->q:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .registers 7

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 122
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    .line 125
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i:Ljava/util/concurrent/CountDownLatch;

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    .line 167
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    .line 169
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    .line 272
    iput-object p3, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/ClientConfiguration;

    .line 273
    new-instance p1, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    invoke-direct {p1, p0, v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/IdentityManager$1;)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    .line 274
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    invoke-static {p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    .line 275
    new-instance p1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    const-string p3, "com.amazonaws.android.auth"

    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    invoke-direct {p1, p2, p3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->q:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .registers 6

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 122
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    .line 125
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i:Ljava/util/concurrent/CountDownLatch;

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    .line 167
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    .line 169
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    .line 225
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 226
    new-instance p1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {p1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-virtual {p2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/ClientConfiguration;->b(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/ClientConfiguration;

    .line 227
    new-instance p1, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    invoke-direct {p1, p0, v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/IdentityManager$1;)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    .line 228
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/ClientConfiguration;

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/content/Context;Lcom/amazonaws/ClientConfiguration;)V

    .line 229
    new-instance p1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    const-string v0, "com.amazonaws.android.auth"

    iget-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    invoke-direct {p1, p2, v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->q:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/ClientConfiguration;)V
    .registers 7

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 122
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    .line 125
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i:Ljava/util/concurrent/CountDownLatch;

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    .line 167
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    .line 169
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 247
    iput-object p3, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/ClientConfiguration;

    .line 249
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {p2}, Lcom/amazonaws/ClientConfiguration;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_40

    goto :goto_42

    :cond_40
    const-string p2, ""

    :goto_42
    if-eqz p1, :cond_63

    if-eq p1, p2, :cond_63

    .line 254
    iget-object p3, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/ClientConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazonaws/ClientConfiguration;->a(Ljava/lang/String;)V

    .line 257
    :cond_63
    new-instance p1, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    invoke-direct {p1, p0, v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/IdentityManager$1;)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    .line 258
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/ClientConfiguration;

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/content/Context;Lcom/amazonaws/ClientConfiguration;)V

    .line 259
    new-instance p1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Landroid/content/Context;

    const-string p3, "com.amazonaws.android.auth"

    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    invoke-direct {p1, p2, p3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->q:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    return-void
.end method

.method public static a()Lcom/amazonaws/mobile/auth/core/IdentityManager;
    .registers 1

    .line 303
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->n:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    return-object v0
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/IdentityProvider;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V
    .registers 5

    .line 680
    new-instance v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazonaws/mobile/auth/core/IdentityManager$4;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 5

    .line 698
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager$5;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/amazonaws/ClientConfiguration;)V
    .registers 12

    .line 909
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    const-string v1, "Creating the Cognito Caching Credentials Provider with a refreshing Cognito Identity Provider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    if-nez v0, :cond_c

    return-void

    .line 916
    :cond_c
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->n()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_10
    const-string v1, "Region"

    .line 920
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PoolId"

    .line 921
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1c} :catch_3a

    .line 926
    invoke-static {v1}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object v0

    .line 928
    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;

    const/4 v5, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v7, p2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V

    .line 932
    new-instance v2, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-direct {v2, p1, v1, v0, p2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;-><init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    .line 934
    iget-boolean p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    invoke-virtual {v2, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Z)V

    .line 935
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    invoke-static {p1, v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    return-void

    :catch_3a
    move-exception p1

    .line 923
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to read configuration for CognitoIdentity"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static a(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V
    .registers 2

    const/4 v0, 0x0

    .line 312
    sput-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->n:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 313
    sput-object p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->n:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Ljava/util/Map;)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    .line 561
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;)Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object v0

    .line 563
    iget-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    if-nez v1, :cond_b

    return-void

    .line 567
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e()V

    .line 568
    invoke-virtual {v0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b(Ljava/util/Map;)Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 571
    sget-object p1, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    const-string v1, "refresh credentials"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()V

    .line 575
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->q:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "expirationDate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x7c830

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    return-object p0
.end method

.method static synthetic c(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    return-object p0
.end method

.method static synthetic d(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Ljava/util/HashSet;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic e(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->l:Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

    return-object p0
.end method

.method static synthetic f(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic m()Ljava/lang/String;
    .registers 1

    .line 75
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method private n()Lorg/json/JSONObject;
    .registers 4

    .line 946
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v1, "CredentialsProvider"

    .line 947
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CognitoIdentity"

    .line 948
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 949
    invoke-virtual {v1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    .line 951
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot access Cognito IdentityPoolId from the awsconfiguration.json file."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 818
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;J)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;J)V
    .registers 13

    .line 727
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    const-string v1, "Resume Session called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;J)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/amazonaws/mobile/auth/core/SignInResultHandler;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 875
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Landroid/content/Context;Lcom/amazonaws/mobile/auth/core/SignInResultHandler;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/auth/core/IdentityHandler;)V
    .registers 4

    .line 400
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    if-eqz v0, :cond_f

    .line 404
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/IdentityHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 401
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Federation is not enabled and does not support user id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 5

    .line 600
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    const-string v1, "federate with provider: Populate loginsMap with token."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 602
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    .line 605
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;

    invoke-direct {v1, p0, v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;)V
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    monitor-enter v0

    .line 496
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public a(Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V
    .registers 4

    if-eqz p1, :cond_b

    .line 588
    new-instance v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;Lcom/amazonaws/mobile/auth/core/IdentityManager$1;)V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->l:Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

    return-void

    .line 586
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "signInProviderResultHandler cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Lcom/amazonaws/mobile/config/AWSConfiguration;

    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;)V"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 283
    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    .line 284
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->q:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->r:Z

    invoke-virtual {p1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Z)V

    return-void
.end method

.method public b()Lcom/amazonaws/mobile/config/AWSConfiguration;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Lcom/amazonaws/mobile/config/AWSConfiguration;

    return-object v0
.end method

.method public b(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    .line 835
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;J)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;J)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/amazonaws/mobile/auth/core/SignInResultHandler;)V
    .registers 4

    .line 892
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a(Landroid/content/Context;)Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    move-result-object p1

    .line 893
    invoke-virtual {p1, p2}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a(Lcom/amazonaws/mobile/auth/core/SignInResultHandler;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p1

    .line 895
    sget-object p2, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    const-string v0, "Error in instantiating SignInManager. Check the context and completion handler."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void
.end method

.method public b(Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;)V
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    monitor-enter v0

    .line 507
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 508
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public b(Z)V
    .registers 2

    .line 294
    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    return-void
.end method

.method public c()Z
    .registers 7

    .line 340
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    if-eqz v0, :cond_50

    .line 344
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    .line 345
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;)Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->k()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 348
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    const-string v2, "Credentials are EXPIRED."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 352
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 353
    invoke-static {}, Lcom/amazonaws/SDKGlobalConfiguration;->a()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 356
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-gez v0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 358
    :goto_32
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Credentials are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_43

    const-string v3, "EXPIRED."

    goto :goto_45

    :cond_43
    const-string v3, "OK"

    :goto_45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 341
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Federation is not enabled and does not support credentials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/amazonaws/auth/AWSCredentialsProvider;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    return-object v0
.end method

.method public e()Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;)Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .line 387
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    if-eqz v0, :cond_f

    .line 390
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;)Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Federation is not enabled and does not support user id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->l:Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

    return-object v0
.end method

.method public h()V
    .registers 3

    .line 527
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Ljava/lang/String;

    const-string v1, "Signing out..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    if-eqz v0, :cond_15

    .line 530
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_15
    return-void
.end method

.method public i()Lcom/amazonaws/mobile/auth/core/IdentityProvider;
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    return-object v0
.end method

.method public j()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;>;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;)Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 664
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x1

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .registers 2

    .line 860
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass1 (com.amazonaws.mobile.auth.core.IdentityManager$1)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$1;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobile/auth/core/IdentityHandler;

.field final synthetic c:Lcom/amazonaws/mobile/auth/core/IdentityManager;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/IdentityHandler;)V
    .registers 3

    .line 404
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->c:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    .line 413
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->c:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->c(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;)Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_36
    .catchall {:try_start_1 .. :try_end_f} :catchall_34

    .line 419
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got Amazon Cognito Federated Identity ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityHandler;

    if-eqz v0, :cond_68

    .line 422
    new-instance v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/internal/util/ThreadUtils;->a(Ljava/lang/Runnable;)V

    goto :goto_68

    :catchall_34
    move-exception v1

    goto :goto_69

    :catch_36
    move-exception v1

    .line 415
    :try_start_37
    iput-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->a:Ljava/lang/Exception;

    .line 416
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_34

    .line 419
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got Amazon Cognito Federated Identity ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityHandler;

    if-eqz v1, :cond_68

    .line 422
    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;

    invoke-direct {v1, p0, v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager$1;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/internal/util/ThreadUtils;->a(Ljava/lang/Runnable;)V

    :cond_68
    :goto_68
    return-void

    .line 419
    :goto_69
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Amazon Cognito Federated Identity ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityHandler;

    if-eqz v2, :cond_8d

    .line 422
    new-instance v2, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager$1;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amazonaws/mobile/auth/core/internal/util/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 433
    :cond_8d
    throw v1
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass1.RunnableC00111 (com.amazonaws.mobile.auth.core.IdentityManager$1$1)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amazonaws/mobile/auth/core/IdentityManager$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager$1;Ljava/lang/String;)V
    .registers 3

    .line 422
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager$1;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_12

    .line 426
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityHandler;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager$1;

    iget-object v1, v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityHandler;->a(Ljava/lang/Exception;)V

    goto :goto_1b

    .line 428
    :cond_12
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1;->b:Lcom/amazonaws/mobile/auth/core/IdentityHandler;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityHandler;->a(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass2 (com.amazonaws.mobile.auth.core.IdentityManager$2)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$2;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityManager;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V
    .registers 2

    .line 530
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 533
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->f()V

    .line 534
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-boolean v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    if-eqz v0, :cond_1c

    .line 535
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->c(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;)Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e()V

    .line 537
    :cond_1c
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/IdentityProvider;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    .line 540
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 541
    :try_start_29
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$2;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;

    .line 542
    invoke-interface {v2}, Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;->b()V

    goto :goto_33

    .line 544
    :cond_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_45

    throw v1
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass3 (com.amazonaws.mobile.auth.core.IdentityManager$3)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$3;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/amazonaws/mobile/auth/core/IdentityManager;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Ljava/util/Map;)V
    .registers 3

    .line 605
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-boolean v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Z

    if-eqz v0, :cond_d

    .line 610
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_3c

    .line 617
    :cond_d
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;)V

    .line 620
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 621
    :try_start_1d
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;

    .line 622
    invoke-interface {v2}, Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;->a()V

    goto :goto_27

    .line 624
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_39

    throw v1

    :catch_3c
    move-exception v0

    .line 613
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$3;->b:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass4 (com.amazonaws.mobile.auth.core.IdentityManager$4)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$4;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

.field final synthetic b:Lcom/amazonaws/mobile/auth/core/signin/AuthException;

.field final synthetic c:Lcom/amazonaws/mobile/auth/core/IdentityManager;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V
    .registers 4

    .line 680
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$4;->c:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$4;->a:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    iput-object p3, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$4;->b:Lcom/amazonaws/mobile/auth/core/signin/AuthException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 683
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$4;->a:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    new-instance v1, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$4;->c:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    new-instance v3, Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;

    iget-object v4, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$4;->b:Lcom/amazonaws/mobile/auth/core/signin/AuthException;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;-><init>(Lcom/amazonaws/mobile/auth/core/signin/AuthException;Ljava/lang/Exception;)V

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;->a(Lcom/amazonaws/mobile/auth/core/StartupAuthResult;)V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass5 (com.amazonaws.mobile.auth.core.IdentityManager$5)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$5;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/amazonaws/mobile/auth/core/IdentityManager;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .line 698
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$5;->c:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$5;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$5;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$5;->c:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    .line 704
    :catch_a
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted while waiting for startup auth minimum delay."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_13
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$5;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$5;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass6 (com.amazonaws.mobile.auth.core.IdentityManager$6)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$6;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

.field final synthetic c:J

.field final synthetic d:Lcom/amazonaws/mobile/auth/core/IdentityManager;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;J)V
    .registers 6

    .line 729
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->b:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    iput-wide p4, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 731
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Looking for a previously signed-in session."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->a:Landroid/app/Activity;

    .line 733
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a(Landroid/content/Context;)Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d()Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 741
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refreshing credentials with sign-in provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-interface {v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->a:Landroid/app/Activity;

    new-instance v3, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;

    invoke-direct {v3, p0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager$6;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/IdentityProvider;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V

    goto :goto_4a

    .line 788
    :cond_40
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->b:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V

    .line 791
    :goto_4a
    iget-wide v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_61

    .line 794
    :try_start_52
    iget-wide v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->c:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_57} :catch_58

    goto :goto_61

    .line 796
    :catch_58
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted while waiting for resume session timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass6.AnonymousClass1 (com.amazonaws.mobile.auth.core.IdentityManager$6$1)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager$6;)V
    .registers 2

    .line 751
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 4

    .line 755
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successfully got AWS Credentials."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object p1, p1, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->a:Landroid/app/Activity;

    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1$1;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;)V

    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V
    .registers 8

    .line 772
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Federate with Cognito with %s Sign-in provider failed. Error: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 774
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 773
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    instance-of v0, p2, Lcom/amazonaws/mobile/auth/core/signin/AuthException;

    if-eqz v0, :cond_34

    .line 777
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object p1, p1, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object v1, v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->b:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    check-cast p2, Lcom/amazonaws/mobile/auth/core/signin/AuthException;

    invoke-static {p1, v0, v1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V

    goto :goto_48

    .line 780
    :cond_34
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object v1, v1, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object v2, v2, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->b:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    new-instance v3, Lcom/amazonaws/mobile/auth/core/signin/AuthException;

    invoke-direct {v3, p1, p2}, Lcom/amazonaws/mobile/auth/core/signin/AuthException;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager;Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;Lcom/amazonaws/mobile/auth/core/signin/AuthException;)V

    :goto_48
    return-void
.end method

.method public b(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 3

    .line 767
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cancel can\'t happen when handling a previously signed-in user."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AnonymousClass6.AnonymousClass1.RunnableC00121 (com.amazonaws.mobile.auth.core.IdentityManager$6$1$1)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1$1;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;)V
    .registers 2

    .line 757
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 760
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object v0, v0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->b:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    new-instance v1, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;

    iget-object v2, v2, Lcom/amazonaws/mobile/auth/core/IdentityManager$6$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager$6;

    iget-object v2, v2, Lcom/amazonaws/mobile/auth/core/IdentityManager$6;->d:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/StartupAuthErrorDetails;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;->a(Lcom/amazonaws/mobile/auth/core/StartupAuthResult;)V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AWSCredentialsProviderHolder (com.amazonaws.mobile.auth.core.IdentityManager$AWSCredentialsProviderHolder)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AWSCredentialsProviderHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

.field private volatile b:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;


# direct methods
.method private constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/IdentityManager$1;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;)Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->c()Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->b:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->a(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    return-void
.end method

.method private c()Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->b:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/amazonaws/auth/AWSCredentials;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->b:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSCredentialsProviderHolder;->b:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.AWSRefreshingCognitoIdentityProvider (com.amazonaws.mobile.auth.core.IdentityManager$AWSRefreshingCognitoIdentityProvider)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;
.super Lcom/amazonaws/auth/AWSBasicCognitoIdentityProvider;
.source "IdentityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AWSRefreshingCognitoIdentityProvider"
.end annotation


# instance fields
.field final synthetic f:Lcom/amazonaws/mobile/auth/core/IdentityManager;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V
    .registers 6

    .line 182
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;->f:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 183
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/AWSBasicCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V

    .line 177
    const-class p1, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;->g:Ljava/lang/String;

    .line 186
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;->a:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-static {p5}, Lcom/amazonaws/regions/Region;->a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->a(Lcom/amazonaws/regions/Region;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;->f:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 193
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;->g:Ljava/lang/String;

    const-string v1, "Storing the Refresh token in the loginsMap."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;->f:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->e()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;->f()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$AWSRefreshingCognitoIdentityProvider;->f:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2a
    invoke-super {p0}, Lcom/amazonaws/auth/AWSBasicCognitoIdentityProvider;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.auth.core.IdentityManager.SignInProviderResultAdapter (com.amazonaws.mobile.auth.core.IdentityManager$SignInProviderResultAdapter)
.class Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;
.super Ljava/lang/Object;
.source "IdentityManager.java"

# interfaces
.implements Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/IdentityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignInProviderResultAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

.field private final b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;


# direct methods
.method private constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V
    .registers 3

    .line 445
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;Lcom/amazonaws/mobile/auth/core/IdentityManager$1;)V
    .registers 4

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)V

    return-void
.end method

.method private a()V
    .registers 3

    .line 459
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignInProviderResultAdapter.onCognitoSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;)V
    .registers 1

    .line 442
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a()V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;Ljava/lang/Exception;)V
    .registers 2

    .line 442
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 5

    .line 464
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignInProviderResultAdapter.onCognitoError()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Lcom/amazonaws/mobile/auth/core/IdentityManager;)Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h()V

    .line 468
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    new-instance v2, Lcom/amazonaws/mobile/auth/core/signin/CognitoAuthException;

    invoke-direct {v2, v0, p1}, Lcom/amazonaws/mobile/auth/core/signin/CognitoAuthException;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    invoke-interface {v1, v0, v2}, Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 7

    .line 451
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignInProviderResultAdapter.onSuccess(): %s provider sign-in succeeded."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 453
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 452
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V
    .registers 8

    .line 481
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignInProviderResultAdapter.onError(): %s provider error. %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 483
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 482
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    new-instance v1, Lcom/amazonaws/mobile/auth/core/signin/ProviderAuthException;

    invoke-direct {v1, p1, p2}, Lcom/amazonaws/mobile/auth/core/signin/ProviderAuthException;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;->a(Lcom/amazonaws/mobile/auth/core/IdentityProvider;Ljava/lang/Exception;)V

    return-void
.end method

.method public b(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V
    .registers 7

    .line 473
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignInProviderResultAdapter.onCancel(): %s provider sign-in canceled."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 475
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 473
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;->b:Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;->b(Lcom/amazonaws/mobile/auth/core/IdentityProvider;)V

    return-void
.end method
