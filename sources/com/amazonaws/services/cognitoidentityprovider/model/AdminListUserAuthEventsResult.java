package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminListUserAuthEventsResult implements Serializable {
    private List<AuthEventType> a;
    private String b;

    public List<AuthEventType> a() {
        return this.a;
    }

    public void a(Collection<AuthEventType> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public AdminListUserAuthEventsResult a(AuthEventType... authEventTypeArr) {
        if (a() == null) {
            this.a = new ArrayList(authEventTypeArr.length);
        }
        for (AuthEventType authEventType : authEventTypeArr) {
            this.a.add(authEventType);
        }
        return this;
    }

    public AdminListUserAuthEventsResult b(Collection<AuthEventType> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public AdminListUserAuthEventsResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("AuthEvents: " + a() + ",");
        }
        if (b() != null) {
            sb.append("NextToken: " + b());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() != null ? b().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminListUserAuthEventsResult)) {
            return false;
        }
        AdminListUserAuthEventsResult adminListUserAuthEventsResult = (AdminListUserAuthEventsResult) obj;
        if ((adminListUserAuthEventsResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (adminListUserAuthEventsResult.a() != null && !adminListUserAuthEventsResult.a().equals(a())) {
            return false;
        }
        if ((adminListUserAuthEventsResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return adminListUserAuthEventsResult.b() == null || adminListUserAuthEventsResult.b().equals(b());
    }
}
