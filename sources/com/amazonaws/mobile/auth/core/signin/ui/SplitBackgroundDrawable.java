package com.amazonaws.mobile.auth.core.signin.ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public class SplitBackgroundDrawable extends Drawable {
    private static final int d = -1;
    private Paint a;
    private int b;
    private int c;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public SplitBackgroundDrawable(int i) {
        this.b = -1;
        this.a = new Paint();
        this.c = -1;
        a(i);
    }

    public SplitBackgroundDrawable(int i, int i2) {
        this.b = -1;
        this.a = new Paint();
        this.c = i2;
        a(i);
    }

    public void a(int i) {
        this.b = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.a.setColor(this.c);
        float fHeight = this.b < bounds.height() ? this.b : bounds.height();
        canvas.drawRect(0.0f, 0.0f, bounds.width(), fHeight, this.a);
        this.a.setColor(-1);
        canvas.drawRect(0.0f, fHeight, bounds.width(), bounds.height(), this.a);
    }
}
