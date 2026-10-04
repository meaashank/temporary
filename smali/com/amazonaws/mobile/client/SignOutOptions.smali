###### Class com.amazonaws.mobile.client.SignOutOptions (com.amazonaws.mobile.client.SignOutOptions)
.class public Lcom/amazonaws/mobile/client/SignOutOptions;
.super Ljava/lang/Object;
.source "SignOutOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/SignOutOptions$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/SignOutOptions$Builder;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/SignOutOptions$Builder;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazonaws/mobile/client/SignOutOptions;->a:Lcom/amazonaws/mobile/client/SignOutOptions$Builder;

    return-void
.end method

.method public static c()Lcom/amazonaws/mobile/client/SignOutOptions$Builder;
    .registers 1

    .line 28
    new-instance v0, Lcom/amazonaws/mobile/client/SignOutOptions$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/SignOutOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/amazonaws/mobile/client/SignOutOptions;->a:Lcom/amazonaws/mobile/client/SignOutOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/SignOutOptions$Builder;->a(Lcom/amazonaws/mobile/client/SignOutOptions$Builder;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobile/client/SignOutOptions;->a:Lcom/amazonaws/mobile/client/SignOutOptions$Builder;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/SignOutOptions$Builder;->b(Lcom/amazonaws/mobile/client/SignOutOptions$Builder;)Z

    move-result v0

    return v0
.end method

###### Class com.amazonaws.mobile.client.SignOutOptions.Builder (com.amazonaws.mobile.client.SignOutOptions$Builder)
.class public Lcom/amazonaws/mobile/client/SignOutOptions$Builder;
.super Ljava/lang/Object;
.source "SignOutOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/SignOutOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/SignOutOptions$Builder;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/amazonaws/mobile/client/SignOutOptions$Builder;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/SignOutOptions$Builder;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/amazonaws/mobile/client/SignOutOptions$Builder;->b:Z

    return p0
.end method


# virtual methods
.method public a(Z)Lcom/amazonaws/mobile/client/SignOutOptions$Builder;
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/SignOutOptions$Builder;->a:Z

    return-object p0
.end method

.method public a()Lcom/amazonaws/mobile/client/SignOutOptions;
    .registers 2

    .line 67
    new-instance v0, Lcom/amazonaws/mobile/client/SignOutOptions;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/SignOutOptions;-><init>(Lcom/amazonaws/mobile/client/SignOutOptions$Builder;)V

    return-object v0
.end method

.method public b(Z)Lcom/amazonaws/mobile/client/SignOutOptions$Builder;
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/SignOutOptions$Builder;->b:Z

    return-object p0
.end method
