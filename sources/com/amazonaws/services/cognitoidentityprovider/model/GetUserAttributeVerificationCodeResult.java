package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GetUserAttributeVerificationCodeResult implements Serializable {
    private CodeDeliveryDetailsType a;

    public CodeDeliveryDetailsType a() {
        return this.a;
    }

    public void a(CodeDeliveryDetailsType codeDeliveryDetailsType) {
        this.a = codeDeliveryDetailsType;
    }

    public GetUserAttributeVerificationCodeResult b(CodeDeliveryDetailsType codeDeliveryDetailsType) {
        this.a = codeDeliveryDetailsType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("CodeDeliveryDetails: " + a());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (a() == null ? 0 : a().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetUserAttributeVerificationCodeResult)) {
            return false;
        }
        GetUserAttributeVerificationCodeResult getUserAttributeVerificationCodeResult = (GetUserAttributeVerificationCodeResult) obj;
        if ((getUserAttributeVerificationCodeResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return getUserAttributeVerificationCodeResult.a() == null || getUserAttributeVerificationCodeResult.a().equals(a());
    }
}
