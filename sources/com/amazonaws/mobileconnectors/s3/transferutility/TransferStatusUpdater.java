package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
class TransferStatusUpdater {
    private static TransferDBUtil e;
    private static TransferStatusUpdater g;
    private final Map<Integer, TransferRecord> d;
    private final Handler f;
    private static final Log b = LogFactory.a(TransferStatusUpdater.class);
    private static final HashSet<TransferState> c = new HashSet<>(Arrays.asList(TransferState.PART_COMPLETED, TransferState.PENDING_CANCEL, TransferState.PENDING_PAUSE, TransferState.PENDING_NETWORK_DISCONNECT));
    static final Map<Integer, List<TransferListener>> a = new HashMap();

    TransferStatusUpdater(TransferDBUtil transferDBUtil) {
        e = transferDBUtil;
        this.f = new Handler(Looper.getMainLooper());
        this.d = new HashMap();
    }

    public static synchronized TransferStatusUpdater a(Context context) {
        if (g == null) {
            e = new TransferDBUtil(context);
            g = new TransferStatusUpdater(e);
        }
        return g;
    }

    synchronized Map<Integer, TransferRecord> a() {
        return Collections.unmodifiableMap(this.d);
    }

    synchronized void a(TransferRecord transferRecord) {
        this.d.put(Integer.valueOf(transferRecord.a), transferRecord);
    }

    synchronized TransferRecord a(int i) {
        return this.d.get(Integer.valueOf(i));
    }

    synchronized void b(int i) {
        synchronized (a) {
            a.remove(Integer.valueOf(i));
        }
        this.d.remove(Integer.valueOf(i));
    }

    synchronized void c(int i) {
        S3ClientReference.b(Integer.valueOf(i));
        e.c(i);
    }

    synchronized void a(final int i, final TransferState transferState) {
        boolean zContains = c.contains(transferState);
        TransferRecord transferRecord = this.d.get(Integer.valueOf(i));
        if (transferRecord == null) {
            if (e.a(i, transferState) == 0) {
                b.d("Failed to update the status of transfer " + i);
            }
        } else {
            zContains |= transferState.equals(transferRecord.o);
            transferRecord.o = transferState;
            if (e.a(transferRecord) == 0) {
                b.d("Failed to update the status of transfer " + i);
            }
        }
        if (zContains) {
            return;
        }
        if (TransferState.COMPLETED.equals(transferState)) {
            c(i);
        }
        synchronized (a) {
            List<TransferListener> list = a.get(Integer.valueOf(i));
            if (list != null && !list.isEmpty()) {
                for (final TransferListener transferListener : list) {
                    this.f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.1
                        @Override // java.lang.Runnable
                        public void run() {
                            transferListener.a(i, transferState);
                        }
                    });
                }
                if (TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState)) {
                    list.clear();
                }
            }
        }
    }

    synchronized void a(final int i, final long j, final long j2, boolean z) {
        TransferRecord transferRecord = this.d.get(Integer.valueOf(i));
        if (transferRecord != null) {
            transferRecord.i = j;
            transferRecord.h = j2;
        }
        e.a(i, j);
        if (z) {
            synchronized (a) {
                List<TransferListener> list = a.get(Integer.valueOf(i));
                if (list != null && !list.isEmpty()) {
                    for (Iterator<TransferListener> it = list.iterator(); it.hasNext(); it = it) {
                        final TransferListener next = it.next();
                        this.f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.2
                            @Override // java.lang.Runnable
                            public void run() {
                                next.a(i, j, j2);
                            }
                        });
                    }
                }
            }
        }
    }

    void a(final int i, final Exception exc) {
        synchronized (a) {
            List<TransferListener> list = a.get(Integer.valueOf(i));
            if (list != null && !list.isEmpty()) {
                for (final TransferListener transferListener : list) {
                    this.f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.3
                        @Override // java.lang.Runnable
                        public void run() {
                            transferListener.a(i, exc);
                        }
                    });
                }
            }
        }
    }

    synchronized void b() {
        synchronized (a) {
            a.clear();
        }
        this.d.clear();
    }

    static void a(int i, TransferListener transferListener) {
        if (transferListener == null) {
            throw new IllegalArgumentException("Listener can't be null");
        }
        synchronized (a) {
            List<TransferListener> list = a.get(Integer.valueOf(i));
            if (list == null) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.add(transferListener);
                a.put(Integer.valueOf(i), copyOnWriteArrayList);
            } else if (!list.contains(transferListener)) {
                list.add(transferListener);
            }
        }
    }

    static void b(int i, TransferListener transferListener) {
        if (transferListener == null) {
            throw new IllegalArgumentException("Listener can't be null");
        }
        synchronized (a) {
            List<TransferListener> list = a.get(Integer.valueOf(i));
            if (list != null && !list.isEmpty()) {
                list.remove(transferListener);
            }
        }
    }

    private class TransferProgressListener implements ProgressListener {
        private final TransferRecord b;
        private long c;

        public TransferProgressListener(TransferRecord transferRecord) {
            this.b = transferRecord;
        }

        @Override // com.amazonaws.event.ProgressListener
        public synchronized void a(ProgressEvent progressEvent) {
            if (32 == progressEvent.b()) {
                TransferStatusUpdater.b.c("Reset Event triggerred. Resetting the bytesCurrent to 0.");
                this.c = 0L;
            } else {
                this.c += progressEvent.a();
                if (this.c > this.b.i) {
                    this.b.i = this.c;
                    TransferStatusUpdater.this.a(this.b.a, this.b.i, this.b.h, true);
                }
            }
        }
    }

    synchronized ProgressListener d(int i) {
        TransferRecord transferRecordA;
        transferRecordA = a(i);
        if (transferRecordA == null) {
            b.c("TransferStatusUpdater doesn't track the transfer: " + i);
            throw new IllegalArgumentException("transfer " + i + " doesn't exist");
        }
        b.c("Creating a new progress listener for transfer: " + i);
        return new TransferProgressListener(transferRecordA);
    }
}
