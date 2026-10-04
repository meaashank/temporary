package com.amazonaws.mobile.client;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HostedUIOptions {
    private final Builder a;

    HostedUIOptions(Builder builder) {
        this.a = builder;
    }

    public String[] a() {
        return this.a.a;
    }

    public String b() {
        return this.a.b;
    }

    public String c() {
        return this.a.c;
    }

    public Boolean d() {
        return this.a.d;
    }

    public String e() {
        return this.a.e;
    }

    public Map<String, String> f() {
        return this.a.f;
    }

    public Map<String, String> g() {
        return this.a.g;
    }

    public Map<String, String> h() {
        return this.a.h;
    }

    public static Builder i() {
        return new Builder();
    }

    public static class Builder {
        private String[] a;
        private String b;
        private String c;
        private Boolean d;
        private String e;
        private Map<String, String> f;
        private Map<String, String> g;
        private Map<String, String> h;

        public Builder a(Map<String, String> map) {
            this.f = map;
            return this;
        }

        public Builder b(Map<String, String> map) {
            this.g = map;
            return this;
        }

        public Builder c(Map<String, String> map) {
            this.h = map;
            return this;
        }

        public Builder a(String... strArr) {
            this.a = strArr;
            return this;
        }

        public Builder a(String str) {
            this.b = str;
            return this;
        }

        public Builder b(String str) {
            this.c = str;
            return this;
        }

        public Builder a(boolean z) {
            this.d = Boolean.valueOf(z);
            return this;
        }

        public Builder c(String str) {
            this.e = str;
            return this;
        }

        public HostedUIOptions a() {
            return new HostedUIOptions(this);
        }
    }
}
