package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AddCustomAttributesRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private List<SchemaAttributeType> b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AddCustomAttributesRequest b(String str) {
        this.a = str;
        return this;
    }

    public List<SchemaAttributeType> i() {
        return this.b;
    }

    public void a(Collection<SchemaAttributeType> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public AddCustomAttributesRequest a(SchemaAttributeType... schemaAttributeTypeArr) {
        if (i() == null) {
            this.b = new ArrayList(schemaAttributeTypeArr.length);
        }
        for (SchemaAttributeType schemaAttributeType : schemaAttributeTypeArr) {
            this.b.add(schemaAttributeType);
        }
        return this;
    }

    public AddCustomAttributesRequest b(Collection<SchemaAttributeType> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("CustomAttributes: " + i());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() != null ? i().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AddCustomAttributesRequest)) {
            return false;
        }
        AddCustomAttributesRequest addCustomAttributesRequest = (AddCustomAttributesRequest) obj;
        if ((addCustomAttributesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (addCustomAttributesRequest.h() != null && !addCustomAttributesRequest.h().equals(h())) {
            return false;
        }
        if ((addCustomAttributesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return addCustomAttributesRequest.i() == null || addCustomAttributesRequest.i().equals(i());
    }
}
