package com.a.a;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX INFO: compiled from: ViewTapTarget.java */
/* JADX INFO: loaded from: classes.dex */
class j extends e {
    final View o;

    j(View view, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        super(charSequence, charSequence2);
        if (view == null) {
            throw new IllegalArgumentException("Given null view to target");
        }
        this.o = view;
    }

    @Override // com.a.a.e
    public void a(final Runnable runnable) {
        k.a(this.o, new Runnable() { // from class: com.a.a.j.1
            @Override // java.lang.Runnable
            public void run() {
                int[] iArr = new int[2];
                j.this.o.getLocationOnScreen(iArr);
                j.this.e = new Rect(iArr[0], iArr[1], iArr[0] + j.this.o.getWidth(), iArr[1] + j.this.o.getHeight());
                if (j.this.f == null && j.this.o.getWidth() > 0 && j.this.o.getHeight() > 0) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(j.this.o.getWidth(), j.this.o.getHeight(), Bitmap.Config.ARGB_8888);
                    j.this.o.draw(new Canvas(bitmapCreateBitmap));
                    j.this.f = new BitmapDrawable(j.this.o.getContext().getResources(), bitmapCreateBitmap);
                    j.this.f.setBounds(0, 0, j.this.f.getIntrinsicWidth(), j.this.f.getIntrinsicHeight());
                }
                runnable.run();
            }
        });
    }
}
