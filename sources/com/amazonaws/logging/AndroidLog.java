package com.amazonaws.logging;

/* JADX INFO: loaded from: classes.dex */
public class AndroidLog implements Log {
    private final String a;

    public AndroidLog(String str) {
        this.a = str;
    }

    @Override // com.amazonaws.logging.Log
    public boolean a() {
        return android.util.Log.isLoggable(this.a, 3);
    }

    @Override // com.amazonaws.logging.Log
    public boolean b() {
        return android.util.Log.isLoggable(this.a, 6);
    }

    @Override // com.amazonaws.logging.Log
    public boolean c() {
        return android.util.Log.isLoggable(this.a, 4);
    }

    @Override // com.amazonaws.logging.Log
    public boolean d() {
        return android.util.Log.isLoggable(this.a, 2);
    }

    @Override // com.amazonaws.logging.Log
    public boolean e() {
        return android.util.Log.isLoggable(this.a, 5);
    }

    @Override // com.amazonaws.logging.Log
    public void a(Object obj) {
        android.util.Log.v(this.a, obj.toString());
    }

    @Override // com.amazonaws.logging.Log
    public void a(Object obj, Throwable th) {
        android.util.Log.v(this.a, obj.toString(), th);
    }

    @Override // com.amazonaws.logging.Log
    public void b(Object obj) {
        android.util.Log.d(this.a, obj.toString());
    }

    @Override // com.amazonaws.logging.Log
    public void b(Object obj, Throwable th) {
        android.util.Log.d(this.a, obj.toString(), th);
    }

    @Override // com.amazonaws.logging.Log
    public void c(Object obj) {
        android.util.Log.i(this.a, obj.toString());
    }

    @Override // com.amazonaws.logging.Log
    public void c(Object obj, Throwable th) {
        android.util.Log.i(this.a, obj.toString(), th);
    }

    @Override // com.amazonaws.logging.Log
    public void d(Object obj) {
        android.util.Log.w(this.a, obj.toString());
    }

    @Override // com.amazonaws.logging.Log
    public void d(Object obj, Throwable th) {
        android.util.Log.w(this.a, obj.toString(), th);
    }

    @Override // com.amazonaws.logging.Log
    public void e(Object obj) {
        android.util.Log.e(this.a, obj.toString());
    }

    @Override // com.amazonaws.logging.Log
    public void e(Object obj, Throwable th) {
        android.util.Log.e(this.a, obj.toString(), th);
    }
}
