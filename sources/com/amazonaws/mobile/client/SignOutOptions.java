package com.amazonaws.mobile.client;

/* JADX INFO: loaded from: classes.dex */
public class SignOutOptions {
    private final Builder a;

    SignOutOptions(Builder builder) {
        this.a = builder;
    }

    public boolean a() {
        return this.a.a;
    }

    public boolean b() {
        return this.a.b;
    }

    public static Builder c() {
        return new Builder();
    }

    public static class Builder {
        private boolean a;
        private boolean b;

        public Builder a(boolean z) {
            this.a = z;
            return this;
        }

        public Builder b(boolean z) {
            this.b = z;
            return this;
        }

        public SignOutOptions a() {
            return new SignOutOptions(this);
        }
    }
}
