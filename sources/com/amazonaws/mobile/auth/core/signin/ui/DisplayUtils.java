package com.amazonaws.mobile.auth.core.signin.ui;

import android.content.res.Resources;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public class DisplayUtils {
    private static final DisplayMetrics a = Resources.getSystem().getDisplayMetrics();
    private static int b = a.densityDpi / 160;

    public static int a(int i) {
        return i * b;
    }

    public static Shape b(int i) {
        float f = i;
        return new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null);
    }

    public static ShapeDrawable a(int i, int i2) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(b(i));
        shapeDrawable.getPaint().setColor(i2);
        return shapeDrawable;
    }
}
