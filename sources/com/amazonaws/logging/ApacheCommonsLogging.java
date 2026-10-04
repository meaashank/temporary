package com.amazonaws.logging;

/* JADX INFO: loaded from: classes.dex */
public class ApacheCommonsLogging implements Log {
    private Class a;
    private String b;
    private org.apache.commons.logging.Log c;

    public ApacheCommonsLogging(Class cls) {
        this.a = cls;
        this.c = org.apache.commons.logging.LogFactory.getLog(cls);
    }

    public ApacheCommonsLogging(String str) {
        this.b = str;
        this.c = org.apache.commons.logging.LogFactory.getLog(str);
    }

    @Override // com.amazonaws.logging.Log
    public boolean a() {
        return this.c.isDebugEnabled();
    }

    @Override // com.amazonaws.logging.Log
    public boolean b() {
        return this.c.isErrorEnabled();
    }

    @Override // com.amazonaws.logging.Log
    public boolean c() {
        return this.c.isInfoEnabled();
    }

    @Override // com.amazonaws.logging.Log
    public boolean d() {
        return this.c.isTraceEnabled();
    }

    @Override // com.amazonaws.logging.Log
    public boolean e() {
        return this.c.isWarnEnabled();
    }

    @Override // com.amazonaws.logging.Log
    public void a(Object obj) {
        this.c.trace(obj);
    }

    @Override // com.amazonaws.logging.Log
    public void a(Object obj, Throwable th) {
        this.c.trace(obj, th);
    }

    @Override // com.amazonaws.logging.Log
    public void b(Object obj) {
        this.c.debug(obj);
    }

    @Override // com.amazonaws.logging.Log
    public void b(Object obj, Throwable th) {
        this.c.debug(obj, th);
    }

    @Override // com.amazonaws.logging.Log
    public void c(Object obj) {
        this.c.info(obj);
    }

    @Override // com.amazonaws.logging.Log
    public void c(Object obj, Throwable th) {
        this.c.info(obj, th);
    }

    @Override // com.amazonaws.logging.Log
    public void d(Object obj) {
        this.c.warn(obj);
    }

    @Override // com.amazonaws.logging.Log
    public void d(Object obj, Throwable th) {
        this.c.warn(obj, th);
    }

    @Override // com.amazonaws.logging.Log
    public void e(Object obj) {
        this.c.error(obj);
    }

    @Override // com.amazonaws.logging.Log
    public void e(Object obj, Throwable th) {
        this.c.error(obj, th);
    }
}
