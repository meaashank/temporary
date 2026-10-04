package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UserPoolType implements Serializable {
    private AdminCreateUserConfigType A;
    private UserPoolAddOnsType B;
    private String C;
    private String a;
    private String b;
    private UserPoolPolicyType c;
    private LambdaConfigType d;
    private String e;
    private Date f;
    private Date g;
    private List<SchemaAttributeType> h;
    private List<String> i;
    private List<String> j;
    private List<String> k;
    private String l;
    private String m;
    private String n;
    private VerificationMessageTemplateType o;
    private String p;
    private String q;
    private DeviceConfigurationType r;
    private Integer s;
    private EmailConfigurationType t;
    private SmsConfigurationType u;
    private Map<String, String> v;
    private String w;
    private String x;
    private String y;
    private String z;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UserPoolType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UserPoolType d(String str) {
        this.b = str;
        return this;
    }

    public UserPoolPolicyType c() {
        return this.c;
    }

    public void a(UserPoolPolicyType userPoolPolicyType) {
        this.c = userPoolPolicyType;
    }

    public UserPoolType b(UserPoolPolicyType userPoolPolicyType) {
        this.c = userPoolPolicyType;
        return this;
    }

    public LambdaConfigType d() {
        return this.d;
    }

    public void a(LambdaConfigType lambdaConfigType) {
        this.d = lambdaConfigType;
    }

    public UserPoolType b(LambdaConfigType lambdaConfigType) {
        this.d = lambdaConfigType;
        return this;
    }

    public String e() {
        return this.e;
    }

    public void e(String str) {
        this.e = str;
    }

    public UserPoolType f(String str) {
        this.e = str;
        return this;
    }

    public void a(StatusType statusType) {
        this.e = statusType.toString();
    }

    public UserPoolType b(StatusType statusType) {
        this.e = statusType.toString();
        return this;
    }

    public Date f() {
        return this.f;
    }

    public void a(Date date) {
        this.f = date;
    }

    public UserPoolType b(Date date) {
        this.f = date;
        return this;
    }

    public Date g() {
        return this.g;
    }

    public void c(Date date) {
        this.g = date;
    }

    public UserPoolType d(Date date) {
        this.g = date;
        return this;
    }

    public List<SchemaAttributeType> h() {
        return this.h;
    }

    public void a(Collection<SchemaAttributeType> collection) {
        if (collection == null) {
            this.h = null;
        } else {
            this.h = new ArrayList(collection);
        }
    }

    public UserPoolType a(SchemaAttributeType... schemaAttributeTypeArr) {
        if (h() == null) {
            this.h = new ArrayList(schemaAttributeTypeArr.length);
        }
        for (SchemaAttributeType schemaAttributeType : schemaAttributeTypeArr) {
            this.h.add(schemaAttributeType);
        }
        return this;
    }

    public UserPoolType b(Collection<SchemaAttributeType> collection) {
        a(collection);
        return this;
    }

    public List<String> i() {
        return this.i;
    }

    public void c(Collection<String> collection) {
        if (collection == null) {
            this.i = null;
        } else {
            this.i = new ArrayList(collection);
        }
    }

    public UserPoolType a(String... strArr) {
        if (i() == null) {
            this.i = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.i.add(str);
        }
        return this;
    }

    public UserPoolType d(Collection<String> collection) {
        c(collection);
        return this;
    }

    public List<String> j() {
        return this.j;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.j = null;
        } else {
            this.j = new ArrayList(collection);
        }
    }

    public UserPoolType b(String... strArr) {
        if (j() == null) {
            this.j = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.j.add(str);
        }
        return this;
    }

    public UserPoolType f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public List<String> k() {
        return this.k;
    }

    public void g(Collection<String> collection) {
        if (collection == null) {
            this.k = null;
        } else {
            this.k = new ArrayList(collection);
        }
    }

    public UserPoolType c(String... strArr) {
        if (k() == null) {
            this.k = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.k.add(str);
        }
        return this;
    }

    public UserPoolType h(Collection<String> collection) {
        g(collection);
        return this;
    }

    public String l() {
        return this.l;
    }

    public void g(String str) {
        this.l = str;
    }

    public UserPoolType h(String str) {
        this.l = str;
        return this;
    }

    public String m() {
        return this.m;
    }

    public void i(String str) {
        this.m = str;
    }

    public UserPoolType j(String str) {
        this.m = str;
        return this;
    }

    public String n() {
        return this.n;
    }

    public void k(String str) {
        this.n = str;
    }

    public UserPoolType l(String str) {
        this.n = str;
        return this;
    }

    public VerificationMessageTemplateType o() {
        return this.o;
    }

    public void a(VerificationMessageTemplateType verificationMessageTemplateType) {
        this.o = verificationMessageTemplateType;
    }

    public UserPoolType b(VerificationMessageTemplateType verificationMessageTemplateType) {
        this.o = verificationMessageTemplateType;
        return this;
    }

    public String p() {
        return this.p;
    }

    public void m(String str) {
        this.p = str;
    }

    public UserPoolType n(String str) {
        this.p = str;
        return this;
    }

    public String q() {
        return this.q;
    }

    public void o(String str) {
        this.q = str;
    }

    public UserPoolType p(String str) {
        this.q = str;
        return this;
    }

    public void a(UserPoolMfaType userPoolMfaType) {
        this.q = userPoolMfaType.toString();
    }

    public UserPoolType b(UserPoolMfaType userPoolMfaType) {
        this.q = userPoolMfaType.toString();
        return this;
    }

    public DeviceConfigurationType r() {
        return this.r;
    }

    public void a(DeviceConfigurationType deviceConfigurationType) {
        this.r = deviceConfigurationType;
    }

    public UserPoolType b(DeviceConfigurationType deviceConfigurationType) {
        this.r = deviceConfigurationType;
        return this;
    }

    public Integer s() {
        return this.s;
    }

    public void a(Integer num) {
        this.s = num;
    }

    public UserPoolType b(Integer num) {
        this.s = num;
        return this;
    }

    public EmailConfigurationType t() {
        return this.t;
    }

    public void a(EmailConfigurationType emailConfigurationType) {
        this.t = emailConfigurationType;
    }

    public UserPoolType b(EmailConfigurationType emailConfigurationType) {
        this.t = emailConfigurationType;
        return this;
    }

    public SmsConfigurationType u() {
        return this.u;
    }

    public void a(SmsConfigurationType smsConfigurationType) {
        this.u = smsConfigurationType;
    }

    public UserPoolType b(SmsConfigurationType smsConfigurationType) {
        this.u = smsConfigurationType;
        return this;
    }

    public Map<String, String> v() {
        return this.v;
    }

    public void a(Map<String, String> map) {
        this.v = map;
    }

    public UserPoolType b(Map<String, String> map) {
        this.v = map;
        return this;
    }

    public UserPoolType a(String str, String str2) {
        if (this.v == null) {
            this.v = new HashMap();
        }
        if (this.v.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.v.put(str, str2);
        return this;
    }

    public UserPoolType w() {
        this.v = null;
        return this;
    }

    public String x() {
        return this.w;
    }

    public void q(String str) {
        this.w = str;
    }

    public UserPoolType r(String str) {
        this.w = str;
        return this;
    }

    public String y() {
        return this.x;
    }

    public void s(String str) {
        this.x = str;
    }

    public UserPoolType t(String str) {
        this.x = str;
        return this;
    }

    public String z() {
        return this.y;
    }

    public void u(String str) {
        this.y = str;
    }

    public UserPoolType v(String str) {
        this.y = str;
        return this;
    }

    public String A() {
        return this.z;
    }

    public void w(String str) {
        this.z = str;
    }

    public UserPoolType x(String str) {
        this.z = str;
        return this;
    }

    public AdminCreateUserConfigType B() {
        return this.A;
    }

    public void a(AdminCreateUserConfigType adminCreateUserConfigType) {
        this.A = adminCreateUserConfigType;
    }

    public UserPoolType b(AdminCreateUserConfigType adminCreateUserConfigType) {
        this.A = adminCreateUserConfigType;
        return this;
    }

    public UserPoolAddOnsType C() {
        return this.B;
    }

    public void a(UserPoolAddOnsType userPoolAddOnsType) {
        this.B = userPoolAddOnsType;
    }

    public UserPoolType b(UserPoolAddOnsType userPoolAddOnsType) {
        this.B = userPoolAddOnsType;
        return this;
    }

    public String D() {
        return this.C;
    }

    public void y(String str) {
        this.C = str;
    }

    public UserPoolType z(String str) {
        this.C = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Id: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Name: " + b() + ",");
        }
        if (c() != null) {
            sb.append("Policies: " + c() + ",");
        }
        if (d() != null) {
            sb.append("LambdaConfig: " + d() + ",");
        }
        if (e() != null) {
            sb.append("Status: " + e() + ",");
        }
        if (f() != null) {
            sb.append("LastModifiedDate: " + f() + ",");
        }
        if (g() != null) {
            sb.append("CreationDate: " + g() + ",");
        }
        if (h() != null) {
            sb.append("SchemaAttributes: " + h() + ",");
        }
        if (i() != null) {
            sb.append("AutoVerifiedAttributes: " + i() + ",");
        }
        if (j() != null) {
            sb.append("AliasAttributes: " + j() + ",");
        }
        if (k() != null) {
            sb.append("UsernameAttributes: " + k() + ",");
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
            sb.append("EstimatedNumberOfUsers: " + s() + ",");
        }
        if (t() != null) {
            sb.append("EmailConfiguration: " + t() + ",");
        }
        if (u() != null) {
            sb.append("SmsConfiguration: " + u() + ",");
        }
        if (v() != null) {
            sb.append("UserPoolTags: " + v() + ",");
        }
        if (x() != null) {
            sb.append("SmsConfigurationFailure: " + x() + ",");
        }
        if (y() != null) {
            sb.append("EmailConfigurationFailure: " + y() + ",");
        }
        if (z() != null) {
            sb.append("Domain: " + z() + ",");
        }
        if (A() != null) {
            sb.append("CustomDomain: " + A() + ",");
        }
        if (B() != null) {
            sb.append("AdminCreateUserConfig: " + B() + ",");
        }
        if (C() != null) {
            sb.append("UserPoolAddOns: " + C() + ",");
        }
        if (D() != null) {
            sb.append("Arn: " + D());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() == null ? 0 : h().hashCode())) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() == null ? 0 : p().hashCode())) * 31) + (q() == null ? 0 : q().hashCode())) * 31) + (r() == null ? 0 : r().hashCode())) * 31) + (s() == null ? 0 : s().hashCode())) * 31) + (t() == null ? 0 : t().hashCode())) * 31) + (u() == null ? 0 : u().hashCode())) * 31) + (v() == null ? 0 : v().hashCode())) * 31) + (x() == null ? 0 : x().hashCode())) * 31) + (y() == null ? 0 : y().hashCode())) * 31) + (z() == null ? 0 : z().hashCode())) * 31) + (A() == null ? 0 : A().hashCode())) * 31) + (B() == null ? 0 : B().hashCode())) * 31) + (C() == null ? 0 : C().hashCode())) * 31) + (D() != null ? D().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UserPoolType)) {
            return false;
        }
        UserPoolType userPoolType = (UserPoolType) obj;
        if ((userPoolType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (userPoolType.a() != null && !userPoolType.a().equals(a())) {
            return false;
        }
        if ((userPoolType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (userPoolType.b() != null && !userPoolType.b().equals(b())) {
            return false;
        }
        if ((userPoolType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (userPoolType.c() != null && !userPoolType.c().equals(c())) {
            return false;
        }
        if ((userPoolType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (userPoolType.d() != null && !userPoolType.d().equals(d())) {
            return false;
        }
        if ((userPoolType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (userPoolType.e() != null && !userPoolType.e().equals(e())) {
            return false;
        }
        if ((userPoolType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (userPoolType.f() != null && !userPoolType.f().equals(f())) {
            return false;
        }
        if ((userPoolType.g() == null) ^ (g() == null)) {
            return false;
        }
        if (userPoolType.g() != null && !userPoolType.g().equals(g())) {
            return false;
        }
        if ((userPoolType.h() == null) ^ (h() == null)) {
            return false;
        }
        if (userPoolType.h() != null && !userPoolType.h().equals(h())) {
            return false;
        }
        if ((userPoolType.i() == null) ^ (i() == null)) {
            return false;
        }
        if (userPoolType.i() != null && !userPoolType.i().equals(i())) {
            return false;
        }
        if ((userPoolType.j() == null) ^ (j() == null)) {
            return false;
        }
        if (userPoolType.j() != null && !userPoolType.j().equals(j())) {
            return false;
        }
        if ((userPoolType.k() == null) ^ (k() == null)) {
            return false;
        }
        if (userPoolType.k() != null && !userPoolType.k().equals(k())) {
            return false;
        }
        if ((userPoolType.l() == null) ^ (l() == null)) {
            return false;
        }
        if (userPoolType.l() != null && !userPoolType.l().equals(l())) {
            return false;
        }
        if ((userPoolType.m() == null) ^ (m() == null)) {
            return false;
        }
        if (userPoolType.m() != null && !userPoolType.m().equals(m())) {
            return false;
        }
        if ((userPoolType.n() == null) ^ (n() == null)) {
            return false;
        }
        if (userPoolType.n() != null && !userPoolType.n().equals(n())) {
            return false;
        }
        if ((userPoolType.o() == null) ^ (o() == null)) {
            return false;
        }
        if (userPoolType.o() != null && !userPoolType.o().equals(o())) {
            return false;
        }
        if ((userPoolType.p() == null) ^ (p() == null)) {
            return false;
        }
        if (userPoolType.p() != null && !userPoolType.p().equals(p())) {
            return false;
        }
        if ((userPoolType.q() == null) ^ (q() == null)) {
            return false;
        }
        if (userPoolType.q() != null && !userPoolType.q().equals(q())) {
            return false;
        }
        if ((userPoolType.r() == null) ^ (r() == null)) {
            return false;
        }
        if (userPoolType.r() != null && !userPoolType.r().equals(r())) {
            return false;
        }
        if ((userPoolType.s() == null) ^ (s() == null)) {
            return false;
        }
        if (userPoolType.s() != null && !userPoolType.s().equals(s())) {
            return false;
        }
        if ((userPoolType.t() == null) ^ (t() == null)) {
            return false;
        }
        if (userPoolType.t() != null && !userPoolType.t().equals(t())) {
            return false;
        }
        if ((userPoolType.u() == null) ^ (u() == null)) {
            return false;
        }
        if (userPoolType.u() != null && !userPoolType.u().equals(u())) {
            return false;
        }
        if ((userPoolType.v() == null) ^ (v() == null)) {
            return false;
        }
        if (userPoolType.v() != null && !userPoolType.v().equals(v())) {
            return false;
        }
        if ((userPoolType.x() == null) ^ (x() == null)) {
            return false;
        }
        if (userPoolType.x() != null && !userPoolType.x().equals(x())) {
            return false;
        }
        if ((userPoolType.y() == null) ^ (y() == null)) {
            return false;
        }
        if (userPoolType.y() != null && !userPoolType.y().equals(y())) {
            return false;
        }
        if ((userPoolType.z() == null) ^ (z() == null)) {
            return false;
        }
        if (userPoolType.z() != null && !userPoolType.z().equals(z())) {
            return false;
        }
        if ((userPoolType.A() == null) ^ (A() == null)) {
            return false;
        }
        if (userPoolType.A() != null && !userPoolType.A().equals(A())) {
            return false;
        }
        if ((userPoolType.B() == null) ^ (B() == null)) {
            return false;
        }
        if (userPoolType.B() != null && !userPoolType.B().equals(B())) {
            return false;
        }
        if ((userPoolType.C() == null) ^ (C() == null)) {
            return false;
        }
        if (userPoolType.C() != null && !userPoolType.C().equals(C())) {
            return false;
        }
        if ((userPoolType.D() == null) ^ (D() == null)) {
            return false;
        }
        return userPoolType.D() == null || userPoolType.D().equals(D());
    }
}
