package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SetUICustomizationResult implements Serializable {
    private UICustomizationType a;

    public UICustomizationType a() {
        return this.a;
    }

    public void a(UICustomizationType uICustomizationType) {
        this.a = uICustomizationType;
    }

    public SetUICustomizationResult b(UICustomizationType uICustomizationType) {
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
        if (obj == null || !(obj instanceof SetUICustomizationResult)) {
            return false;
        }
        SetUICustomizationResult setUICustomizationResult = (SetUICustomizationResult) obj;
        if ((setUICustomizationResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return setUICustomizationResult.a() == null || setUICustomizationResult.a().equals(a());
    }
}
