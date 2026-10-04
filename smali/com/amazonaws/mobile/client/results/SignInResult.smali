###### Class com.amazonaws.mobile.client.results.SignInResult (com.amazonaws.mobile.client.results.SignInResult)
.class public Lcom/amazonaws/mobile/client/results/SignInResult;
.super Ljava/lang/Object;
.source "SignInResult.java"


# static fields
.field public static final a:Lcom/amazonaws/mobile/client/results/SignInResult;


# instance fields
.field private final b:Lcom/amazonaws/mobile/client/results/SignInState;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInResult;

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->DONE:Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-direct {v0, v1}, Lcom/amazonaws/mobile/client/results/SignInResult;-><init>(Lcom/amazonaws/mobile/client/results/SignInState;)V

    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInResult;->a:Lcom/amazonaws/mobile/client/results/SignInResult;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/mobile/client/results/SignInState;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->b:Lcom/amazonaws/mobile/client/results/SignInState;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->c:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->d:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobile/client/results/SignInState;Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->b:Lcom/amazonaws/mobile/client/results/SignInState;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->c:Ljava/util/Map;

    .line 47
    iput-object p2, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->d:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobile/client/results/SignInState;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/results/SignInState;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->b:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 40
    iput-object p2, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->c:Ljava/util/Map;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->d:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobile/client/results/SignInState;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->b:Lcom/amazonaws/mobile/client/results/SignInState;

    return-object v0
.end method

.method public b()Ljava/util/Map;
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

    .line 60
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c()Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/SignInResult;->d:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-object v0
.end method
