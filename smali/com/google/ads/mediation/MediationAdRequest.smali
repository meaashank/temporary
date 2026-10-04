###### Class com.google.ads.mediation.MediationAdRequest (com.google.ads.mediation.MediationAdRequest)
.class public Lcom/google/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzih:Ljava/util/Date;

.field private final zzii:Lcom/google/ads/AdRequest$Gender;

.field private final zzij:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzik:Z

.field private final zzil:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/google/ads/AdRequest$Gender;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzih:Ljava/util/Date;

    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzii:Lcom/google/ads/AdRequest$Gender;

    .line 4
    iput-object p3, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzij:Ljava/util/Set;

    .line 5
    iput-boolean p4, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzik:Z

    .line 6
    iput-object p5, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzil:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public getAgeInYears()Ljava/lang/Integer;
    .registers 8

    .line 8
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzih:Ljava/util/Date;

    if-eqz v0, :cond_49

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzih:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lt v5, v6, :cond_3f

    .line 14
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_48

    const/4 v4, 0x5

    .line 15
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v1, v0, :cond_48

    .line 16
    :cond_3f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_48
    return-object v3

    :cond_49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBirthday()Ljava/util/Date;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzih:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()Lcom/google/ads/AdRequest$Gender;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzii:Lcom/google/ads/AdRequest$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzij:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzil:Landroid/location/Location;

    return-object v0
.end method

.method public isTesting()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzik:Z

    return v0
.end method
