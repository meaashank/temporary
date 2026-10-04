package com.a.a;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.Toolbar;
import android.view.View;

/* JADX INFO: compiled from: TapTarget.java */
/* JADX INFO: loaded from: classes.dex */
public class e {
    private int A;
    private int B;
    final CharSequence a;

    @Nullable
    final CharSequence b;
    float c;
    int d;
    Rect e;
    Drawable f;
    Typeface g;
    Typeface h;
    int i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    float n;

    @ColorRes
    private int o;

    @ColorRes
    private int p;

    @ColorRes
    private int q;

    @ColorRes
    private int r;

    @ColorRes
    private int s;
    private Integer t;
    private Integer u;
    private Integer v;
    private Integer w;
    private Integer x;

    @DimenRes
    private int y;

    @DimenRes
    private int z;

    public static e a(Toolbar toolbar, CharSequence charSequence) {
        return a(toolbar, charSequence, (CharSequence) null);
    }

    public static e a(Toolbar toolbar, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return new h(toolbar, false, charSequence, charSequence2);
    }

    public static e a(android.widget.Toolbar toolbar, CharSequence charSequence) {
        return a(toolbar, charSequence, (CharSequence) null);
    }

    public static e a(android.widget.Toolbar toolbar, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return new h(toolbar, false, charSequence, charSequence2);
    }

    public static e b(Toolbar toolbar, CharSequence charSequence) {
        return b(toolbar, charSequence, (CharSequence) null);
    }

    public static e b(Toolbar toolbar, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return new h(toolbar, true, charSequence, charSequence2);
    }

    public static e b(android.widget.Toolbar toolbar, CharSequence charSequence) {
        return b(toolbar, charSequence, (CharSequence) null);
    }

    public static e b(android.widget.Toolbar toolbar, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return new h(toolbar, true, charSequence, charSequence2);
    }

    public static e a(Toolbar toolbar, @IdRes int i, CharSequence charSequence) {
        return a(toolbar, i, charSequence, (CharSequence) null);
    }

    public static e a(Toolbar toolbar, @IdRes int i, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return new h(toolbar, i, charSequence, charSequence2);
    }

    public static e a(android.widget.Toolbar toolbar, @IdRes int i, CharSequence charSequence) {
        return a(toolbar, i, charSequence, (CharSequence) null);
    }

    public static e a(android.widget.Toolbar toolbar, @IdRes int i, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return new h(toolbar, i, charSequence, charSequence2);
    }

    public static e a(View view, CharSequence charSequence) {
        return a(view, charSequence, (CharSequence) null);
    }

    public static e a(View view, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return new j(view, charSequence, charSequence2);
    }

    public static e a(Rect rect, CharSequence charSequence) {
        return a(rect, charSequence, (CharSequence) null);
    }

    public static e a(Rect rect, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return new e(rect, charSequence, charSequence2);
    }

    protected e(Rect rect, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        this(charSequence, charSequence2);
        if (rect == null) {
            throw new IllegalArgumentException("Cannot pass null bounds or title");
        }
        this.e = rect;
    }

    protected e(CharSequence charSequence, @Nullable CharSequence charSequence2) {
        this.c = 0.96f;
        this.d = 44;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.s = -1;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = -1;
        this.z = -1;
        this.A = 20;
        this.B = 18;
        this.i = -1;
        this.j = false;
        this.k = true;
        this.l = true;
        this.m = false;
        this.n = 0.54f;
        if (charSequence == null) {
            throw new IllegalArgumentException("Cannot pass null title");
        }
        this.a = charSequence;
        this.b = charSequence2;
    }

    public e a(boolean z) {
        this.m = z;
        return this;
    }

    public e a(@ColorRes int i) {
        this.o = i;
        return this;
    }

    public e b(@ColorInt int i) {
        this.t = Integer.valueOf(i);
        return this;
    }

    public e a(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("Given an invalid alpha value: " + f);
        }
        this.c = f;
        return this;
    }

    public e c(@ColorRes int i) {
        this.p = i;
        return this;
    }

    public e d(@ColorInt int i) {
        this.u = Integer.valueOf(i);
        return this;
    }

    public e e(@ColorRes int i) {
        this.r = i;
        this.s = i;
        return this;
    }

    public e f(@ColorInt int i) {
        this.w = Integer.valueOf(i);
        this.x = Integer.valueOf(i);
        return this;
    }

    public e g(@ColorRes int i) {
        this.r = i;
        return this;
    }

    public e h(@ColorInt int i) {
        this.w = Integer.valueOf(i);
        return this;
    }

    public e i(@ColorRes int i) {
        this.s = i;
        return this;
    }

    public e j(@ColorInt int i) {
        this.x = Integer.valueOf(i);
        return this;
    }

    public e a(Typeface typeface) {
        if (typeface == null) {
            throw new IllegalArgumentException("Cannot use a null typeface");
        }
        this.g = typeface;
        this.h = typeface;
        return this;
    }

    public e b(Typeface typeface) {
        if (typeface == null) {
            throw new IllegalArgumentException("Cannot use a null typeface");
        }
        this.g = typeface;
        return this;
    }

    public e c(Typeface typeface) {
        if (typeface == null) {
            throw new IllegalArgumentException("Cannot use a null typeface");
        }
        this.h = typeface;
        return this;
    }

    public e k(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Given negative text size");
        }
        this.A = i;
        return this;
    }

    public e l(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Given negative text size");
        }
        this.B = i;
        return this;
    }

    public e m(@DimenRes int i) {
        this.y = i;
        return this;
    }

    public e b(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("Given an invalid alpha value: " + f);
        }
        this.n = f;
        return this;
    }

    public e n(@DimenRes int i) {
        this.z = i;
        return this;
    }

    public e o(@ColorRes int i) {
        this.q = i;
        return this;
    }

    public e p(@ColorInt int i) {
        this.v = Integer.valueOf(i);
        return this;
    }

    public e b(boolean z) {
        this.j = z;
        return this;
    }

    public e c(boolean z) {
        this.k = z;
        return this;
    }

    public e d(boolean z) {
        this.l = z;
        return this;
    }

    public e a(Drawable drawable) {
        return a(drawable, false);
    }

    public e a(Drawable drawable, boolean z) {
        if (drawable == null) {
            throw new IllegalArgumentException("Cannot use null drawable");
        }
        this.f = drawable;
        if (!z) {
            this.f.setBounds(new Rect(0, 0, this.f.getIntrinsicWidth(), this.f.getIntrinsicHeight()));
        }
        return this;
    }

    public e q(int i) {
        this.i = i;
        return this;
    }

    public e r(int i) {
        this.d = i;
        return this;
    }

    public int a() {
        return this.i;
    }

    public void a(Runnable runnable) {
        runnable.run();
    }

    public Rect b() {
        if (this.e == null) {
            throw new IllegalStateException("Requesting bounds that are not set! Make sure your target is ready");
        }
        return this.e;
    }

    @Nullable
    Integer a(Context context) {
        return a(context, this.t, this.o);
    }

    @Nullable
    Integer b(Context context) {
        return a(context, this.u, this.p);
    }

    @Nullable
    Integer c(Context context) {
        return a(context, this.v, this.q);
    }

    @Nullable
    Integer d(Context context) {
        return a(context, this.w, this.r);
    }

    @Nullable
    Integer e(Context context) {
        return a(context, this.x, this.s);
    }

    int f(Context context) {
        return a(context, this.A, this.y);
    }

    int g(Context context) {
        return a(context, this.B, this.z);
    }

    @Nullable
    private Integer a(Context context, @Nullable Integer num, @ColorRes int i) {
        return i != -1 ? Integer.valueOf(ContextCompat.getColor(context, i)) : num;
    }

    private int a(Context context, int i, @DimenRes int i2) {
        if (i2 != -1) {
            return context.getResources().getDimensionPixelSize(i2);
        }
        return i.b(context, i);
    }
}
