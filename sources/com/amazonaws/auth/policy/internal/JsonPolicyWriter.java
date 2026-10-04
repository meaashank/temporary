package com.amazonaws.auth.policy.internal;

import com.amazonaws.auth.policy.Action;
import com.amazonaws.auth.policy.Condition;
import com.amazonaws.auth.policy.Policy;
import com.amazonaws.auth.policy.Principal;
import com.amazonaws.auth.policy.Resource;
import com.amazonaws.auth.policy.Statement;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class JsonPolicyWriter {
    private static final Log c = LogFactory.a("com.amazonaws.auth.policy");
    private AwsJsonWriter a;
    private final Writer b = new StringWriter();

    private boolean a(Object obj) {
        return obj != null;
    }

    public JsonPolicyWriter() {
        this.a = null;
        this.a = JsonUtils.a(this.b);
    }

    public String a(Policy policy) {
        try {
            if (!a((Object) policy)) {
                throw new IllegalArgumentException("Policy cannot be null");
            }
            try {
                return b(policy);
            } catch (Exception e) {
                throw new IllegalArgumentException("Unable to serialize policy to JSON string: " + e.getMessage(), e);
            }
        } finally {
            try {
                this.b.close();
            } catch (Exception unused) {
            }
        }
    }

    private String b(Policy policy) {
        this.a.c();
        a(JsonDocumentFields.a, policy.b());
        if (a(policy.a())) {
            a(JsonDocumentFields.b, policy.a());
        }
        b(JsonDocumentFields.c);
        for (Statement statement : policy.c()) {
            this.a.c();
            if (a(statement.a())) {
                a(JsonDocumentFields.f, statement.a());
            }
            a(JsonDocumentFields.d, statement.b().toString());
            List<Principal> listF = statement.f();
            if (a(listF) && !listF.isEmpty()) {
                d(listF);
            }
            List<Action> listC = statement.c();
            if (a(listC) && !listC.isEmpty()) {
                c(listC);
            }
            List<Resource> listD = statement.d();
            if (a(listD) && !listD.isEmpty()) {
                b(listD);
            }
            List<Condition> listE = statement.e();
            if (a((Object) listE) && !listE.isEmpty()) {
                a(listE);
            }
            this.a.d();
        }
        b();
        this.a.d();
        this.a.f();
        return this.b.toString();
    }

    private void a(List<Condition> list) {
        Map<String, ConditionsByKey> mapF = f(list);
        a(JsonDocumentFields.j);
        for (Map.Entry<String, ConditionsByKey> entry : mapF.entrySet()) {
            ConditionsByKey conditionsByKey = mapF.get(entry.getKey());
            a(entry.getKey());
            for (String str : conditionsByKey.b()) {
                a(str, conditionsByKey.b(str));
            }
            a();
        }
        a();
    }

    private void b(List<Resource> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<Resource> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        a(JsonDocumentFields.i, arrayList);
    }

    private void c(List<Action> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<Action> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getActionName());
        }
        a(JsonDocumentFields.h, arrayList);
    }

    private void d(List<Principal> list) {
        if (list.size() == 1 && list.get(0).equals(Principal.d)) {
            a(JsonDocumentFields.g, Principal.d.b());
            return;
        }
        a(JsonDocumentFields.g);
        Map<String, List<String>> mapE = e(list);
        for (Map.Entry<String, List<String>> entry : mapE.entrySet()) {
            List<String> list2 = mapE.get(entry.getKey());
            if (list2.size() == 1) {
                a(entry.getKey(), list2.get(0));
            } else {
                a(entry.getKey(), list2);
            }
        }
        a();
    }

    private Map<String, List<String>> e(List<Principal> list) {
        HashMap map = new HashMap();
        for (Principal principal : list) {
            String strA = principal.a();
            if (!map.containsKey(strA)) {
                map.put(strA, new ArrayList());
            }
            ((List) map.get(strA)).add(principal.b());
        }
        return map;
    }

    static class ConditionsByKey {
        private Map<String, List<String>> a = new HashMap();

        public Map<String, List<String>> a() {
            return this.a;
        }

        public void a(Map<String, List<String>> map) {
            this.a = map;
        }

        public boolean a(String str) {
            return this.a.containsKey(str);
        }

        public List<String> b(String str) {
            return this.a.get(str);
        }

        public Set<String> b() {
            return this.a.keySet();
        }

        public void a(String str, List<String> list) {
            List<String> listB = b(str);
            if (listB == null) {
                this.a.put(str, new ArrayList(list));
            } else {
                listB.addAll(list);
            }
        }
    }

    private Map<String, ConditionsByKey> f(List<Condition> list) {
        HashMap map = new HashMap();
        for (Condition condition : list) {
            String strA = condition.a();
            String strB = condition.b();
            if (!map.containsKey(strA)) {
                map.put(strA, new ConditionsByKey());
            }
            ((ConditionsByKey) map.get(strA)).a(strB, condition.c());
        }
        return map;
    }

    private void a(String str, List<String> list) {
        b(str);
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.a.b(it.next());
        }
        b();
    }

    private void a(String str) {
        this.a.a(str);
        this.a.c();
    }

    private void a() {
        this.a.d();
    }

    private void b(String str) {
        this.a.a(str);
        this.a.a();
    }

    private void b() {
        this.a.b();
    }

    private void a(String str, String str2) {
        this.a.a(str);
        this.a.b(str2);
    }
}
