###### Class com.google.android.gms.ads.AdRequest (com.google.android.gms.ads.AdRequest)
.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_AD_CONTENT_RATING_G:Ljava/lang/String; = "G"

.field public static final MAX_AD_CONTENT_RATING_MA:Ljava/lang/String; = "MA"

.field public static final MAX_AD_CONTENT_RATING_PG:Ljava/lang/String; = "PG"

.field public static final MAX_AD_CONTENT_RATING_T:Ljava/lang/String; = "T"

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE:I = 0x0

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE:I = 0x1

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED:I = -0x1


# instance fields
.field private final zzvq:Lcom/google/android/gms/internal/ads/zzyx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzyy;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(Lcom/google/android/gms/internal/ads/zzyy;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/zzb;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyx;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyx;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyx;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getGender()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyx;->getGender()I

    move-result v0

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyx;->getKeywords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyx;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyx;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object p1

    return-object p1
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyx;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyx;->isTestDevice(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final zzaz()Lcom/google/android/gms/internal/ads/zzyx;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    return-object v0
.end method

###### Class com.google.android.gms.ads.AdRequest.Builder (com.google.android.gms.ads.AdRequest$Builder)
.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzvr:Lcom/google/android/gms/internal/ads/zzyy;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyy;->zzbe(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzyy;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    return-object p0
.end method


# virtual methods
.method public final addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyy;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzbd(Ljava/lang/String;)V

    return-object p0
.end method

.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public final addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 10
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "_emulatorLiveAds"

    .line 11
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzyy;->zzbf(Ljava/lang/String;)V

    :cond_1c
    return-object p0
.end method

.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzbe(Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/ads/AdRequest;
    .registers 3

    .line 18
    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/zzb;)V

    return-object v0
.end method

.method public final setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Ljava/util/Date;)V

    return-object p0
.end method

.method public final setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 8

    const-string v0, "Content URL must be non-null."

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content URL must be non-empty."

    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x200

    if-gt v0, v3, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const-string v4, "Content URL must not exceed %d in length.  Provided length was %d."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    .line 27
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzbg(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzch(I)V

    return-object p0
.end method

.method public final setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzv(Z)V

    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzb(Landroid/location/Location;)V

    return-object p0
.end method

.method public final setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzbk(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzbi(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzci(I)V

    return-object p0
.end method

.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzu(Z)V

    return-object p0
.end method
