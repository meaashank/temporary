package com.amazonaws.auth.policy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Statement {
    private Effect b;
    private List<Resource> e;
    private List<Principal> c = new ArrayList();
    private List<Action> d = new ArrayList();
    private List<Condition> f = new ArrayList();
    private String a = null;

    public enum Effect {
        Allow,
        Deny
    }

    public Statement(Effect effect) {
        this.b = effect;
    }

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public Statement b(String str) {
        a(str);
        return this;
    }

    public Effect b() {
        return this.b;
    }

    public void a(Effect effect) {
        this.b = effect;
    }

    public List<Action> c() {
        return this.d;
    }

    public void a(Collection<Action> collection) {
        this.d = new ArrayList(collection);
    }

    public Statement a(Action... actionArr) {
        a((Collection<Action>) Arrays.asList(actionArr));
        return this;
    }

    public List<Resource> d() {
        return this.e;
    }

    public void b(Collection<Resource> collection) {
        this.e = new ArrayList(collection);
    }

    public Statement a(Resource... resourceArr) {
        b(Arrays.asList(resourceArr));
        return this;
    }

    public List<Condition> e() {
        return this.f;
    }

    public void a(List<Condition> list) {
        this.f = list;
    }

    public Statement a(Condition... conditionArr) {
        a(Arrays.asList(conditionArr));
        return this;
    }

    public List<Principal> f() {
        return this.c;
    }

    public void c(Collection<Principal> collection) {
        this.c = new ArrayList(collection);
    }

    public void a(Principal... principalArr) {
        c(new ArrayList(Arrays.asList(principalArr)));
    }

    public Statement b(Principal... principalArr) {
        a(principalArr);
        return this;
    }
}
