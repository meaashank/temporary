###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferService (com.amazonaws.mobileconnectors.s3.transferutility.TransferService)
.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
.super Landroid/app/Service;
.source "TransferService.java"


# static fields
.field static a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler; = null

.field public static final c:Ljava/lang/String; = "notification"

.field public static final d:Ljava/lang/String; = "ongoing-notification-id"

.field public static final e:Ljava/lang/String; = "remove-notification"

.field private static final f:Lcom/amazonaws/logging/Log;

.field private static final i:I = 0x1a


# instance fields
.field b:Z

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->g:I

    .line 65
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->h:Z

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 223
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p3, 0x2

    and-int/2addr p1, p3

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "network status: %s\n"

    const/4 v0, 0x1

    .line 227
    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, p1, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 228
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a()Ljava/util/Map;

    move-result-object p1

    const-string v1, "# of active transfers: %d\n"

    .line 229
    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 230
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    const-string v2, "bucket: %s, key: %s, status: %s, total size: %d, current: %d\n"

    const/4 v4, 0x5

    .line 231
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v5, v4, p3

    const/4 v5, 0x3

    iget-wide v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 232
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-wide v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    .line 233
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    .line 231
    invoke-virtual {p2, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_41

    .line 235
    :cond_74
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t bind to TransferService"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .registers 4

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string v1, "Starting Transfer Service to listen for network connectivity changes."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_15
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_41

    if-eqz v0, :cond_3f

    .line 114
    :try_start_19
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string v1, "Registering the network receiver"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2f} :catch_38
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_2f} :catch_30
    .catchall {:try_start_19 .. :try_end_2f} :catchall_41

    goto :goto_3f

    .line 121
    :catch_30
    :try_start_30
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string v1, "Ignoring the leak in registering the receiver."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    goto :goto_3f

    .line 119
    :catch_38
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string v1, "Ignoring the exception trying to register the receiver for connectivity change."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 124
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public onDestroy()V
    .registers 5

    .line 190
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2f

    .line 191
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string v1, "Moving the service out of the Foreground state."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 192
    monitor-enter p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_18

    .line 193
    :try_start_e
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->h:Z

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->stopForeground(Z)V

    .line 194
    monitor-exit p0

    goto :goto_2f

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    .line 197
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in moving the service out of the foreground state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 201
    :cond_2f
    :goto_2f
    :try_start_2f
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string v1, "De-registering the network receiver."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 202
    monitor-enter p0
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_37} :catch_4b

    .line 203
    :try_start_37
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z

    if-nez v0, :cond_46

    .line 204
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z

    const/4 v0, 0x0

    .line 206
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 208
    :cond_46
    monitor-exit p0

    goto :goto_52

    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v0
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_4b} :catch_4b

    .line 214
    :catch_4b
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string v1, "Exception trying to de-register the network receiver"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 217
    :goto_52
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 140
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_55

    .line 142
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7} :catch_3e

    :try_start_7
    const-string p2, "notification"

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/Notification;

    if-eqz p2, :cond_32

    const-string p3, "ongoing-notification-id"

    .line 146
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->g:I

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->g:I

    const-string p3, "remove-notification"

    .line 149
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->h:Z

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->h:Z

    .line 152
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string p3, "Putting the service in Foreground state."

    invoke-interface {p1, p3}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 153
    iget p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->g:I

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_39

    .line 155
    :cond_32
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string p2, "No notification is passed in the intent. Unable to transition to foreground."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 158
    :goto_39
    monitor-exit p0

    goto :goto_55

    :catchall_3b
    move-exception p1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw p1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception p1

    .line 160
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in moving the service to foreground state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 164
    :cond_55
    :goto_55
    monitor-enter p0

    .line 165
    :try_start_56
    iget-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_83

    if-eqz p1, :cond_80

    .line 167
    :try_start_5a
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string p2, "Registering the network receiver"

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 168
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->b:Z
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_70} :catch_79
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_70} :catch_71
    .catchall {:try_start_5a .. :try_end_70} :catchall_83

    goto :goto_80

    .line 174
    :catch_71
    :try_start_71
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string p2, "Ignoring the leak in registering the receiver."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    goto :goto_80

    .line 172
    :catch_79
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->f:Lcom/amazonaws/logging/Log;

    const-string p2, "Ignoring the exception trying to register the receiver for connectivity change."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 177
    :cond_80
    :goto_80
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_83
    move-exception p1

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_83

    throw p1
.end method
