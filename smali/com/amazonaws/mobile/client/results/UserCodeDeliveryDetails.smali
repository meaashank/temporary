###### Class com.amazonaws.mobile.client.results.UserCodeDeliveryDetails (com.amazonaws.mobile.client.results.UserCodeDeliveryDetails)
.class public Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;
.super Ljava/lang/Object;
.source "UserCodeDeliveryDetails.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;->c:Ljava/lang/String;

    return-object v0
.end method
