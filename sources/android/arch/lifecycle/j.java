package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: MethodCallsLogger.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class j {
    private Map<String, Integer> a = new HashMap();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean a(String str, int i) {
        Integer num = this.a.get(str);
        int iIntValue = num != null ? num.intValue() : 0;
        boolean z = (iIntValue & i) != 0;
        this.a.put(str, Integer.valueOf(i | iIntValue));
        return !z;
    }
}
