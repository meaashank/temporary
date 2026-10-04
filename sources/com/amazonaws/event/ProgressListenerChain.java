package com.amazonaws.event;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ProgressListenerChain implements ProgressListener {
    private static final Log c = LogFactory.a(ProgressListenerChain.class);
    private final List<ProgressListener> a;
    private final ProgressEventFilter b;

    public interface ProgressEventFilter {
        ProgressEvent a(ProgressEvent progressEvent);
    }

    public ProgressListenerChain(ProgressListener... progressListenerArr) {
        this(null, progressListenerArr);
    }

    public ProgressListenerChain(ProgressEventFilter progressEventFilter, ProgressListener... progressListenerArr) {
        this.a = new CopyOnWriteArrayList();
        if (progressListenerArr == null) {
            throw new IllegalArgumentException("Progress Listeners cannot be null.");
        }
        for (ProgressListener progressListener : progressListenerArr) {
            a(progressListener);
        }
        this.b = progressEventFilter;
    }

    public synchronized void a(ProgressListener progressListener) {
        if (progressListener == null) {
            return;
        }
        this.a.add(progressListener);
    }

    public synchronized void b(ProgressListener progressListener) {
        if (progressListener == null) {
            return;
        }
        this.a.remove(progressListener);
    }

    protected List<ProgressListener> a() {
        return this.a;
    }

    @Override // com.amazonaws.event.ProgressListener
    public void a(ProgressEvent progressEvent) {
        if (this.b == null || (progressEvent = this.b.a(progressEvent)) != null) {
            Iterator<ProgressListener> it = this.a.iterator();
            while (it.hasNext()) {
                try {
                    it.next().a(progressEvent);
                } catch (RuntimeException e) {
                    c.d("Couldn't update progress listener", e);
                }
            }
        }
    }
}
