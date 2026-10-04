package com.amazonaws.auth.policy.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.policy.Action;
import com.amazonaws.auth.policy.Condition;
import com.amazonaws.auth.policy.Policy;
import com.amazonaws.auth.policy.Principal;
import com.amazonaws.auth.policy.Resource;
import com.amazonaws.auth.policy.Statement;
import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.JsonUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class JsonPolicyReader {
    private static final String a = "AWS";
    private static final String b = "Service";
    private static final String c = "Federated";
    private AwsJsonReader d;

    public Policy a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("JSON string cannot be null");
        }
        this.d = JsonUtils.a(new StringReader(str));
        Policy policy = new Policy();
        LinkedList linkedList = new LinkedList();
        try {
            try {
                this.d.c();
                while (this.d.f()) {
                    String strG = this.d.g();
                    if (JsonDocumentFields.b.equals(strG)) {
                        policy.a(this.d.h());
                    } else if (JsonDocumentFields.c.equals(strG)) {
                        this.d.a();
                        while (this.d.f()) {
                            linkedList.add(a(this.d));
                        }
                        this.d.b();
                    } else {
                        this.d.j();
                    }
                }
                this.d.d();
                policy.a(linkedList);
                return policy;
            } finally {
                try {
                    this.d.k();
                } catch (IOException unused) {
                }
            }
        } catch (Exception e) {
            throw new IllegalArgumentException("Unable to generate policy object fron JSON string " + e.getMessage(), e);
        }
    }

    private Statement a(AwsJsonReader awsJsonReader) {
        Statement statement = new Statement(null);
        awsJsonReader.c();
        while (awsJsonReader.f()) {
            String strG = awsJsonReader.g();
            if (JsonDocumentFields.d.equals(strG)) {
                statement.a(Statement.Effect.valueOf(awsJsonReader.h()));
            } else if (JsonDocumentFields.f.equals(strG)) {
                statement.a(awsJsonReader.h());
            } else if (JsonDocumentFields.h.equals(strG)) {
                statement.a(b(awsJsonReader));
            } else if (JsonDocumentFields.i.equals(strG)) {
                statement.b(c(awsJsonReader));
            } else if (JsonDocumentFields.g.equals(strG)) {
                statement.c(d(awsJsonReader));
            } else if (JsonDocumentFields.j.equals(strG)) {
                statement.a(e(awsJsonReader));
            } else {
                awsJsonReader.j();
            }
        }
        awsJsonReader.d();
        if (statement.b() == null) {
            return null;
        }
        return statement;
    }

    private List<Action> b(AwsJsonReader awsJsonReader) {
        LinkedList linkedList = new LinkedList();
        if (awsJsonReader.e()) {
            awsJsonReader.a();
            while (awsJsonReader.f()) {
                linkedList.add(new NamedAction(awsJsonReader.h()));
            }
            awsJsonReader.b();
        } else {
            linkedList.add(new NamedAction(awsJsonReader.h()));
        }
        return linkedList;
    }

    private List<Resource> c(AwsJsonReader awsJsonReader) {
        LinkedList linkedList = new LinkedList();
        if (awsJsonReader.e()) {
            awsJsonReader.a();
            while (awsJsonReader.f()) {
                linkedList.add(new Resource(awsJsonReader.h()));
            }
            awsJsonReader.b();
        } else {
            linkedList.add(new Resource(awsJsonReader.h()));
        }
        return linkedList;
    }

    private List<Principal> d(AwsJsonReader awsJsonReader) {
        LinkedList linkedList = new LinkedList();
        if (awsJsonReader.e()) {
            awsJsonReader.c();
            while (awsJsonReader.f()) {
                String strG = awsJsonReader.g();
                if (awsJsonReader.e()) {
                    awsJsonReader.a();
                    while (awsJsonReader.f()) {
                        linkedList.add(a(strG, awsJsonReader.h()));
                    }
                    awsJsonReader.b();
                } else {
                    linkedList.add(a(strG, awsJsonReader.h()));
                }
            }
            awsJsonReader.d();
        } else {
            String strH = awsJsonReader.h();
            if ("*".equals(strH)) {
                linkedList.add(Principal.d);
            } else {
                throw new IllegalArgumentException("Invalid principals: " + strH);
            }
        }
        return linkedList;
    }

    private Principal a(String str, String str2) {
        if (str.equalsIgnoreCase(a)) {
            return new Principal(str2);
        }
        if (str.equalsIgnoreCase(b)) {
            return new Principal(str, str2);
        }
        if (str.equalsIgnoreCase(c)) {
            if (Principal.WebIdentityProviders.fromString(str2) != null) {
                return new Principal(Principal.WebIdentityProviders.fromString(str2));
            }
            return new Principal(c, str2);
        }
        throw new AmazonClientException("Schema " + str + " is not a valid value for the principal.");
    }

    private List<Condition> e(AwsJsonReader awsJsonReader) {
        LinkedList linkedList = new LinkedList();
        awsJsonReader.c();
        while (awsJsonReader.f()) {
            a(linkedList, awsJsonReader.g(), awsJsonReader);
        }
        awsJsonReader.d();
        return linkedList;
    }

    private void a(List<Condition> list, String str, AwsJsonReader awsJsonReader) {
        awsJsonReader.c();
        while (awsJsonReader.f()) {
            String strG = awsJsonReader.g();
            LinkedList linkedList = new LinkedList();
            if (awsJsonReader.e()) {
                awsJsonReader.a();
                while (awsJsonReader.f()) {
                    linkedList.add(awsJsonReader.h());
                }
                awsJsonReader.b();
            } else {
                linkedList.add(awsJsonReader.h());
            }
            list.add(new Condition().c(str).d(strG).b(linkedList));
        }
        awsJsonReader.d();
    }

    private static class NamedAction implements Action {
        private final String a;

        public NamedAction(String str) {
            this.a = str;
        }

        @Override // com.amazonaws.auth.policy.Action
        public String getActionName() {
            return this.a;
        }
    }
}
