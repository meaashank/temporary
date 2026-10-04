###### Class com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar (com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar)
.class Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;
.super Ljava/lang/Object;
.source "DefaultAppMeasurementEventListenerRegistrar.java"

# interfaces
.implements Lcom/crashlytics/android/core/AppMeasurementEventListenerRegistrar;


# static fields
.field private static final ANALYTIC_CLASS:Ljava/lang/String; = "com.google.android.gms.measurement.AppMeasurement"

.field private static final ANALYTIC_CLASS_ON_EVENT_LISTENER:Ljava/lang/String; = "com.google.android.gms.measurement.AppMeasurement$OnEventListener"

.field private static final CRASH_ORIGIN:Ljava/lang/String; = "crash"

.field private static final GET_INSTANCE_METHOD:Ljava/lang/String; = "getInstance"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PARAMETERS:Ljava/lang/String; = "parameters"

.field private static final REGISTER_METHOD:Ljava/lang/String; = "registerOnMeasurementEventListener"


# instance fields
.field private final crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    return-void
.end method

.method static synthetic access$000(Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;)Lcom/crashlytics/android/core/CrashlyticsCore;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/crashlytics/android/core/CrashlyticsCore;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 17
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->writeEventToUserLog(Lcom/crashlytics/android/core/CrashlyticsCore;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    const-string v0, "getInstance"

    const/4 v1, 0x1

    .line 71
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method static instanceFrom(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/core/AppMeasurementEventListenerRegistrar;
    .registers 2

    .line 31
    new-instance v0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    return-object v0
.end method

.method private invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "com.google.android.gms.measurement.AppMeasurement$OnEventListener"

    .line 86
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    :try_start_8
    new-array v3, v1, [Ljava/lang/Class;

    aput-object v0, v3, v2

    invoke-virtual {p1, p3, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 94
    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->onEventListenerProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1b} :catch_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1b} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1b} :catch_1c

    return v1

    :catch_1c
    move-exception p1

    .line 104
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string v0, "CrashlyticsCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :catch_38
    move-exception p1

    .line 100
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string v0, "CrashlyticsCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot invoke method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :catch_54
    move-exception p1

    .line 96
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string v0, "CrashlyticsCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected method missing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private onEventListenerProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 114
    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;

    invoke-direct {p1, p0}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;-><init>(Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;)V

    .line 113
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static serializeEvent(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 155
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    :cond_26
    const-string p1, "name"

    .line 161
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "parameters"

    .line 162
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeEventToUserLog(Lcom/crashlytics/android/core/CrashlyticsCore;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 145
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$A$:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->serializeEvent(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CrashlyticsCore;->log(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_33

    .line 147
    :catch_19
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p0

    const-string p2, "CrashlyticsCore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to serialize Firebase Analytics event; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method


# virtual methods
.method public register()Z
    .registers 5

    const-string v0, "com.google.android.gms.measurement.AppMeasurement"

    .line 39
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 41
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Firebase Analytics is not present; you will not see automatic logging of events before a crash occurs."

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 47
    :cond_15
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_27

    .line 49
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Could not create an instance of Firebase Analytics."

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_27
    const-string v1, "registerOnMeasurementEventListener"

    .line 54
    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

###### Class com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar.AnonymousClass1 (com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar$1)
.class Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;
.super Ljava/lang/Object;
.source "DefaultAppMeasurementEventListenerRegistrar.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->onEventListenerProxy(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;->this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 119
    array-length p1, p3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_28

    const/4 p1, 0x0

    .line 125
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    .line 126
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x2

    .line 127
    aget-object p3, p3, v0

    check-cast p3, Landroid/os/Bundle;

    if-eqz p1, :cond_26

    const-string v0, "crash"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 130
    iget-object p1, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;->this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    invoke-static {p1}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->access$000(Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->access$100(Lcom/crashlytics/android/core/CrashlyticsCore;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_26
    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected AppMeasurement.OnEventListener signature"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
