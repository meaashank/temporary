###### Class com.crashlytics.android.answers.FirebaseAnalyticsEventMapper (com.crashlytics.android.answers.FirebaseAnalyticsEventMapper)
.class public Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsEventMapper.java"


# static fields
.field private static final EVENT_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIREBASE_LEVEL_NAME:Ljava/lang/String; = "level_name"

.field private static final FIREBASE_METHOD:Ljava/lang/String; = "method"

.field private static final FIREBASE_RATING:Ljava/lang/String; = "rating"

.field private static final FIREBASE_SUCCESS:Ljava/lang/String; = "success"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 23
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "app_clear_data"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "app_exception"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "app_remove"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "app_upgrade"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "app_install"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "app_update"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "firebase_campaign"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "error"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "first_open"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "first_visit"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "in_app_purchase"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "notification_dismiss"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "notification_foreground"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "notification_open"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "notification_receive"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "os_update"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "session_start"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "user_engagement"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "ad_exposure"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "adunit_exposure"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string v2, "ad_query"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string v2, "ad_activeview"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string v2, "ad_impression"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string v2, "ad_click"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string v2, "screen_view"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string v2, "firebase_extra_parameter"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->EVENT_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mapAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_53

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_53

    :cond_9
    const-string v0, "[^\\p{Alnum}_]+"

    const-string v1, "_"

    .line 121
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ga_"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    const-string v0, "google_"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "firebase_"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_45

    .line 127
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fabric_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_52

    .line 131
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_52
    return-object p1

    :cond_53
    :goto_53
    const-string p1, "fabric_unnamed_parameter"

    return-object p1
.end method

.method private mapBooleanValue(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "true"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private mapCustomEventAttributes(Landroid/os/Bundle;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_32

    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 305
    :cond_32
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_44

    .line 306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_8

    .line 307
    :cond_44
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_56

    .line 308
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8

    .line 309
    :cond_56
    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    :cond_68
    return-void
.end method

.method private mapCustomEventName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_6c

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6c

    .line 96
    :cond_9
    sget-object v0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->EVENT_NAMES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fabric_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    const-string v0, "[^\\p{Alnum}_]+"

    const-string v1, "_"

    .line 100
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ga_"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    const-string v0, "google_"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "firebase_"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 106
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fabric_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_5f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_6b

    .line 110
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6b
    return-object p1

    :cond_6c
    :goto_6c
    const-string p1, "fabric_unnamed_event"

    return-object p1
.end method

.method private mapDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 2

    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 278
    :cond_8
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private mapPredefinedEvent(Lcom/crashlytics/android/answers/SessionEvent;)Landroid/os/Bundle;
    .registers 6

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "purchase"

    .line 186
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "item_id"

    .line 187
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_name"

    .line 188
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_category"

    .line 189
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    .line 190
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "currency"

    .line 191
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29f

    :cond_5e
    const-string v1, "addToCart"

    .line 192
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    const-string v1, "item_id"

    .line 193
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_name"

    .line 194
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_category"

    .line 195
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "price"

    .line 196
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "value"

    .line 197
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "currency"

    .line 198
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quantity"

    const-wide/16 v2, 0x1

    .line 199
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_29f

    :cond_cf
    const-string v1, "startCheckout"

    .line 200
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    const-string v1, "quantity"

    .line 201
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemCount"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putLong(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "value"

    .line 202
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "totalPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "currency"

    .line 203
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29f

    :cond_113
    const-string v1, "contentView"

    .line 204
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14c

    const-string v1, "content_type"

    .line 205
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_id"

    .line 206
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_name"

    .line 207
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29f

    :cond_14c
    const-string v1, "search"

    .line 208
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167

    const-string v1, "search_term"

    .line 209
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "query"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29f

    :cond_167
    const-string v1, "share"

    .line 210
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    const-string v1, "method"

    .line 211
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_type"

    .line 212
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_id"

    .line 213
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_name"

    .line 214
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29f

    :cond_1af
    const-string v1, "rating"

    .line 215
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    const-string v1, "rating"

    .line 216
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "rating"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_type"

    .line 217
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_id"

    .line 218
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_name"

    .line 219
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29f

    :cond_1f9
    const-string v1, "signUp"

    .line 220
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_214

    const-string v1, "method"

    .line 221
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29f

    :cond_214
    const-string v1, "login"

    .line 222
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22e

    const-string v1, "method"

    .line 223
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29f

    :cond_22e
    const-string v1, "invite"

    .line 224
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_248

    const-string v1, "method"

    .line 225
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29f

    :cond_248
    const-string v1, "levelStart"

    .line 226
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262

    const-string v1, "level_name"

    .line 227
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "levelName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29f

    :cond_262
    const-string v1, "levelEnd"

    .line 228
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29f

    const-string v1, "score"

    .line 229
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "score"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "level_name"

    .line 230
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "levelName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "success"

    .line 231
    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "success"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapBooleanValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putInt(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    :cond_29f
    :goto_29f
    iget-object p1, p1, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapCustomEventAttributes(Landroid/os/Bundle;Ljava/util/Map;)V

    return-object v0
.end method

.method private mapPredefinedEventName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_46

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v4, -0x35ca92c8    # -2972494.0f

    if-eq p2, v4, :cond_2e

    const v4, 0x625ef69

    if-eq p2, v4, :cond_24

    const v4, 0x67e90501

    if-eq p2, v4, :cond_1a

    goto :goto_38

    :cond_1a
    const-string p2, "purchase"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    const/4 p2, 0x0

    goto :goto_39

    :cond_24
    const-string p2, "login"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    const/4 p2, 0x2

    goto :goto_39

    :cond_2e
    const-string p2, "signUp"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    const/4 p2, 0x1

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p2, -0x1

    :goto_39
    packed-switch p2, :pswitch_data_fa

    goto :goto_46

    :pswitch_3d
    const-string p1, "failed_login"

    return-object p1

    :pswitch_40
    const-string p1, "failed_sign_up"

    return-object p1

    :pswitch_43
    const-string p1, "failed_ecommerce_purchase"

    return-object p1

    .line 151
    :cond_46
    :goto_46
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_104

    goto/16 :goto_cc

    :sswitch_4f
    const-string p2, "purchase"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    goto/16 :goto_cd

    :sswitch_59
    const-string p2, "startCheckout"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/4 v0, 0x2

    goto/16 :goto_cd

    :sswitch_64
    const-string p2, "levelStart"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/16 v0, 0xa

    goto :goto_cd

    :sswitch_6f
    const-string p2, "share"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/4 v0, 0x5

    goto :goto_cd

    :sswitch_79
    const-string p2, "login"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/16 v0, 0x8

    goto :goto_cd

    :sswitch_84
    const-string p2, "addToCart"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/4 v0, 0x1

    goto :goto_cd

    :sswitch_8e
    const-string p2, "contentView"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/4 v0, 0x3

    goto :goto_cd

    :sswitch_98
    const-string p2, "signUp"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/4 v0, 0x7

    goto :goto_cd

    :sswitch_a2
    const-string p2, "search"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/4 v0, 0x4

    goto :goto_cd

    :sswitch_ac
    const-string p2, "rating"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/4 v0, 0x6

    goto :goto_cd

    :sswitch_b6
    const-string p2, "invite"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/16 v0, 0x9

    goto :goto_cd

    :sswitch_c1
    const-string p2, "levelEnd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const/16 v0, 0xb

    goto :goto_cd

    :cond_cc
    :goto_cc
    const/4 v0, -0x1

    :goto_cd
    packed-switch v0, :pswitch_data_136

    .line 179
    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapCustomEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d5
    const-string p1, "level_end"

    return-object p1

    :pswitch_d8
    const-string p1, "level_start"

    return-object p1

    :pswitch_db
    const-string p1, "invite"

    return-object p1

    :pswitch_de
    const-string p1, "login"

    return-object p1

    :pswitch_e1
    const-string p1, "sign_up"

    return-object p1

    :pswitch_e4
    const-string p1, "rate_content"

    return-object p1

    :pswitch_e7
    const-string p1, "share"

    return-object p1

    :pswitch_ea
    const-string p1, "search"

    return-object p1

    :pswitch_ed
    const-string p1, "select_content"

    return-object p1

    :pswitch_f0
    const-string p1, "begin_checkout"

    return-object p1

    :pswitch_f3
    const-string p1, "add_to_cart"

    return-object p1

    :pswitch_f6
    const-string p1, "ecommerce_purchase"

    return-object p1

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_43
        :pswitch_40
        :pswitch_3d
    .end packed-switch

    :sswitch_data_104
    .sparse-switch
        -0x7f0e6949 -> :sswitch_c1
        -0x468dd0f7 -> :sswitch_b6
        -0x37ea4e63 -> :sswitch_ac
        -0x36059a58 -> :sswitch_a2
        -0x35ca92c8 -> :sswitch_98
        -0x17310142 -> :sswitch_8e
        0x165f03c -> :sswitch_84
        0x625ef69 -> :sswitch_79
        0x6854fdf -> :sswitch_6f
        0xbaecb3e -> :sswitch_64
        0x632ef3c8 -> :sswitch_59
        0x67e90501 -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
    .end packed-switch
.end method

.method private mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 5

    .line 290
    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 295
    :cond_6
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sget-object p1, Lcom/crashlytics/android/answers/AddToCartEvent;->MICRO_CONSTANT:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 6

    .line 264
    invoke-direct {p0, p3}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    .line 269
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method private putInt(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    .line 252
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private putLong(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    if-nez p3, :cond_3

    return-void

    .line 244
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    .line 260
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mapEvent(Lcom/crashlytics/android/answers/SessionEvent;)Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;
    .registers 7

    .line 56
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->CUSTOM:Lcom/crashlytics/android/answers/SessionEvent$Type;

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->type:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 57
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/crashlytics/android/answers/SessionEvent;->customType:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 58
    :goto_13
    sget-object v3, Lcom/crashlytics/android/answers/SessionEvent$Type;->PREDEFINED:Lcom/crashlytics/android/answers/SessionEvent$Type;

    iget-object v4, p1, Lcom/crashlytics/android/answers/SessionEvent;->type:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 59
    invoke-virtual {v3, v4}, Lcom/crashlytics/android/answers/SessionEvent$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    if-nez v0, :cond_2a

    if-nez v3, :cond_2a

    const/4 p1, 0x0

    return-object p1

    :cond_2a
    if-eqz v3, :cond_31

    .line 68
    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPredefinedEvent(Lcom/crashlytics/android/answers/SessionEvent;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3f

    .line 70
    :cond_31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    iget-object v4, p1, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    if-eqz v4, :cond_3f

    .line 72
    iget-object v4, p1, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    invoke-direct {p0, v0, v4}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapCustomEventAttributes(Landroid/os/Bundle;Ljava/util/Map;)V

    :cond_3f
    :goto_3f
    if-eqz v3, :cond_5c

    .line 78
    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v4, "success"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_54

    .line 81
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_55

    :cond_54
    const/4 v1, 0x0

    .line 82
    :goto_55
    iget-object p1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPredefinedEventName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_62

    .line 84
    :cond_5c
    iget-object p1, p1, Lcom/crashlytics/android/answers/SessionEvent;->customType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapCustomEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    :goto_62
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Logging event into firebase..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;

    invoke-direct {v1, p1, v0}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method
