package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ChallengeResponseType implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ChallengeResponseType b(String str) {
        this.a = str;
        return this;
    }

    public void a(ChallengeName challengeName) {
        this.a = challengeName.toString();
    }

    public ChallengeResponseType b(ChallengeName challengeName) {
        this.a = challengeName.toString();
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ChallengeResponseType d(String str) {
        this.b = str;
        return this;
    }

    public void a(ChallengeResponse challengeResponse) {
        this.b = challengeResponse.toString();
    }

    public ChallengeResponseType b(ChallengeResponse challengeResponse) {
        this.b = challengeResponse.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ChallengeName: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ChallengeResponse: " + b());
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
        if (obj == null || !(obj instanceof ChallengeResponseType)) {
            return false;
        }
        ChallengeResponseType challengeResponseType = (ChallengeResponseType) obj;
        if ((challengeResponseType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (challengeResponseType.a() != null && !challengeResponseType.a().equals(a())) {
            return false;
        }
        if ((challengeResponseType.b() == null) ^ (b() == null)) {
            return false;
        }
        return challengeResponseType.b() == null || challengeResponseType.b().equals(b());
    }
}
