###### Class com.crashlytics.android.core.CompositeCreateReportSpiCall (com.crashlytics.android.core.CompositeCreateReportSpiCall)
.class Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;
.super Ljava/lang/Object;
.source "CompositeCreateReportSpiCall.java"

# interfaces
.implements Lcom/crashlytics/android/core/CreateReportSpiCall;


# instance fields
.field private final javaReportSpiCall:Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;

.field private final nativeReportSpiCall:Lcom/crashlytics/android/core/NativeCreateReportSpiCall;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;Lcom/crashlytics/android/core/NativeCreateReportSpiCall;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;->javaReportSpiCall:Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;

    .line 11
    iput-object p2, p0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;->nativeReportSpiCall:Lcom/crashlytics/android/core/NativeCreateReportSpiCall;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z
    .registers 4

    .line 16
    sget-object v0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall$1;->$SwitchMap$com$crashlytics$android$core$Report$Type:[I

    iget-object v1, p1, Lcom/crashlytics/android/core/CreateReportRequest;->report:Lcom/crashlytics/android/core/Report;

    invoke-interface {v1}, Lcom/crashlytics/android/core/Report;->getType()Lcom/crashlytics/android/core/Report$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/core/Report$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_20

    const/4 p1, 0x0

    return p1

    .line 21
    :pswitch_14
    iget-object v0, p0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;->nativeReportSpiCall:Lcom/crashlytics/android/core/NativeCreateReportSpiCall;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/NativeCreateReportSpiCall;->invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z

    return v1

    .line 18
    :pswitch_1a
    iget-object v0, p0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;->javaReportSpiCall:Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;->invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z

    return v1

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_14
    .end packed-switch
.end method

###### Class com.crashlytics.android.core.CompositeCreateReportSpiCall.AnonymousClass1 (com.crashlytics.android.core.CompositeCreateReportSpiCall$1)
.class synthetic Lcom/crashlytics/android/core/CompositeCreateReportSpiCall$1;
.super Ljava/lang/Object;
.source "CompositeCreateReportSpiCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$crashlytics$android$core$Report$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    invoke-static {}, Lcom/crashlytics/android/core/Report$Type;->values()[Lcom/crashlytics/android/core/Report$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall$1;->$SwitchMap$com$crashlytics$android$core$Report$Type:[I

    :try_start_9
    sget-object v0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall$1;->$SwitchMap$com$crashlytics$android$core$Report$Type:[I

    sget-object v1, Lcom/crashlytics/android/core/Report$Type;->JAVA:Lcom/crashlytics/android/core/Report$Type;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/Report$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall$1;->$SwitchMap$com$crashlytics$android$core$Report$Type:[I

    sget-object v1, Lcom/crashlytics/android/core/Report$Type;->NATIVE:Lcom/crashlytics/android/core/Report$Type;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/Report$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
