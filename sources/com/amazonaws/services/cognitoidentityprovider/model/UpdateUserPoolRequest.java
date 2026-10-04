package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserPoolRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private UserPoolPolicyType b;
    private LambdaConfigType c;
    private List<String> d;
    private String e;
    private String f;
    private String g;
    private VerificationMessageTemplateType h;
    private String i;
    private String j;
    private DeviceConfigurationType k;
    private EmailConfigurationType l;
    private SmsConfigurationType m;
    private Map<String, String> n;
    private AdminCreateUserConfigType o;
    private UserPoolAddOnsType p;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UpdateUserPoolRequest b(String str) {
        this.a = str;
        return this;
    }

    public UserPoolPolicyType i() {
        return this.b;
    }

    public void a(UserPoolPolicyType userPoolPolicyType) {
        this.b = userPoolPolicyType;
    }

    public UpdateUserPoolRequest b(UserPoolPolicyType userPoolPolicyType) {
        this.b = userPoolPolicyType;
        return this;
    }

    public LambdaConfigType j() {
        return this.c;
    }

    public void a(LambdaConfigType lambdaConfigType) {
        this.c = lambdaConfigType;
    }

    public UpdateUserPoolRequest b(LambdaConfigType lambdaConfigType) {
        this.c = lambdaConfigType;
        return this;
    }

    public List<String> k() {
        return this.d;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.d = null;
        } else {
            this.d = new ArrayList(collection);
        }
    }

    public UpdateUserPoolRequest a(String... strArr) {
        if (k() == null) {
            this.d = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.d.add(str);
        }
        return this;
    }

    public UpdateUserPoolRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public String l() {
        return this.e;
    }

    public void c(String str) {
        this.e = str;
    }

    public UpdateUserPoolRequest d(String str) {
        this.e = str;
        return this;
    }

    public String m() {
        return this.f;
    }

    public void e(String str) {
        this.f = str;
    }

    public UpdateUserPoolRequest f(String str) {
        this.f = str;
        return this;
    }

    public String n() {
        return this.g;
    }

    public void g(String str) {
        this.g = str;
    }

    public UpdateUserPoolRequest h(String str) {
        this.g = str;
        return this;
    }

    public VerificationMessageTemplateType o() {
        return this.h;
    }

    public void a(VerificationMessageTemplateType verificationMessageTemplateType) {
        this.h = verificationMessageTemplateType;
    }

    public UpdateUserPoolRequest b(VerificationMessageTemplateType verificationMessageTemplateType) {
        this.h = verificationMessageTemplateType;
        return this;
    }

    public String p() {
        return this.i;
    }

    public void i(String str) {
        this.i = str;
    }

    public UpdateUserPoolRequest j(String str) {
        this.i = str;
        return this;
    }

    public String q() {
        return this.j;
    }

    public void k(String str) {
        this.j = str;
    }

    public UpdateUserPoolRequest l(String str) {
        this.j = str;
        return this;
    }

    public void a(UserPoolMfaType userPoolMfaType) {
        this.j = userPoolMfaType.toString();
    }

    public UpdateUserPoolRequest b(UserPoolMfaType userPoolMfaType) {
        this.j = userPoolMfaType.toString();
        return this;
    }

    public DeviceConfigurationType r() {
        return this.k;
    }

    public void a(DeviceConfigurationType deviceConfigurationType) {
        this.k = deviceConfigurationType;
    }

    public UpdateUserPoolRequest b(DeviceConfigurationType deviceConfigurationType) {
        this.k = deviceConfigurationType;
        return this;
    }

    public EmailConfigurationType s() {
        return this.l;
    }

    public void a(EmailConfigurationType emailConfigurationType) {
        this.l = emailConfigurationType;
    }

    public UpdateUserPoolRequest b(EmailConfigurationType emailConfigurationType) {
        this.l = emailConfigurationType;
        return this;
    }

    public SmsConfigurationType t() {
        return this.m;
    }

    public void a(SmsConfigurationType smsConfigurationType) {
        this.m = smsConfigurationType;
    }

    public UpdateUserPoolRequest b(SmsConfigurationType smsConfigurationType) {
        this.m = smsConfigurationType;
        return this;
    }

    public Map<String, String> u() {
        return this.n;
    }

    public void a(Map<String, String> map) {
        this.n = map;
    }

    public UpdateUserPoolRequest b(Map<String, String> map) {
        this.n = map;
        return this;
    }

    public UpdateUserPoolRequest a(String str, String str2) {
        if (this.n == null) {
            this.n = new HashMap();
        }
        if (this.n.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.n.put(str, str2);
        return this;
    }

    public UpdateUserPoolRequest v() {
        this.n = null;
        return this;
    }

    public AdminCreateUserConfigType w() {
        return this.o;
    }

    public void a(AdminCreateUserConfigType adminCreateUserConfigType) {
        this.o = adminCreateUserConfigType;
    }

    public UpdateUserPoolRequest b(AdminCreateUserConfigType adminCreateUserConfigType) {
        this.o = adminCreateUserConfigType;
        return this;
    }

    public UserPoolAddOnsType x() {
        return this.p;
    }

    public void a(UserPoolAddOnsType userPoolAddOnsType) {
        this.p = userPoolAddOnsType;
    }

    public UpdateUserPoolRequest b(UserPoolAddOnsType userPoolAddOnsType) {
        this.p = userPoolAddOnsType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Policies: " + i() + ",");
        }
        if (j() != null) {
            sb.append("LambdaConfig: " + j() + ",");
        }
        if (k() != null) {
            sb.append("AutoVerifiedAttributes: " + k() + ",");
        }
        if (l() != null) {
            sb.append("SmsVerificationMessage: " + l() + ",");
        }
        if (m() != null) {
            sb.append("EmailVerificationMessage: " + m() + ",");
        }
        if (n() != null) {
            sb.append("EmailVerificationSubject: " + n() + ",");
        }
        if (o() != null) {
            sb.append("VerificationMessageTemplate: " + o() + ",");
        }
        if (p() != null) {
            sb.append("SmsAuthenticationMessage: " + p() + ",");
        }
        if (q() != null) {
            sb.append("MfaConfiguration: " + q() + ",");
        }
        if (r() != null) {
            sb.append("DeviceConfiguration: " + r() + ",");
        }
        if (s() != null) {
            sb.append("EmailConfiguration: " + s() + ",");
        }
        if (t() != null) {
            sb.append("SmsConfiguration: " + t() + ",");
        }
        if (u() != null) {
            sb.append("UserPoolTags: " + u() + ",");
        }
        if (w() != null) {
            sb.append("AdminCreateUserConfig: " + w() + ",");
        }
        if (x() != null) {
            sb.append("UserPoolAddOns: " + x());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() == null ? 0 : p().hashCode())) * 31) + (q() == null ? 0 : q().hashCode())) * 31) + (r() == null ? 0 : r().hashCode())) * 31) + (s() == null ? 0 : s().hashCode())) * 31) + (t() == null ? 0 : t().hashCode())) * 31) + (u() == null ? 0 : u().hashCode())) * 31) + (w() == null ? 0 : w().hashCode())) * 31) + (x() != null ? x().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateUserPoolRequest)) {
            return false;
        }
        UpdateUserPoolRequest updateUserPoolRequest = (UpdateUserPoolRequest) obj;
        if ((updateUserPoolRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateUserPoolRequest.h() != null && !updateUserPoolRequest.h().equals(h())) {
            return false;
        }
        if ((updateUserPoolRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (updateUserPoolRequest.i() != null && !updateUserPoolRequest.i().equals(i())) {
            return false;
        }
        if ((updateUserPoolRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (updateUserPoolRequest.j() != null && !updateUserPoolRequest.j().equals(j())) {
            return false;
        }
        if ((updateUserPoolRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (updateUserPoolRequest.k() != null && !updateUserPoolRequest.k().equals(k())) {
            return false;
        }
        if ((updateUserPoolRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (updateUserPoolRequest.l() != null && !updateUserPoolRequest.l().equals(l())) {
            return false;
        }
        if ((updateUserPoolRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (updateUserPoolRequest.m() != null && !updateUserPoolRequest.m().equals(m())) {
            return false;
        }
        if ((updateUserPoolRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (updateUserPoolRequest.n() != null && !updateUserPoolRequest.n().equals(n())) {
            return false;
        }
        if ((updateUserPoolRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        if (updateUserPoolRequest.o() != null && !updateUserPoolRequest.o().equals(o())) {
            return false;
        }
        if ((updateUserPoolRequest.p() == null) ^ (p() == null)) {
            return false;
        }
        if (updateUserPoolRequest.p() != null && !updateUserPoolRequest.p().equals(p())) {
            return false;
        }
        if ((updateUserPoolRequest.q() == null) ^ (q() == null)) {
            return false;
        }
        if (updateUserPoolRequest.q() != null && !updateUserPoolRequest.q().equals(q())) {
            return false;
        }
        if ((updateUserPoolRequest.r() == null) ^ (r() == null)) {
            return false;
        }
        if (updateUserPoolRequest.r() != null && !updateUserPoolRequest.r().equals(r())) {
            return false;
        }
        if ((updateUserPoolRequest.s() == null) ^ (s() == null)) {
            return false;
        }
        if (updateUserPoolRequest.s() != null && !updateUserPoolRequest.s().equals(s())) {
            return false;
        }
        if ((updateUserPoolRequest.t() == null) ^ (t() == null)) {
            return false;
        }
        if (updateUserPoolRequest.t() != null && !updateUserPoolRequest.t().equals(t())) {
            return false;
        }
        if ((updateUserPoolRequest.u() == null) ^ (u() == null)) {
            return false;
        }
        if (updateUserPoolRequest.u() != null && !updateUserPoolRequest.u().equals(u())) {
            return false;
        }
        if ((updateUserPoolRequest.w() == null) ^ (w() == null)) {
            return false;
        }
        if (updateUserPoolRequest.w() != null && !updateUserPoolRequest.w().equals(w())) {
            return false;
        }
        if ((updateUserPoolRequest.x() == null) ^ (x() == null)) {
            return false;
        }
        return updateUserPoolRequest.x() == null || updateUserPoolRequest.x().equals(x());
    }
}
