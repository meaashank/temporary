package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CognitoUserAttributes {
    private Map<String, String> a;
    private Map<String, String> b;

    public CognitoUserAttributes() {
        this(null);
    }

    protected CognitoUserAttributes(List<AttributeType> list) {
        this.a = new HashMap();
        if (list != null) {
            for (AttributeType attributeType : list) {
                this.a.put(attributeType.a(), attributeType.b());
            }
        }
    }

    public void a(String str, String str2) {
        this.a.put(str, str2);
    }

    public Map<String, String> a() {
        return this.a;
    }

    protected List<AttributeType> b() {
        ArrayList arrayList = new ArrayList();
        if (this.a != null) {
            for (Map.Entry<String, String> entry : this.a.entrySet()) {
                AttributeType attributeType = new AttributeType();
                attributeType.a(entry.getKey());
                attributeType.c(entry.getValue());
                arrayList.add(attributeType);
            }
        }
        return arrayList;
    }
}
