###### Class com.amazonaws.mobile.client.FederatedSignInOptions (com.amazonaws.mobile.client.FederatedSignInOptions)
.class public Lcom/amazonaws/mobile/client/FederatedSignInOptions;
.super Ljava/lang/Object;
.source "FederatedSignInOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/amazonaws/mobile/client/FederatedSignInOptions;->a:Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;

    return-void
.end method

.method public static c()Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;
    .registers 1

    .line 25
    new-instance v0, Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/amazonaws/mobile/client/FederatedSignInOptions;->a:Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;->a(Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/amazonaws/mobile/client/FederatedSignInOptions;->a:Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;->b(Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.FederatedSignInOptions.Builder (com.amazonaws.mobile.client.FederatedSignInOptions$Builder)
.class public Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;
.super Ljava/lang/Object;
.source "FederatedSignInOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/FederatedSignInOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/amazonaws/mobile/client/FederatedSignInOptions;
    .registers 2

    .line 50
    new-instance v0, Lcom/amazonaws/mobile/client/FederatedSignInOptions;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/FederatedSignInOptions;-><init>(Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/amazonaws/mobile/client/FederatedSignInOptions$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
