package com.amazonaws.mobile.auth.core.signin.ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundDrawable extends Drawable {
    private static final int c = -1;
    private Paint a;
    private int b;

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

    public BackgroundDrawable() {
        this.a = new Paint();
        this.b = -1;
    }

    public BackgroundDrawable(int i) {
        this.a = new Paint();
        this.b = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.a.setColor(this.b);
        canvas.drawRect(0.0f, 0.0f, bounds.width(), bounds.height(), this.a);
    }
}
