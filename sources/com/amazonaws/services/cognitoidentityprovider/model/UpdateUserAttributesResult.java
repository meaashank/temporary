package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserAttributesResult implements Serializable {
    private List<CodeDeliveryDetailsType> a;

    public List<CodeDeliveryDetailsType> a() {
        return this.a;
    }

    public void a(Collection<CodeDeliveryDetailsType> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public UpdateUserAttributesResult a(CodeDeliveryDetailsType... codeDeliveryDetailsTypeArr) {
        if (a() == null) {
            this.a = new ArrayList(codeDeliveryDetailsTypeArr.length);
        }
        for (CodeDeliveryDetailsType codeDeliveryDetailsType : codeDeliveryDetailsTypeArr) {
            this.a.add(codeDeliveryDetailsType);
        }
        return this;
    }

    public UpdateUserAttributesResult b(Collection<CodeDeliveryDetailsType> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("CodeDeliveryDetailsList: " + a());
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
        if (obj == null || !(obj instanceof UpdateUserAttributesResult)) {
            return false;
        }
        UpdateUserAttributesResult updateUserAttributesResult = (UpdateUserAttributesResult) obj;
        if ((updateUserAttributesResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return updateUserAttributesResult.a() == null || updateUserAttributesResult.a().equals(a());
    }
}
