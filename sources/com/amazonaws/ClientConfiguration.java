package com.amazonaws;

import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.VersionInfoUtils;
import java.net.InetAddress;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class ClientConfiguration {
    public static final int a = 15000;
    public static final int b = 15000;
    public static final int c = 10;
    public static final String d = VersionInfoUtils.c();
    public static final RetryPolicy e = PredefinedRetryPolicies.c;
    public static final boolean f = true;
    private boolean A;
    private boolean B;
    private String g;
    private int h;
    private RetryPolicy i;
    private InetAddress j;
    private Protocol k;
    private String l;
    private int m;
    private String n;
    private String o;

    @Deprecated
    private String p;

    @Deprecated
    private String q;
    private boolean r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private boolean x;
    private String y;
    private TrustManager z;

    public ClientConfiguration() {
        this.g = d;
        this.h = -1;
        this.i = e;
        this.k = Protocol.HTTPS;
        this.l = null;
        this.m = -1;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.s = 10;
        this.t = 15000;
        this.u = 15000;
        this.v = 0;
        this.w = 0;
        this.x = true;
        this.z = null;
        this.A = false;
        this.B = false;
    }

    public ClientConfiguration(ClientConfiguration clientConfiguration) {
        this.g = d;
        this.h = -1;
        this.i = e;
        this.k = Protocol.HTTPS;
        this.l = null;
        this.m = -1;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.s = 10;
        this.t = 15000;
        this.u = 15000;
        this.v = 0;
        this.w = 0;
        this.x = true;
        this.z = null;
        this.A = false;
        this.B = false;
        this.u = clientConfiguration.u;
        this.s = clientConfiguration.s;
        this.h = clientConfiguration.h;
        this.i = clientConfiguration.i;
        this.j = clientConfiguration.j;
        this.k = clientConfiguration.k;
        this.p = clientConfiguration.p;
        this.l = clientConfiguration.l;
        this.o = clientConfiguration.o;
        this.m = clientConfiguration.m;
        this.n = clientConfiguration.n;
        this.q = clientConfiguration.q;
        this.r = clientConfiguration.r;
        this.t = clientConfiguration.t;
        this.g = clientConfiguration.g;
        this.x = clientConfiguration.x;
        this.w = clientConfiguration.w;
        this.v = clientConfiguration.v;
        this.y = clientConfiguration.y;
        this.z = clientConfiguration.z;
        this.A = clientConfiguration.A;
        this.B = clientConfiguration.B;
    }

    public Protocol a() {
        return this.k;
    }

    public void a(Protocol protocol) {
        this.k = protocol;
    }

    public ClientConfiguration b(Protocol protocol) {
        a(protocol);
        return this;
    }

    public int b() {
        return this.s;
    }

    public void a(int i) {
        this.s = i;
    }

    public ClientConfiguration b(int i) {
        a(i);
        return this;
    }

    public String c() {
        return this.g;
    }

    public void a(String str) {
        this.g = str;
    }

    public ClientConfiguration b(String str) {
        a(str);
        return this;
    }

    public InetAddress d() {
        return this.j;
    }

    public void a(InetAddress inetAddress) {
        this.j = inetAddress;
    }

    public ClientConfiguration b(InetAddress inetAddress) {
        a(inetAddress);
        return this;
    }

    public String e() {
        return this.l;
    }

    public void c(String str) {
        this.l = str;
    }

    public ClientConfiguration d(String str) {
        c(str);
        return this;
    }

    public int f() {
        return this.m;
    }

    public void c(int i) {
        this.m = i;
    }

    public ClientConfiguration d(int i) {
        c(i);
        return this;
    }

    public String g() {
        return this.n;
    }

    public void e(String str) {
        this.n = str;
    }

    public ClientConfiguration f(String str) {
        e(str);
        return this;
    }

    public String h() {
        return this.o;
    }

    public void g(String str) {
        this.o = str;
    }

    public ClientConfiguration h(String str) {
        g(str);
        return this;
    }

    @Deprecated
    public String i() {
        return this.p;
    }

    @Deprecated
    public void i(String str) {
        this.p = str;
    }

    @Deprecated
    public ClientConfiguration j(String str) {
        i(str);
        return this;
    }

    public String j() {
        return this.q;
    }

    @Deprecated
    public void k(String str) {
        this.q = str;
    }

    @Deprecated
    public ClientConfiguration l(String str) {
        k(str);
        return this;
    }

    public RetryPolicy k() {
        return this.i;
    }

    public void a(RetryPolicy retryPolicy) {
        this.i = retryPolicy;
    }

    public ClientConfiguration b(RetryPolicy retryPolicy) {
        a(retryPolicy);
        return this;
    }

    public int l() {
        return this.h;
    }

    public void e(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("maxErrorRetry shoud be non-negative");
        }
        this.h = i;
    }

    public ClientConfiguration f(int i) {
        e(i);
        return this;
    }

    public int m() {
        return this.t;
    }

    public void g(int i) {
        this.t = i;
    }

    public ClientConfiguration h(int i) {
        g(i);
        return this;
    }

    public int n() {
        return this.u;
    }

    public void i(int i) {
        this.u = i;
    }

    public ClientConfiguration j(int i) {
        i(i);
        return this;
    }

    public boolean o() {
        return this.x;
    }

    public void a(boolean z) {
        this.x = z;
    }

    public ClientConfiguration b(boolean z) {
        a(z);
        return this;
    }

    public int[] p() {
        return new int[]{this.v, this.w};
    }

    public void a(int i, int i2) {
        this.v = i;
        this.w = i2;
    }

    public ClientConfiguration b(int i, int i2) {
        a(i, i2);
        return this;
    }

    public String q() {
        return this.y;
    }

    public void m(String str) {
        this.y = str;
    }

    public ClientConfiguration n(String str) {
        m(str);
        return this;
    }

    public boolean r() {
        return this.r;
    }

    public void a(Boolean bool) {
        this.r = bool.booleanValue();
    }

    public ClientConfiguration c(boolean z) {
        a(Boolean.valueOf(z));
        return this;
    }

    public TrustManager s() {
        return this.z;
    }

    public void a(TrustManager trustManager) {
        this.z = trustManager;
    }

    public ClientConfiguration b(TrustManager trustManager) {
        a(trustManager);
        return this;
    }

    public boolean t() {
        return this.A;
    }

    public void d(boolean z) {
        this.A = z;
    }

    public ClientConfiguration e(boolean z) {
        this.A = z;
        return this;
    }

    public boolean u() {
        return this.B;
    }

    public void f(boolean z) {
        this.B = z;
    }

    public ClientConfiguration g(boolean z) {
        f(z);
        return this;
    }
}
