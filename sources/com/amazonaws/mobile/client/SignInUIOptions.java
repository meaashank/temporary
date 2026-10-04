package com.amazonaws.mobile.client;

import android.app.Activity;

/* JADX INFO: loaded from: classes.dex */
public class SignInUIOptions {
    private final Builder a;

    SignInUIOptions(Builder builder) {
        this.a = builder;
    }

    public Integer a() {
        return this.a.a;
    }

    public Integer b() {
        return this.a.b;
    }

    public boolean c() {
        return this.a.c;
    }

    public Class<? extends Activity> d() {
        return this.a.d;
    }

    public HostedUIOptions e() {
        return this.a.e;
    }

    public static Builder f() {
        return new Builder();
    }

    public static class Builder {
        private Integer a;
        private Integer b;
        private boolean c;
        private Class<? extends Activity> d;
        private HostedUIOptions e;

        public Builder a(Integer num) {
            this.a = num;
            return this;
        }

        public Builder b(Integer num) {
            this.b = num;
            return this;
        }

        public Builder a(boolean z) {
            this.c = z;
            return this;
        }

        public Builder a(Class<? extends Activity> cls) {
            this.d = cls;
            return this;
        }

        public Builder a(HostedUIOptions hostedUIOptions) {
            this.e = hostedUIOptions;
            return this;
        }

        public SignInUIOptions a() {
            return new SignInUIOptions(this);
        }
    }
}
