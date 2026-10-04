package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SetUserSettingsRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private List<MFAOptionType> b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SetUserSettingsRequest b(String str) {
        this.a = str;
        return this;
    }

    public List<MFAOptionType> i() {
        return this.b;
    }

    public void a(Collection<MFAOptionType> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public SetUserSettingsRequest a(MFAOptionType... mFAOptionTypeArr) {
        if (i() == null) {
            this.b = new ArrayList(mFAOptionTypeArr.length);
        }
        for (MFAOptionType mFAOptionType : mFAOptionTypeArr) {
            this.b.add(mFAOptionType);
        }
        return this;
    }

    public SetUserSettingsRequest b(Collection<MFAOptionType> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("AccessToken: " + h() + ",");
        }
        if (i() != null) {
            sb.append("MFAOptions: " + i());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() != null ? i().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SetUserSettingsRequest)) {
            return false;
        }
        SetUserSettingsRequest setUserSettingsRequest = (SetUserSettingsRequest) obj;
        if ((setUserSettingsRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (setUserSettingsRequest.h() != null && !setUserSettingsRequest.h().equals(h())) {
            return false;
        }
        if ((setUserSettingsRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return setUserSettingsRequest.i() == null || setUserSettingsRequest.i().equals(i());
    }
}
