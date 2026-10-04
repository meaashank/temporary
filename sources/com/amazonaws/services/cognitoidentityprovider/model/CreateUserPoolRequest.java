package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private UserPoolPolicyType b;
    private LambdaConfigType c;
    private List<String> d;
    private List<String> e;
    private List<String> f;
    private String g;
    private String h;
    private String i;
    private VerificationMessageTemplateType j;
    private String k;
    private String l;
    private DeviceConfigurationType m;
    private EmailConfigurationType n;
    private SmsConfigurationType o;
    private Map<String, String> p;
    private AdminCreateUserConfigType q;
    private List<SchemaAttributeType> r;
    private UserPoolAddOnsType s;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CreateUserPoolRequest b(String str) {
        this.a = str;
        return this;
    }

    public UserPoolPolicyType i() {
        return this.b;
    }

    public void a(UserPoolPolicyType userPoolPolicyType) {
        this.b = userPoolPolicyType;
    }

    public CreateUserPoolRequest b(UserPoolPolicyType userPoolPolicyType) {
        this.b = userPoolPolicyType;
        return this;
    }

    public LambdaConfigType j() {
        return this.c;
    }

    public void a(LambdaConfigType lambdaConfigType) {
        this.c = lambdaConfigType;
    }

    public CreateUserPoolRequest b(LambdaConfigType lambdaConfigType) {
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

    public CreateUserPoolRequest a(String... strArr) {
        if (k() == null) {
            this.d = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.d.add(str);
        }
        return this;
    }

    public CreateUserPoolRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public List<String> l() {
        return this.e;
    }

    public void c(Collection<String> collection) {
        if (collection == null) {
            this.e = null;
        } else {
            this.e = new ArrayList(collection);
        }
    }

    public CreateUserPoolRequest b(String... strArr) {
        if (l() == null) {
            this.e = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.e.add(str);
        }
        return this;
    }

    public CreateUserPoolRequest d(Collection<String> collection) {
        c(collection);
        return this;
    }

    public List<String> m() {
        return this.f;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.f = null;
        } else {
            this.f = new ArrayList(collection);
        }
    }

    public CreateUserPoolRequest c(String... strArr) {
        if (m() == null) {
            this.f = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.f.add(str);
        }
        return this;
    }

    public CreateUserPoolRequest f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public String n() {
        return this.g;
    }

    public void c(String str) {
        this.g = str;
    }

    public CreateUserPoolRequest d(String str) {
        this.g = str;
        return this;
    }

    public String o() {
        return this.h;
    }

    public void e(String str) {
        this.h = str;
    }

    public CreateUserPoolRequest f(String str) {
        this.h = str;
        return this;
    }

    public String p() {
        return this.i;
    }

    public void g(String str) {
        this.i = str;
    }

    public CreateUserPoolRequest h(String str) {
        this.i = str;
        return this;
    }

    public VerificationMessageTemplateType q() {
        return this.j;
    }

    public void a(VerificationMessageTemplateType verificationMessageTemplateType) {
        this.j = verificationMessageTemplateType;
    }

    public CreateUserPoolRequest b(VerificationMessageTemplateType verificationMessageTemplateType) {
        this.j = verificationMessageTemplateType;
        return this;
    }

    public String r() {
        return this.k;
    }

    public void i(String str) {
        this.k = str;
    }

    public CreateUserPoolRequest j(String str) {
        this.k = str;
        return this;
    }

    public String s() {
        return this.l;
    }

    public void k(String str) {
        this.l = str;
    }

    public CreateUserPoolRequest l(String str) {
        this.l = str;
        return this;
    }

    public void a(UserPoolMfaType userPoolMfaType) {
        this.l = userPoolMfaType.toString();
    }

    public CreateUserPoolRequest b(UserPoolMfaType userPoolMfaType) {
        this.l = userPoolMfaType.toString();
        return this;
    }

    public DeviceConfigurationType t() {
        return this.m;
    }

    public void a(DeviceConfigurationType deviceConfigurationType) {
        this.m = deviceConfigurationType;
    }

    public CreateUserPoolRequest b(DeviceConfigurationType deviceConfigurationType) {
        this.m = deviceConfigurationType;
        return this;
    }

    public EmailConfigurationType u() {
        return this.n;
    }

    public void a(EmailConfigurationType emailConfigurationType) {
        this.n = emailConfigurationType;
    }

    public CreateUserPoolRequest b(EmailConfigurationType emailConfigurationType) {
        this.n = emailConfigurationType;
        return this;
    }

    public SmsConfigurationType v() {
        return this.o;
    }

    public void a(SmsConfigurationType smsConfigurationType) {
        this.o = smsConfigurationType;
    }

    public CreateUserPoolRequest b(SmsConfigurationType smsConfigurationType) {
        this.o = smsConfigurationType;
        return this;
    }

    public Map<String, String> w() {
        return this.p;
    }

    public void a(Map<String, String> map) {
        this.p = map;
    }

    public CreateUserPoolRequest b(Map<String, String> map) {
        this.p = map;
        return this;
    }

    public CreateUserPoolRequest a(String str, String str2) {
        if (this.p == null) {
            this.p = new HashMap();
        }
        if (this.p.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.p.put(str, str2);
        return this;
    }

    public CreateUserPoolRequest x() {
        this.p = null;
        return this;
    }

    public AdminCreateUserConfigType y() {
        return this.q;
    }

    public void a(AdminCreateUserConfigType adminCreateUserConfigType) {
        this.q = adminCreateUserConfigType;
    }

    public CreateUserPoolRequest b(AdminCreateUserConfigType adminCreateUserConfigType) {
        this.q = adminCreateUserConfigType;
        return this;
    }

    public List<SchemaAttributeType> z() {
        return this.r;
    }

    public void g(Collection<SchemaAttributeType> collection) {
        if (collection == null) {
            this.r = null;
        } else {
            this.r = new ArrayList(collection);
        }
    }

    public CreateUserPoolRequest a(SchemaAttributeType... schemaAttributeTypeArr) {
        if (z() == null) {
            this.r = new ArrayList(schemaAttributeTypeArr.length);
        }
        for (SchemaAttributeType schemaAttributeType : schemaAttributeTypeArr) {
            this.r.add(schemaAttributeType);
        }
        return this;
    }

    public CreateUserPoolRequest h(Collection<SchemaAttributeType> collection) {
        g(collection);
        return this;
    }

    public UserPoolAddOnsType A() {
        return this.s;
    }

    public void a(UserPoolAddOnsType userPoolAddOnsType) {
        this.s = userPoolAddOnsType;
    }

    public CreateUserPoolRequest b(UserPoolAddOnsType userPoolAddOnsType) {
        this.s = userPoolAddOnsType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("PoolName: " + h() + ",");
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
            sb.append("AliasAttributes: " + l() + ",");
        }
        if (m() != null) {
            sb.append("UsernameAttributes: " + m() + ",");
        }
        if (n() != null) {
            sb.append("SmsVerificationMessage: " + n() + ",");
        }
        if (o() != null) {
            sb.append("EmailVerificationMessage: " + o() + ",");
        }
        if (p() != null) {
            sb.append("EmailVerificationSubject: " + p() + ",");
        }
        if (q() != null) {
            sb.append("VerificationMessageTemplate: " + q() + ",");
        }
        if (r() != null) {
            sb.append("SmsAuthenticationMessage: " + r() + ",");
        }
        if (s() != null) {
            sb.append("MfaConfiguration: " + s() + ",");
        }
        if (t() != null) {
            sb.append("DeviceConfiguration: " + t() + ",");
        }
        if (u() != null) {
            sb.append("EmailConfiguration: " + u() + ",");
        }
        if (v() != null) {
            sb.append("SmsConfiguration: " + v() + ",");
        }
        if (w() != null) {
            sb.append("UserPoolTags: " + w() + ",");
        }
        if (y() != null) {
            sb.append("AdminCreateUserConfig: " + y() + ",");
        }
        if (z() != null) {
            sb.append("Schema: " + z() + ",");
        }
        if (A() != null) {
            sb.append("UserPoolAddOns: " + A());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() == null ? 0 : p().hashCode())) * 31) + (q() == null ? 0 : q().hashCode())) * 31) + (r() == null ? 0 : r().hashCode())) * 31) + (s() == null ? 0 : s().hashCode())) * 31) + (t() == null ? 0 : t().hashCode())) * 31) + (u() == null ? 0 : u().hashCode())) * 31) + (v() == null ? 0 : v().hashCode())) * 31) + (w() == null ? 0 : w().hashCode())) * 31) + (y() == null ? 0 : y().hashCode())) * 31) + (z() == null ? 0 : z().hashCode())) * 31) + (A() != null ? A().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateUserPoolRequest)) {
            return false;
        }
        CreateUserPoolRequest createUserPoolRequest = (CreateUserPoolRequest) obj;
        if ((createUserPoolRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (createUserPoolRequest.h() != null && !createUserPoolRequest.h().equals(h())) {
            return false;
        }
        if ((createUserPoolRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (createUserPoolRequest.i() != null && !createUserPoolRequest.i().equals(i())) {
            return false;
        }
        if ((createUserPoolRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (createUserPoolRequest.j() != null && !createUserPoolRequest.j().equals(j())) {
            return false;
        }
        if ((createUserPoolRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (createUserPoolRequest.k() != null && !createUserPoolRequest.k().equals(k())) {
            return false;
        }
        if ((createUserPoolRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (createUserPoolRequest.l() != null && !createUserPoolRequest.l().equals(l())) {
            return false;
        }
        if ((createUserPoolRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (createUserPoolRequest.m() != null && !createUserPoolRequest.m().equals(m())) {
            return false;
        }
        if ((createUserPoolRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (createUserPoolRequest.n() != null && !createUserPoolRequest.n().equals(n())) {
            return false;
        }
        if ((createUserPoolRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        if (createUserPoolRequest.o() != null && !createUserPoolRequest.o().equals(o())) {
            return false;
        }
        if ((createUserPoolRequest.p() == null) ^ (p() == null)) {
            return false;
        }
        if (createUserPoolRequest.p() != null && !createUserPoolRequest.p().equals(p())) {
            return false;
        }
        if ((createUserPoolRequest.q() == null) ^ (q() == null)) {
            return false;
        }
        if (createUserPoolRequest.q() != null && !createUserPoolRequest.q().equals(q())) {
            return false;
        }
        if ((createUserPoolRequest.r() == null) ^ (r() == null)) {
            return false;
        }
        if (createUserPoolRequest.r() != null && !createUserPoolRequest.r().equals(r())) {
            return false;
        }
        if ((createUserPoolRequest.s() == null) ^ (s() == null)) {
            return false;
        }
        if (createUserPoolRequest.s() != null && !createUserPoolRequest.s().equals(s())) {
            return false;
        }
        if ((createUserPoolRequest.t() == null) ^ (t() == null)) {
            return false;
        }
        if (createUserPoolRequest.t() != null && !createUserPoolRequest.t().equals(t())) {
            return false;
        }
        if ((createUserPoolRequest.u() == null) ^ (u() == null)) {
            return false;
        }
        if (createUserPoolRequest.u() != null && !createUserPoolRequest.u().equals(u())) {
            return false;
        }
        if ((createUserPoolRequest.v() == null) ^ (v() == null)) {
            return false;
        }
        if (createUserPoolRequest.v() != null && !createUserPoolRequest.v().equals(v())) {
            return false;
        }
        if ((createUserPoolRequest.w() == null) ^ (w() == null)) {
            return false;
        }
        if (createUserPoolRequest.w() != null && !createUserPoolRequest.w().equals(w())) {
            return false;
        }
        if ((createUserPoolRequest.y() == null) ^ (y() == null)) {
            return false;
        }
        if (createUserPoolRequest.y() != null && !createUserPoolRequest.y().equals(y())) {
            return false;
        }
        if ((createUserPoolRequest.z() == null) ^ (z() == null)) {
            return false;
        }
        if (createUserPoolRequest.z() != null && !createUserPoolRequest.z().equals(z())) {
            return false;
        }
        if ((createUserPoolRequest.A() == null) ^ (A() == null)) {
            return false;
        }
        return createUserPoolRequest.A() == null || createUserPoolRequest.A().equals(A());
    }
}
