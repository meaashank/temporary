package com.amazonaws.mobileconnectors.s3.transferutility;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.IBinder;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TransferService extends Service {
    static TransferNetworkLossHandler a = null;
    public static final String c = "notification";
    public static final String d = "ongoing-notification-id";
    public static final String e = "remove-notification";
    private static final Log f = LogFactory.a(TransferService.class);
    private static final int i = 26;
    boolean b = true;
    private int g = 0;
    private boolean h = true;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Can't bind to TransferService");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f.c("Starting Transfer Service to listen for network connectivity changes.");
        a = TransferNetworkLossHandler.a(getApplicationContext());
        synchronized (this) {
            if (this.b) {
                try {
                    try {
                        f.c("Registering the network receiver");
                        registerReceiver(a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.b = false;
                    } catch (IllegalStateException unused) {
                        f.d("Ignoring the leak in registering the receiver.");
                    }
                } catch (IllegalArgumentException unused2) {
                    f.d("Ignoring the exception trying to register the receiver for connectivity change.");
                }
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                synchronized (this) {
                    Notification notification = (Notification) intent.getParcelableExtra("notification");
                    if (notification != null) {
                        this.g = intent.getIntExtra(d, this.g);
                        this.h = intent.getBooleanExtra(e, this.h);
                        f.c("Putting the service in Foreground state.");
                        startForeground(this.g, notification);
                    } else {
                        f.e("No notification is passed in the intent. Unable to transition to foreground.");
                    }
                }
            } catch (Exception e2) {
                f.e("Error in moving the service to foreground state: " + e2);
            }
            return 1;
        }
        synchronized (this) {
            if (!this.b) {
                return 1;
            }
            try {
                f.c("Registering the network receiver");
                registerReceiver(a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.b = false;
            } catch (IllegalArgumentException unused) {
                f.d("Ignoring the exception trying to register the receiver for connectivity change.");
            } catch (IllegalStateException unused2) {
                f.d("Ignoring the leak in registering the receiver.");
            }
            return 1;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:0|31|2|(6:4|d|19|20|25|26)|33|14|36) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        com.amazonaws.mobileconnectors.s3.transferutility.TransferService.f.d("Exception trying to de-register the network receiver");
     */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onDestroy() {
        /*
            r4 = this;
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L18
            r1 = 26
            if (r0 < r1) goto L2f
            com.amazonaws.logging.Log r0 = com.amazonaws.mobileconnectors.s3.transferutility.TransferService.f     // Catch: java.lang.Exception -> L18
            java.lang.String r1 = "Moving the service out of the Foreground state."
            r0.c(r1)     // Catch: java.lang.Exception -> L18
            monitor-enter(r4)     // Catch: java.lang.Exception -> L18
            boolean r0 = r4.h     // Catch: java.lang.Throwable -> L15
            r4.stopForeground(r0)     // Catch: java.lang.Throwable -> L15
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L15
            goto L2f
        L15:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L15
            throw r0     // Catch: java.lang.Exception -> L18
        L18:
            r0 = move-exception
            com.amazonaws.logging.Log r1 = com.amazonaws.mobileconnectors.s3.transferutility.TransferService.f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error in moving the service out of the foreground state: "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.e(r0)
        L2f:
            com.amazonaws.logging.Log r0 = com.amazonaws.mobileconnectors.s3.transferutility.TransferService.f     // Catch: java.lang.IllegalArgumentException -> L4b
            java.lang.String r1 = "De-registering the network receiver."
            r0.c(r1)     // Catch: java.lang.IllegalArgumentException -> L4b
            monitor-enter(r4)     // Catch: java.lang.IllegalArgumentException -> L4b
            boolean r0 = r4.b     // Catch: java.lang.Throwable -> L48
            if (r0 != 0) goto L46
            com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkLossHandler r0 = com.amazonaws.mobileconnectors.s3.transferutility.TransferService.a     // Catch: java.lang.Throwable -> L48
            r4.unregisterReceiver(r0)     // Catch: java.lang.Throwable -> L48
            r0 = 1
            r4.b = r0     // Catch: java.lang.Throwable -> L48
            r0 = 0
            com.amazonaws.mobileconnectors.s3.transferutility.TransferService.a = r0     // Catch: java.lang.Throwable -> L48
        L46:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L48
            goto L52
        L48:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L48
            throw r0     // Catch: java.lang.IllegalArgumentException -> L4b
        L4b:
            com.amazonaws.logging.Log r0 = com.amazonaws.mobileconnectors.s3.transferutility.TransferService.f
            java.lang.String r1 = "Exception trying to de-register the network receiver"
            r0.d(r1)
        L52:
            super.onDestroy()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.s3.transferutility.TransferService.onDestroy():void");
    }

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if ((getApplicationInfo().flags & 2) == 0) {
            return;
        }
        printWriter.printf("network status: %s\n", Boolean.valueOf(a.b()));
        Map<Integer, TransferRecord> mapA = TransferStatusUpdater.a(this).a();
        printWriter.printf("# of active transfers: %d\n", Integer.valueOf(mapA.size()));
        for (TransferRecord transferRecord : mapA.values()) {
            printWriter.printf("bucket: %s, key: %s, status: %s, total size: %d, current: %d\n", transferRecord.p, transferRecord.q, transferRecord.o, Long.valueOf(transferRecord.h), Long.valueOf(transferRecord.i));
        }
        printWriter.flush();
    }
}
