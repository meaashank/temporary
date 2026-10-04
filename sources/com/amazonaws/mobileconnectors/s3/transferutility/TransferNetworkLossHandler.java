package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class TransferNetworkLossHandler extends BroadcastReceiver {
    private static final Log c = LogFactory.a(TransferNetworkLossHandler.class);
    private static TransferNetworkLossHandler e;
    final ConnectivityManager a;
    TransferStatusUpdater b;
    private TransferDBUtil d;

    private TransferNetworkLossHandler(Context context) {
        this.a = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = new TransferDBUtil(context);
        this.b = TransferStatusUpdater.a(context);
    }

    public static synchronized TransferNetworkLossHandler a(Context context) {
        if (e == null) {
            e = new TransferNetworkLossHandler(context);
        }
        return e;
    }

    public static synchronized TransferNetworkLossHandler a() {
        if (e == null) {
            c.e("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
            throw new TransferUtilityException("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
        }
        return e;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            c.c("Network connectivity changed detected.");
            boolean zB = b();
            c.c("Network connected: " + zB);
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkLossHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TransferNetworkLossHandler.this.b()) {
                        TransferNetworkLossHandler.this.c();
                    } else {
                        TransferNetworkLossHandler.this.d();
                    }
                }
            }).start();
        }
    }

    boolean b() {
        NetworkInfo activeNetworkInfo = this.a.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        Throwable th;
        Cursor cursorA;
        TransferRecord transferRecordA;
        int i = 0;
        TransferState[] transferStateArr = {TransferState.WAITING_FOR_NETWORK};
        c.b("Loading transfers from database...");
        ArrayList<Integer> arrayList = new ArrayList();
        try {
            cursorA = this.d.a(TransferType.ANY, transferStateArr);
            while (cursorA.moveToNext()) {
                try {
                    int i2 = cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.b));
                    if (this.b.a(i2) == null) {
                        TransferRecord transferRecord = new TransferRecord(i2);
                        transferRecord.a(cursorA);
                        this.b.a(transferRecord);
                        i++;
                    }
                    arrayList.add(Integer.valueOf(i2));
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorA != null) {
                        c.b("Closing the cursor for resumeAllTransfers");
                        cursorA.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                c.b("Closing the cursor for resumeAllTransfers");
                cursorA.close();
            }
            try {
                for (Integer num : arrayList) {
                    AmazonS3 amazonS3A = S3ClientReference.a(num);
                    if (amazonS3A != null && (transferRecordA = this.b.a(num.intValue())) != null && !transferRecordA.a()) {
                        transferRecordA.a(amazonS3A, this.d, this.b, this.a);
                    }
                }
            } catch (Exception e2) {
                c.e("Error in resuming the transfers." + e2.getMessage());
            }
            c.b(i + " transfers are loaded from database.");
        } catch (Throwable th3) {
            th = th3;
            cursorA = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        for (TransferRecord transferRecord : this.b.a().values()) {
            AmazonS3 amazonS3A = S3ClientReference.a(Integer.valueOf(transferRecord.a));
            if (amazonS3A != null && transferRecord != null && transferRecord.a(amazonS3A, this.b, this.a)) {
                this.b.a(transferRecord.a, TransferState.WAITING_FOR_NETWORK);
            }
        }
    }
}
