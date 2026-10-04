package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AuthenticationDetails {
    private String a;
    private final String b;
    private String c;
    private List<AttributeType> d;
    private Map<String, String> e;

    public AuthenticationDetails(String str, String str2, Map<String, String> map) {
        this.a = CognitoServiceConstants.i;
        this.b = str;
        this.c = str2;
        b(map);
    }

    public AuthenticationDetails(String str, String str2, Map<String, String> map, Map<String, String> map2) {
        this.b = str;
        this.c = str2;
        if (map != null) {
            this.a = CognitoServiceConstants.j;
            this.e = map;
            a("USERNAME", str);
            c("SRP_A");
            b(map2);
            return;
        }
        this.a = null;
    }

    public AuthenticationDetails(String str, Map<String, String> map, Map<String, String> map2) {
        this.b = str;
        if (map != null) {
            this.a = CognitoServiceConstants.j;
            this.e = map;
            b(map2);
            return;
        }
        this.a = null;
    }

    public void a(String str) {
        this.a = str;
        if (CognitoServiceConstants.i.equals(this.a) || CognitoServiceConstants.n.equals(this.a)) {
            this.e = null;
        } else if (CognitoServiceConstants.j.equals(this.a)) {
            this.c = null;
        }
    }

    public void b(String str) {
        this.c = str;
    }

    public String a() {
        return this.c;
    }

    public String b() {
        return this.b;
    }

    public List<AttributeType> c() {
        return this.d;
    }

    public String d() {
        return this.a;
    }

    public Map<String, String> e() {
        return this.e;
    }

    public void c(String str) {
        if (CognitoServiceConstants.i.equals(this.a) || CognitoServiceConstants.n.equals(this.a)) {
            throw new CognitoParameterInvalidException(String.format("Cannot set custom challenge when the authentication type is %s.", this.a));
        }
        this.a = CognitoServiceConstants.j;
        a(CognitoServiceConstants.u, str);
    }

    public String f() {
        return this.e.get(CognitoServiceConstants.u);
    }

    private void b(Map<String, String> map) {
        if (map != null) {
            this.d = new ArrayList();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                AttributeType attributeType = new AttributeType();
                attributeType.a(entry.getKey());
                attributeType.c(entry.getValue());
                this.d.add(attributeType);
            }
            return;
        }
        this.d = null;
    }

    public void a(Map<String, String> map) {
        this.e = map;
    }

    public void a(String str, String str2) {
        if (str != null) {
            if (this.e == null) {
                this.e = new HashMap();
            }
            this.e.put(str, str2);
            return;
        }
        throw new CognitoParameterInvalidException("A null key was used to add a new authentications parameter.");
    }
}
