package com.amazonaws.mobileconnectors.s3.transfermanager;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class PauseResult<T> {
    private final PauseStatus a;
    private final T b;

    public PauseResult(PauseStatus pauseStatus, T t) {
        if (pauseStatus == null) {
            throw new IllegalArgumentException();
        }
        this.a = pauseStatus;
        this.b = t;
    }

    public PauseResult(PauseStatus pauseStatus) {
        this(pauseStatus, null);
    }

    public PauseStatus a() {
        return this.a;
    }

    public T b() {
        return this.b;
    }
}
