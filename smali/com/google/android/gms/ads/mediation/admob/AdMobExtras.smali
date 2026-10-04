###### Class com.google.android.gms.ads.mediation.admob.AdMobExtras (com.google.android.gms.ads.mediation.admob.AdMobExtras)
.class public final Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method
