package com.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewCompat;
import android.util.TypedValue;

/* JADX INFO: compiled from: UiUtil.java */
/* JADX INFO: loaded from: classes.dex */
class i {
    static int a(int i, float f) {
        if (f > 1.0f) {
            f = 1.0f;
        } else if (f <= 0.0f) {
            f = 0.0f;
        }
        return (i & ViewCompat.MEASURED_SIZE_MASK) | (((int) ((i >>> 24) * f)) << 24);
    }

    i() {
    }

    static int a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    static int b(Context context, int i) {
        return (int) TypedValue.applyDimension(2, i, context.getResources().getDisplayMetrics());
    }

    static int a(Context context, String str) {
        Resources.Theme theme = context.getTheme();
        if (theme == null) {
            return -1;
        }
        TypedValue typedValue = new TypedValue();
        int identifier = context.getResources().getIdentifier(str, "attr", context.getPackageName());
        if (identifier == 0) {
            return -1;
        }
        theme.resolveAttribute(identifier, typedValue, true);
        return typedValue.data;
    }
}
