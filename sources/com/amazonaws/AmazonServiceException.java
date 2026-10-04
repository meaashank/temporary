package com.amazonaws;

/* JADX INFO: loaded from: classes.dex */
public class AmazonServiceException extends AmazonClientException {
    private static final long serialVersionUID = 1;
    private String a;
    private String b;
    private ErrorType c;
    private String d;
    private int e;
    private String f;

    public enum ErrorType {
        Client,
        Service,
        Unknown
    }

    public AmazonServiceException(String str) {
        super(str);
        this.c = ErrorType.Unknown;
        this.d = str;
    }

    public AmazonServiceException(String str, Exception exc) {
        super(null, exc);
        this.c = ErrorType.Unknown;
        this.d = str;
    }

    public void a(String str) {
        this.a = str;
    }

    public String b() {
        return this.a;
    }

    public void b(String str) {
        this.f = str;
    }

    public String c() {
        return this.f;
    }

    public void c(String str) {
        this.b = str;
    }

    public String d() {
        return this.b;
    }

    public void a(ErrorType errorType) {
        this.c = errorType;
    }

    public ErrorType e() {
        return this.c;
    }

    public String f() {
        return this.d;
    }

    public void a(int i) {
        this.e = i;
    }

    public int g() {
        return this.e;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return f() + " (Service: " + c() + "; Status Code: " + g() + "; Error Code: " + d() + "; Request ID: " + b() + ")";
    }

    public void d(String str) {
        this.d = str;
    }
}
