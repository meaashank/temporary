package com.a.a;

import java.lang.reflect.Field;

/* JADX INFO: compiled from: ReflectUtil.java */
/* JADX INFO: loaded from: classes.dex */
class d {
    d() {
    }

    static Object a(Object obj, String str) throws NoSuchFieldException {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }
}
