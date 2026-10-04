package com.a.a;

import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewManager;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: ViewUtil.java */
/* JADX INFO: loaded from: classes.dex */
class k {
    k() {
    }

    private static boolean a(View view) {
        return ViewCompat.isLaidOut(view) && view.getWidth() > 0 && view.getHeight() > 0;
    }

    static void a(final View view, final Runnable runnable) {
        if (a(view)) {
            runnable.run();
        } else {
            final ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.a.a.k.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ViewTreeObserver viewTreeObserver2;
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver2 = viewTreeObserver;
                    } else {
                        viewTreeObserver2 = view.getViewTreeObserver();
                    }
                    k.a(viewTreeObserver2, this);
                    runnable.run();
                }
            });
        }
    }

    static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }

    static void a(ViewManager viewManager, View view) {
        if (viewManager == null || view == null) {
            return;
        }
        try {
            viewManager.removeView(view);
        } catch (Exception unused) {
        }
    }
}
