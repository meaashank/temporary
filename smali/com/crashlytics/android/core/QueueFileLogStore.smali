###### Class com.crashlytics.android.core.QueueFileLogStore (com.crashlytics.android.core.QueueFileLogStore)
.class Lcom/crashlytics/android/core/QueueFileLogStore;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"

# interfaces
.implements Lcom/crashlytics/android/core/FileLogStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
    }
.end annotation


# instance fields
.field private logFile:Lio/fabric/sdk/android/services/common/o;

.field private final maxLogSize:I

.field private final workingFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 50
    iput p2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    return-void
.end method

.method private doWriteToLog(JLjava/lang/String;)V
    .registers 8

    .line 135
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p3, :cond_9

    const-string p3, "null"

    .line 159
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    div-int/lit8 v0, v0, 0x4

    .line 161
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2d

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_2d
    const-string v0, "\r"

    const-string v1, " "

    .line 165
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "\n"

    const-string v1, " "

    .line 166
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 168
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 169
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/services/common/o;->a([B)V

    .line 174
    :goto_5d
    iget-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/o;->b()Z

    move-result p1

    if-nez p1, :cond_81

    iget-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/o;->a()I

    move-result p1

    iget p2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    if-le p1, p2, :cond_81

    .line 175
    iget-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/o;->e()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_74} :catch_75

    goto :goto_5d

    :catch_75
    move-exception p1

    .line 178
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string p3, "CrashlyticsCore"

    const-string v0, "There was a problem writing to the Crashlytics log."

    invoke-interface {p2, p3, v0, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_81
    return-void
.end method

.method private getLogBytes()Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
    .registers 8

    .line 72
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 77
    :cond_a
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->openLogFile()V

    .line 79
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    const/4 v0, 0x1

    .line 87
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 89
    iget-object v2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/o;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 92
    :try_start_20
    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    new-instance v4, Lcom/crashlytics/android/core/QueueFileLogStore$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/crashlytics/android/core/QueueFileLogStore$1;-><init>(Lcom/crashlytics/android/core/QueueFileLogStore;[B[I)V

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/common/o;->b(Lio/fabric/sdk/android/services/common/o$c;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_2b

    goto :goto_37

    :catch_2b
    move-exception v3

    .line 104
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v4, v5, v6, v3}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    :goto_37
    new-instance v3, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;

    aget v0, v0, v1

    invoke-direct {v3, p0, v2, v0}, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;-><init>(Lcom/crashlytics/android/core/QueueFileLogStore;[BI)V

    return-object v3
.end method

.method private openLogFile()V
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    if-nez v0, :cond_2b

    .line 126
    :try_start_4
    new-instance v0, Lio/fabric/sdk/android/services/common/o;

    iget-object v1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/o;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_2b

    :catch_e
    move-exception v0

    .line 128
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open log file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public closeLogFile()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/o;

    return-void
.end method

.method public deleteLogFile()V
    .registers 2

    .line 119
    invoke-virtual {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->closeLogFile()V

    .line 120
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public getLogAsByteString()Lcom/crashlytics/android/core/ByteString;
    .registers 4

    .line 61
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->getLogBytes()Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_11

    .line 62
    :cond_8
    iget-object v1, v0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->bytes:[B

    const/4 v2, 0x0

    iget v0, v0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->offset:I

    invoke-static {v1, v2, v0}, Lcom/crashlytics/android/core/ByteString;->copyFrom([BII)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public getLogAsBytes()[B
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->getLogBytes()Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    .line 68
    :cond_8
    iget-object v0, v0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->bytes:[B

    :goto_a
    return-object v0
.end method

.method public writeToLog(JLjava/lang/String;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->openLogFile()V

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/QueueFileLogStore;->doWriteToLog(JLjava/lang/String;)V

    return-void
.end method

###### Class com.crashlytics.android.core.QueueFileLogStore.AnonymousClass1 (com.crashlytics.android.core.QueueFileLogStore$1)
.class Lcom/crashlytics/android/core/QueueFileLogStore$1;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/QueueFileLogStore;->getLogBytes()Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/QueueFileLogStore;

.field final synthetic val$logBytes:[B

.field final synthetic val$offsetHolder:[I


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/QueueFileLogStore;[B[I)V
    .registers 4

    .line 92
    iput-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore$1;->this$0:Lcom/crashlytics/android/core/QueueFileLogStore;

    iput-object p2, p0, Lcom/crashlytics/android/core/QueueFileLogStore$1;->val$logBytes:[B

    iput-object p3, p0, Lcom/crashlytics/android/core/QueueFileLogStore$1;->val$offsetHolder:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;I)V
    .registers 6

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore$1;->val$logBytes:[B

    iget-object v1, p0, Lcom/crashlytics/android/core/QueueFileLogStore$1;->val$offsetHolder:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 97
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore$1;->val$offsetHolder:[I

    aget v1, v0, v2

    add-int/2addr v1, p2

    aput v1, v0, v2
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_15

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_15
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 100
    throw p2
.end method

###### Class com.crashlytics.android.core.QueueFileLogStore.LogBytes (com.crashlytics.android.core.QueueFileLogStore$LogBytes)
.class public Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/QueueFileLogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogBytes"
.end annotation


# instance fields
.field public final bytes:[B

.field public final offset:I

.field final synthetic this$0:Lcom/crashlytics/android/core/QueueFileLogStore;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/QueueFileLogStore;[BI)V
    .registers 4

    .line 42
    iput-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->this$0:Lcom/crashlytics/android/core/QueueFileLogStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->bytes:[B

    .line 44
    iput p3, p0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->offset:I

    return-void
.end method
