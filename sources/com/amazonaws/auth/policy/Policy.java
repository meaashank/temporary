package com.amazonaws.auth.policy;

import com.amazonaws.auth.policy.internal.JsonPolicyReader;
import com.amazonaws.auth.policy.internal.JsonPolicyWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Policy {
    private static final String a = "2012-10-17";
    private String b;
    private String c;
    private List<Statement> d;

    public Policy() {
        this.c = a;
        this.d = new ArrayList();
    }

    public Policy(String str) {
        this.c = a;
        this.d = new ArrayList();
        this.b = str;
    }

    public Policy(String str, Collection<Statement> collection) {
        this(str);
        a(collection);
    }

    public String a() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public Policy b(String str) {
        a(str);
        return this;
    }

    public String b() {
        return this.c;
    }

    public Collection<Statement> c() {
        return this.d;
    }

    public void a(Collection<Statement> collection) {
        this.d = new ArrayList(collection);
        e();
    }

    public Policy a(Statement... statementArr) {
        a(Arrays.asList(statementArr));
        return this;
    }

    public String d() {
        return new JsonPolicyWriter().a(this);
    }

    public static Policy c(String str) {
        return new JsonPolicyReader().a(str);
    }

    private void e() {
        HashSet hashSet = new HashSet();
        for (Statement statement : this.d) {
            if (statement.a() != null) {
                hashSet.add(statement.a());
            }
        }
        int i = 0;
        for (Statement statement2 : this.d) {
            if (statement2.a() == null) {
                do {
                    i++;
                } while (hashSet.contains(Integer.toString(i)));
                statement2.a(Integer.toString(i));
            }
        }
    }
}
