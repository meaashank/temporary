package com.amazonaws.mobile.client;

/* JADX INFO: loaded from: classes.dex */
public class FederatedSignInOptions {
    private final Builder a;

    FederatedSignInOptions(Builder builder) {
        this.a = builder;
    }

    public String a() {
        return this.a.a;
    }

    public String b() {
        return this.a.b;
    }

    public static Builder c() {
        return new Builder();
    }

    public static class Builder {
        private String a;
        private String b;

        public Builder a(String str) {
            this.b = str;
            return this;
        }

        public Builder b(String str) {
            this.a = str;
            return this;
        }

        public FederatedSignInOptions a() {
            return new FederatedSignInOptions(this);
        }
    }
}
