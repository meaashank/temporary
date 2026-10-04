###### Class com.amazonaws.mobile.client.results.SignUpResult (com.amazonaws.mobile.client.results.SignUpResult)
.class public Lcom/amazonaws/mobile/client/results/SignUpResult;
.super Ljava/lang/Object;
.source "SignUpResult.java"


# instance fields
.field private final a:Z

.field private final b:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;


# direct methods
.method public constructor <init>(ZLcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/results/SignUpResult;->a:Z

    .line 32
    iput-object p2, p0, Lcom/amazonaws/mobile/client/results/SignUpResult;->b:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/results/SignUpResult;->a:Z

    return v0
.end method

.method public b()Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/SignUpResult;->b:Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-object v0
.end method
