###### Class com.crashlytics.android.core.ReportUploader (com.crashlytics.android.core.ReportUploader)
.class Lcom/crashlytics/android/core/ReportUploader;
.super Ljava/lang/Object;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ReportUploader$Worker;,
        Lcom/crashlytics/android/core/ReportUploader$AlwaysSendCheck;,
        Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;,
        Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;,
        Lcom/crashlytics/android/core/ReportUploader$SendCheck;
    }
.end annotation


# static fields
.field static final HEADER_INVALID_CLS_FILE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RETRY_INTERVALS:[S


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

.field private final fileAccessLock:Ljava/lang/Object;

.field private final handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

.field private final reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

.field private uploadThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string v1, "1"

    .line 55
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/ReportUploader;->HEADER_INVALID_CLS_FILE:Ljava/util/Map;

    const/4 v0, 0x6

    .line 57
    new-array v0, v0, [S

    fill-array-data v0, :array_14

    sput-object v0, Lcom/crashlytics/android/core/ReportUploader;->RETRY_INTERVALS:[S

    return-void

    nop

    :array_14
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/crashlytics/android/core/CreateReportSpiCall;Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;)V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    if-eqz p2, :cond_15

    .line 72
    iput-object p2, p0, Lcom/crashlytics/android/core/ReportUploader;->createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

    .line 73
    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader;->apiKey:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    .line 75
    iput-object p4, p0, Lcom/crashlytics/android/core/ReportUploader;->handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    return-void

    .line 70
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "createReportCall must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/crashlytics/android/core/ReportUploader;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/crashlytics/android/core/ReportUploader;)Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/crashlytics/android/core/ReportUploader;->handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    return-object p0
.end method

.method static synthetic access$200()[S
    .registers 1

    .line 20
    sget-object v0, Lcom/crashlytics/android/core/ReportUploader;->RETRY_INTERVALS:[S

    return-object v0
.end method


# virtual methods
.method findReports()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/crashlytics/android/core/Report;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Checking for crash reports..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_e
    iget-object v1, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    invoke-interface {v1}, Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;->getCompleteSessionFiles()[Ljava/io/File;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    invoke-interface {v2}, Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;->getInvalidSessionFiles()[Ljava/io/File;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    invoke-interface {v3}, Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;->getNativeReportFiles()[Ljava/io/File;

    move-result-object v3

    .line 131
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_f0

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_58

    .line 135
    array-length v5, v1

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v5, :cond_58

    aget-object v7, v1, v6

    .line 136
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v8

    const-string v9, "CrashlyticsCore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found crash report "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v8, Lcom/crashlytics/android/core/SessionReport;

    invoke-direct {v8, v7}, Lcom/crashlytics/android/core/SessionReport;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 141
    :cond_58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_83

    .line 143
    array-length v5, v2

    const/4 v6, 0x0

    :goto_61
    if-ge v6, v5, :cond_83

    aget-object v7, v2, v6

    .line 145
    invoke-static {v7}, Lcom/crashlytics/android/core/CrashlyticsController;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    .line 147
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_77
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 153
    :cond_83
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 154
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found invalid session: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 156
    new-instance v7, Lcom/crashlytics/android/core/InvalidSessionReport;

    .line 157
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/io/File;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    invoke-direct {v7, v5, v6}, Lcom/crashlytics/android/core/InvalidSessionReport;-><init>(Ljava/lang/String;[Ljava/io/File;)V

    .line 156
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_cc
    if-eqz v3, :cond_de

    .line 161
    array-length v1, v3

    :goto_cf
    if-ge v4, v1, :cond_de

    aget-object v2, v3, v4

    .line 162
    new-instance v5, Lcom/crashlytics/android/core/NativeSessionReport;

    invoke-direct {v5, v2}, Lcom/crashlytics/android/core/NativeSessionReport;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 166
    :cond_de
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 167
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "No reports found."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ef
    return-object v0

    :catchall_f0
    move-exception v1

    .line 131
    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v1
.end method

.method forceUpload(Lcom/crashlytics/android/core/Report;)Z
    .registers 9

    .line 101
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 103
    :try_start_4
    new-instance v2, Lcom/crashlytics/android/core/CreateReportRequest;

    iget-object v3, p0, Lcom/crashlytics/android/core/ReportUploader;->apiKey:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/crashlytics/android/core/CreateReportRequest;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/Report;)V

    .line 104
    iget-object v3, p0, Lcom/crashlytics/android/core/ReportUploader;->createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

    invoke-interface {v3, v2}, Lcom/crashlytics/android/core/CreateReportSpiCall;->invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z

    move-result v2

    .line 106
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Crashlytics report upload "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_26

    const-string v6, "complete: "

    goto :goto_28

    :cond_26
    const-string v6, "FAILED: "

    :goto_28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {p1}, Lcom/crashlytics/android/core/Report;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5e

    .line 110
    invoke-interface {p1}, Lcom/crashlytics/android/core/Report;->remove()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_43
    .catchall {:try_start_4 .. :try_end_3e} :catchall_41

    const/4 p1, 0x1

    const/4 v1, 0x1

    goto :goto_5e

    :catchall_41
    move-exception p1

    goto :goto_60

    :catch_43
    move-exception v2

    .line 114
    :try_start_44
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred sending report "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-interface {v3, v4, p1, v2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_5e
    :goto_5e
    monitor-exit v0

    return v1

    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_41

    throw p1
.end method

.method isUploading()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public declared-synchronized uploadReports(FLcom/crashlytics/android/core/ReportUploader$SendCheck;)V
    .registers 4

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    .line 80
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string v0, "Report upload has already been started."

    invoke-interface {p1, p2, v0}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_27

    .line 81
    monitor-exit p0

    return-void

    .line 84
    :cond_12
    :try_start_12
    new-instance v0, Lcom/crashlytics/android/core/ReportUploader$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/core/ReportUploader$Worker;-><init>(Lcom/crashlytics/android/core/ReportUploader;FLcom/crashlytics/android/core/ReportUploader$SendCheck;)V

    .line 85
    new-instance p1, Ljava/lang/Thread;

    const-string p2, "Crashlytics Report Uploader"

    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    .line 86
    iget-object p1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_27

    .line 87
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    .line 78
    monitor-exit p0

    throw p1
.end method

###### Class com.crashlytics.android.core.ReportUploader.AlwaysSendCheck (com.crashlytics.android.core.ReportUploader$AlwaysSendCheck)
.class final Lcom/crashlytics/android/core/ReportUploader$AlwaysSendCheck;
.super Ljava/lang/Object;
.source "ReportUploader.java"

# interfaces
.implements Lcom/crashlytics/android/core/ReportUploader$SendCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlwaysSendCheck"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSendReports()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.crashlytics.android.core.ReportUploader.HandlingExceptionCheck (com.crashlytics.android.core.ReportUploader$HandlingExceptionCheck)
.class interface abstract Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;
.super Ljava/lang/Object;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "HandlingExceptionCheck"
.end annotation


# virtual methods
.method public abstract isHandlingException()Z
.end method

###### Class com.crashlytics.android.core.ReportUploader.ReportFilesProvider (com.crashlytics.android.core.ReportUploader$ReportFilesProvider)
.class interface abstract Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;
.super Ljava/lang/Object;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ReportFilesProvider"
.end annotation


# virtual methods
.method public abstract getCompleteSessionFiles()[Ljava/io/File;
.end method

.method public abstract getInvalidSessionFiles()[Ljava/io/File;
.end method

.method public abstract getNativeReportFiles()[Ljava/io/File;
.end method

###### Class com.crashlytics.android.core.ReportUploader.SendCheck (com.crashlytics.android.core.ReportUploader$SendCheck)
.class interface abstract Lcom/crashlytics/android/core/ReportUploader$SendCheck;
.super Ljava/lang/Object;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SendCheck"
.end annotation


# virtual methods
.method public abstract canSendReports()Z
.end method

###### Class com.crashlytics.android.core.ReportUploader.Worker (com.crashlytics.android.core.ReportUploader$Worker)
.class Lcom/crashlytics/android/core/ReportUploader$Worker;
.super Lio/fabric/sdk/android/services/common/h;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final delay:F

.field private final sendCheck:Lcom/crashlytics/android/core/ReportUploader$SendCheck;

.field final synthetic this$0:Lcom/crashlytics/android/core/ReportUploader;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ReportUploader;FLcom/crashlytics/android/core/ReportUploader$SendCheck;)V
    .registers 4

    .line 177
    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/h;-><init>()V

    .line 178
    iput p2, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->delay:F

    .line 179
    iput-object p3, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->sendCheck:Lcom/crashlytics/android/core/ReportUploader$SendCheck;

    return-void
.end method

.method private attemptUploadWithRetry()V
    .registers 9

    .line 195
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting report processing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->delay:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " second(s)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->delay:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3b

    .line 200
    :try_start_28
    iget v0, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->delay:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_32} :catch_33

    goto :goto_3b

    .line 202
    :catch_33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 207
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ReportUploader;->findReports()Ljava/util/List;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-static {v1}, Lcom/crashlytics/android/core/ReportUploader;->access$100(Lcom/crashlytics/android/core/ReportUploader;)Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    move-result-object v1

    invoke-interface {v1}, Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;->isHandlingException()Z

    move-result v1

    if-eqz v1, :cond_4e

    return-void

    .line 214
    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    iget-object v1, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->sendCheck:Lcom/crashlytics/android/core/ReportUploader$SendCheck;

    invoke-interface {v1}, Lcom/crashlytics/android/core/ReportUploader$SendCheck;->canSendReports()Z

    move-result v1

    if-nez v1, :cond_94

    .line 216
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User declined to send. Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Report(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/core/Report;

    .line 219
    invoke-interface {v1}, Lcom/crashlytics/android/core/Report;->remove()V

    goto :goto_83

    :cond_93
    return-void

    :cond_94
    const/4 v1, 0x0

    .line 225
    :cond_95
    :goto_95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_132

    .line 226
    iget-object v2, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-static {v2}, Lcom/crashlytics/android/core/ReportUploader;->access$100(Lcom/crashlytics/android/core/ReportUploader;)Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    move-result-object v2

    invoke-interface {v2}, Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;->isHandlingException()Z

    move-result v2

    if-eqz v2, :cond_a8

    return-void

    .line 239
    :cond_a8
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " report(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crashlytics/android/core/Report;

    .line 242
    iget-object v3, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/core/ReportUploader;->forceUpload(Lcom/crashlytics/android/core/Report;)Z

    goto :goto_cf

    .line 246
    :cond_e1
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ReportUploader;->findReports()Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    .line 248
    invoke-static {}, Lcom/crashlytics/android/core/ReportUploader;->access$200()[S

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 249
    invoke-static {}, Lcom/crashlytics/android/core/ReportUploader;->access$200()[S

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 248
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-short v1, v2, v1

    int-to-long v1, v1

    .line 250
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Report submisson: scheduling delayed retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    .line 254
    :try_start_124
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_127
    .catch Ljava/lang/InterruptedException; {:try_start_124 .. :try_end_127} :catch_12a

    move v1, v3

    goto/16 :goto_95

    .line 256
    :catch_12a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_132
    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/ReportUploader$Worker;->attemptUploadWithRetry()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    .line 187
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :goto_10
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/ReportUploader;->access$002(Lcom/crashlytics/android/core/ReportUploader;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
