###### Class com.amazonaws.mobile.client.results.ForgotPasswordResult (com.amazonaws.mobile.client.results.ForgotPasswordResult)
.class public Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;
.super Ljava/lang/Object;
.source "ForgotPasswordResult.java"


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/results/ForgotPasswordState;

.field private b:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/client/results/ForgotPasswordState;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;->a:Lcom/amazonaws/mobile/client/results/ForgotPasswordState;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobile/client/results/ForgotPasswordState;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;->a:Lcom/amazonaws/mobile/client/results/ForgotPasswordState;

    return-object v0
.end method

.method public a(Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;->b:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-void
.end method

.method public b()Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;->b:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-object v0
.end method
