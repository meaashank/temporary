###### Class com.amazonaws.mobile.client.HostedUIOptions (com.amazonaws.mobile.client.HostedUIOptions)
.class public Lcom/amazonaws/mobile/client/HostedUIOptions;
.super Ljava/lang/Object;
.source "HostedUIOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    return-void
.end method

.method public static i()Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 1

    .line 46
    new-instance v0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->a(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->b(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->c(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->d(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->e(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
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

    .line 34
    iget-object v0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->f(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Map;
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

    .line 38
    iget-object v0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->g(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
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

    .line 42
    iget-object v0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions;->a:Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->h(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.HostedUIOptions.Builder (com.amazonaws.mobile.client.HostedUIOptions$Builder)
.class public Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
.super Ljava/lang/Object;
.source "HostedUIOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/HostedUIOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)[Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->a:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic e(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/util/Map;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/util/Map;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)Ljava/util/Map;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->h:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->f:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 2

    .line 98
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/amazonaws/mobile/client/HostedUIOptions;
    .registers 2

    .line 108
    new-instance v0, Lcom/amazonaws/mobile/client/HostedUIOptions;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/HostedUIOptions;-><init>(Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->g:Ljava/util/Map;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/amazonaws/mobile/client/HostedUIOptions$Builder;->h:Ljava/util/Map;

    return-object p0
.end method
