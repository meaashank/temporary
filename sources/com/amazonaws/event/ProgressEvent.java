package com.amazonaws.event;

/* JADX INFO: loaded from: classes.dex */
public class ProgressEvent {
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 4;
    public static final int d = 8;
    public static final int e = 16;
    public static final int f = 32;
    public static final int g = 1024;
    public static final int h = 2048;
    public static final int i = 4096;
    protected long j;
    protected int k;

    public ProgressEvent(long j) {
        this.j = j;
    }

    public ProgressEvent(int i2, long j) {
        this.k = i2;
        this.j = j;
    }

    public void a(long j) {
        this.j = j;
    }

    public long a() {
        return this.j;
    }

    public int b() {
        return this.k;
    }

    public void a(int i2) {
        this.k = i2;
    }
}
