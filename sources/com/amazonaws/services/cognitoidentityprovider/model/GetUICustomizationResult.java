package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GetUICustomizationResult implements Serializable {
    private UICustomizationType a;

    public UICustomizationType a() {
        return this.a;
    }

    public void a(UICustomizationType uICustomizationType) {
        this.a = uICustomizationType;
    }

    public GetUICustomizationResult b(UICustomizationType uICustomizationType) {
        this.a = uICustomizationType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UICustomization: " + a());
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
        if (obj == null || !(obj instanceof GetUICustomizationResult)) {
            return false;
        }
        GetUICustomizationResult getUICustomizationResult = (GetUICustomizationResult) obj;
        if ((getUICustomizationResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return getUICustomizationResult.a() == null || getUICustomizationResult.a().equals(a());
    }
}
