package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SignUpResult implements Serializable {
    private Boolean a;
    private CodeDeliveryDetailsType b;
    private String c;

    public Boolean a() {
        return this.a;
    }

    public Boolean b() {
        return this.a;
    }

    public void a(Boolean bool) {
        this.a = bool;
    }

    public SignUpResult b(Boolean bool) {
        this.a = bool;
        return this;
    }

    public CodeDeliveryDetailsType c() {
        return this.b;
    }

    public void a(CodeDeliveryDetailsType codeDeliveryDetailsType) {
        this.b = codeDeliveryDetailsType;
    }

    public SignUpResult b(CodeDeliveryDetailsType codeDeliveryDetailsType) {
        this.b = codeDeliveryDetailsType;
        return this;
    }

    public String d() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public SignUpResult b(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (b() != null) {
            sb.append("UserConfirmed: " + b() + ",");
        }
        if (c() != null) {
            sb.append("CodeDeliveryDetails: " + c() + ",");
        }
        if (d() != null) {
            sb.append("UserSub: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((b() == null ? 0 : b().hashCode()) + 31) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SignUpResult)) {
            return false;
        }
        SignUpResult signUpResult = (SignUpResult) obj;
        if ((signUpResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (signUpResult.b() != null && !signUpResult.b().equals(b())) {
            return false;
        }
        if ((signUpResult.c() == null) ^ (c() == null)) {
            return false;
        }
        if (signUpResult.c() != null && !signUpResult.c().equals(c())) {
            return false;
        }
        if ((signUpResult.d() == null) ^ (d() == null)) {
            return false;
        }
        return signUpResult.d() == null || signUpResult.d().equals(d());
    }
}
