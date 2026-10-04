###### Class com.amazonaws.cognito.clientcontext.datacollection.ApplicationDataCollector (com.amazonaws.cognito.clientcontext.datacollection.ApplicationDataCollector)
.class public Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;
.super Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;
.source "ApplicationDataCollector.java"


# static fields
.field private static final a:Ljava/lang/String; = "ApplicationDataCollector"

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, ""

    .line 63
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 64
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_1a

    .line 66
    :catch_12
    sget-object p1, Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;->a:Ljava/lang/String;

    const-string v0, "Unable to get app version. Provided package name could not be found."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_1a
    return-object p1
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 73
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ApplicationName"

    .line 44
    invoke-direct {p0, p1}, Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ApplicationTargetSdk"

    .line 45
    invoke-direct {p0, p1}, Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ApplicationVersion"

    .line 46
    invoke-direct {p0, p1}, Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
