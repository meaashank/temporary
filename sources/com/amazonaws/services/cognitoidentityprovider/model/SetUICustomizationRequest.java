package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class SetUICustomizationRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private ByteBuffer d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SetUICustomizationRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public SetUICustomizationRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public SetUICustomizationRequest f(String str) {
        this.c = str;
        return this;
    }

    public ByteBuffer k() {
        return this.d;
    }

    public void a(ByteBuffer byteBuffer) {
        this.d = byteBuffer;
    }

    public SetUICustomizationRequest b(ByteBuffer byteBuffer) {
        this.d = byteBuffer;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("ClientId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("CSS: " + j() + ",");
        }
        if (k() != null) {
            sb.append("ImageFile: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SetUICustomizationRequest)) {
            return false;
        }
        SetUICustomizationRequest setUICustomizationRequest = (SetUICustomizationRequest) obj;
        if ((setUICustomizationRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (setUICustomizationRequest.h() != null && !setUICustomizationRequest.h().equals(h())) {
            return false;
        }
        if ((setUICustomizationRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (setUICustomizationRequest.i() != null && !setUICustomizationRequest.i().equals(i())) {
            return false;
        }
        if ((setUICustomizationRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (setUICustomizationRequest.j() != null && !setUICustomizationRequest.j().equals(j())) {
            return false;
        }
        if ((setUICustomizationRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return setUICustomizationRequest.k() == null || setUICustomizationRequest.k().equals(k());
    }
}
