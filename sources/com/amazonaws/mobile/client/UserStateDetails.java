package com.amazonaws.mobile.client;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UserStateDetails {
    private final UserState a;
    private final Map<String, String> b;

    public UserStateDetails(UserState userState, Map<String, String> map) {
        this.a = userState;
        this.b = map;
    }

    public UserState a() {
        return this.a;
    }

    public Map<String, String> b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof UserStateDetails) {
            UserStateDetails userStateDetails = (UserStateDetails) obj;
            if (!this.a.equals(userStateDetails.a)) {
                return false;
            }
            if (userStateDetails.b == this.b) {
                return true;
            }
            if (this.b == null) {
                return false;
            }
            return this.b.equals(userStateDetails.b);
        }
        return super.equals(obj);
    }
}
