package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RespondToAuthChallengeResult implements Serializable {
    private String a;
    private String b;
    private Map<String, String> c;
    private AuthenticationResultType d;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public RespondToAuthChallengeResult b(String str) {
        this.a = str;
        return this;
    }

    public void a(ChallengeNameType challengeNameType) {
        this.a = challengeNameType.toString();
    }

    public RespondToAuthChallengeResult b(ChallengeNameType challengeNameType) {
        this.a = challengeNameType.toString();
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public RespondToAuthChallengeResult d(String str) {
        this.b = str;
        return this;
    }

    public Map<String, String> c() {
        return this.c;
    }

    public void a(Map<String, String> map) {
        this.c = map;
    }

    public RespondToAuthChallengeResult b(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public RespondToAuthChallengeResult a(String str, String str2) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.c.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.c.put(str, str2);
        return this;
    }

    public RespondToAuthChallengeResult d() {
        this.c = null;
        return this;
    }

    public AuthenticationResultType e() {
        return this.d;
    }

    public void a(AuthenticationResultType authenticationResultType) {
        this.d = authenticationResultType;
    }

    public RespondToAuthChallengeResult b(AuthenticationResultType authenticationResultType) {
        this.d = authenticationResultType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ChallengeName: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Session: " + b() + ",");
        }
        if (c() != null) {
            sb.append("ChallengeParameters: " + c() + ",");
        }
        if (e() != null) {
            sb.append("AuthenticationResult: " + e());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (e() != null ? e().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RespondToAuthChallengeResult)) {
            return false;
        }
        RespondToAuthChallengeResult respondToAuthChallengeResult = (RespondToAuthChallengeResult) obj;
        if ((respondToAuthChallengeResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (respondToAuthChallengeResult.a() != null && !respondToAuthChallengeResult.a().equals(a())) {
            return false;
        }
        if ((respondToAuthChallengeResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (respondToAuthChallengeResult.b() != null && !respondToAuthChallengeResult.b().equals(b())) {
            return false;
        }
        if ((respondToAuthChallengeResult.c() == null) ^ (c() == null)) {
            return false;
        }
        if (respondToAuthChallengeResult.c() != null && !respondToAuthChallengeResult.c().equals(c())) {
            return false;
        }
        if ((respondToAuthChallengeResult.e() == null) ^ (e() == null)) {
            return false;
        }
        return respondToAuthChallengeResult.e() == null || respondToAuthChallengeResult.e().equals(e());
    }
}
