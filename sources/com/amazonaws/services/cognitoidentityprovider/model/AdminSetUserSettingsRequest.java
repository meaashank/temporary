package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminSetUserSettingsRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private List<MFAOptionType> c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminSetUserSettingsRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminSetUserSettingsRequest d(String str) {
        this.b = str;
        return this;
    }

    public List<MFAOptionType> j() {
        return this.c;
    }

    public void a(Collection<MFAOptionType> collection) {
        if (collection == null) {
            this.c = null;
        } else {
            this.c = new ArrayList(collection);
        }
    }

    public AdminSetUserSettingsRequest a(MFAOptionType... mFAOptionTypeArr) {
        if (j() == null) {
            this.c = new ArrayList(mFAOptionTypeArr.length);
        }
        for (MFAOptionType mFAOptionType : mFAOptionTypeArr) {
            this.c.add(mFAOptionType);
        }
        return this;
    }

    public AdminSetUserSettingsRequest b(Collection<MFAOptionType> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Username: " + i() + ",");
        }
        if (j() != null) {
            sb.append("MFAOptions: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminSetUserSettingsRequest)) {
            return false;
        }
        AdminSetUserSettingsRequest adminSetUserSettingsRequest = (AdminSetUserSettingsRequest) obj;
        if ((adminSetUserSettingsRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminSetUserSettingsRequest.h() != null && !adminSetUserSettingsRequest.h().equals(h())) {
            return false;
        }
        if ((adminSetUserSettingsRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminSetUserSettingsRequest.i() != null && !adminSetUserSettingsRequest.i().equals(i())) {
            return false;
        }
        if ((adminSetUserSettingsRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return adminSetUserSettingsRequest.j() == null || adminSetUserSettingsRequest.j().equals(j());
    }
}
