package com.amazonaws.auth.policy;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Condition {
    protected String a;
    protected String b;
    protected List<String> c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public List<String> c() {
        return this.c;
    }

    public void a(List<String> list) {
        this.c = list;
    }

    public Condition c(String str) {
        a(str);
        return this;
    }

    public Condition d(String str) {
        b(str);
        return this;
    }

    public Condition a(String... strArr) {
        a(Arrays.asList(strArr));
        return this;
    }

    public Condition b(List<String> list) {
        a(list);
        return this;
    }
}
