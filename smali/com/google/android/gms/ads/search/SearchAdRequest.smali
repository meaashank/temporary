###### Class com.google.android.gms.ads.search.SearchAdRequest (com.google.android.gms.ads.search.SearchAdRequest)
.class public final Lcom/google/android/gms/ads/search/SearchAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BORDER_TYPE_DASHED:I = 0x1

.field public static final BORDER_TYPE_DOTTED:I = 0x2

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SOLID:I = 0x3

.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2

.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0

.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1

.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3


# instance fields
.field private final zzbrd:Ljava/lang/String;

.field private final zzvq:Lcom/google/android/gms/internal/ads/zzyx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zza(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzbrd:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzb(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzyy;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(Lcom/google/android/gms/internal/ads/zzyy;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/zzb;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final getAnchorTextColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getBackgroundColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getBackgroundGradientBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getBackgroundGradientTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getBorderColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getBorderThickness()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getBorderType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getCallButtonColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getCustomChannels()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

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

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyx;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptionTextColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getFontFace()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaderTextColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getHeaderTextSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

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

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

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

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyx;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getQuery()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzbrd:Ljava/lang/String;

    return-object v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyx;->isTestDevice(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method final zzaz()Lcom/google/android/gms/internal/ads/zzyx;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzvq:Lcom/google/android/gms/internal/ads/zzyx;

    return-object v0
.end method

###### Class com.google.android.gms.ads.search.SearchAdRequest.Builder (com.google.android.gms.ads.search.SearchAdRequest$Builder)
.class public final Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzbrd:Ljava/lang/String;

.field private final zzvr:Lcom/google/android/gms/internal/ads/zzyy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzbrd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzyy;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    return-object p0
.end method


# virtual methods
.method public final addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
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
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyy;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public final addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
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
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzbe(Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .registers 3

    .line 11
    new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/zzb;)V

    return-object v0
.end method

.method public final setAnchorTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setBackgroundColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setBackgroundGradient(II)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setBorderColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setBorderThickness(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setBorderType(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setCallButtonColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setDescriptionTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setFontFace(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setHeaderTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setHeaderTextSize(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzb(Landroid/location/Location;)V

    return-object p0
.end method

.method public final setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzbrd:Ljava/lang/String;

    return-object p0
.end method

.method public final setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzbi(Ljava/lang/String;)V

    return-object p0
.end method

.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzvr:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzu(Z)V

    return-object p0
.end method
