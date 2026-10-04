package com.amazonaws.http;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ClientConnectionManager;

/* JADX INFO: loaded from: classes.dex */
public final class IdleConnectionReaper extends Thread {
    private static final int b = 60000;
    private static final int c = 60;
    private static IdleConnectionReaper f;
    private volatile boolean e;
    private static final ArrayList<ClientConnectionManager> d = new ArrayList<>();
    static final Log a = LogFactory.a(IdleConnectionReaper.class);

    private IdleConnectionReaper() {
        super("java-sdk-http-connection-reaper");
        setDaemon(true);
    }

    public static synchronized boolean a(ClientConnectionManager clientConnectionManager) {
        if (f == null) {
            f = new IdleConnectionReaper();
            f.start();
        }
        return d.add(clientConnectionManager);
    }

    public static synchronized boolean b(ClientConnectionManager clientConnectionManager) {
        boolean zRemove;
        zRemove = d.remove(clientConnectionManager);
        if (d.isEmpty()) {
            a();
        }
        return zRemove;
    }

    private void c() {
        this.e = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        List list;
        while (!this.e) {
            try {
                Thread.sleep(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
                synchronized (IdleConnectionReaper.class) {
                    list = (List) d.clone();
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    try {
                        ((ClientConnectionManager) it.next()).closeIdleConnections(60L, TimeUnit.SECONDS);
                    } catch (Exception e) {
                        a.d("Unable to close idle connections", e);
                    }
                }
            } catch (Throwable th) {
                a.b("Reaper thread: ", th);
            }
        }
        a.b("Shutting down reaper thread.");
    }

    public static synchronized boolean a() {
        if (f == null) {
            return false;
        }
        f.c();
        f.interrupt();
        d.clear();
        f = null;
        return true;
    }

    static synchronized int b() {
        return d.size();
    }
}
