###### Class com.amazonaws.mobile.client.SignInUIOptions (com.amazonaws.mobile.client.SignInUIOptions)
.class public Lcom/amazonaws/mobile/client/SignInUIOptions;
.super Ljava/lang/Object;
.source "SignInUIOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazonaws/mobile/client/SignInUIOptions;->a:Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    return-void
.end method

.method public static f()Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;
    .registers 1

    .line 38
    new-instance v0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions;->a:Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->a(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions;->a:Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->b(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions;->a:Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->c(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions;->a:Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->d(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/amazonaws/mobile/client/HostedUIOptions;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions;->a:Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->e(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Lcom/amazonaws/mobile/client/HostedUIOptions;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.SignInUIOptions.Builder (com.amazonaws.mobile.client.SignInUIOptions$Builder)
.class public Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;
.super Ljava/lang/Object;
.source "SignInUIOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/SignInUIOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Z

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/amazonaws/mobile/client/HostedUIOptions;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Ljava/lang/Class;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->d:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic e(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)Lcom/amazonaws/mobile/client/HostedUIOptions;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->e:Lcom/amazonaws/mobile/client/HostedUIOptions;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/client/HostedUIOptions;)Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->e:Lcom/amazonaws/mobile/client/HostedUIOptions;

    return-object p0
.end method

.method public a(Ljava/lang/Class;)Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->d:Ljava/lang/Class;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Z)Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->c:Z

    return-object p0
.end method

.method public a()Lcom/amazonaws/mobile/client/SignInUIOptions;
    .registers 2

    .line 76
    new-instance v0, Lcom/amazonaws/mobile/client/SignInUIOptions;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/SignInUIOptions;-><init>(Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;)V

    return-object v0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->b:Ljava/lang/Integer;

    return-object p0
.end method
