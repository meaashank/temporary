package com.a.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;

/* JADX INFO: compiled from: FloatValueAnimatorBuilder.java */
/* JADX INFO: loaded from: classes.dex */
class b {
    final ValueAnimator a;
    a b;

    /* JADX INFO: compiled from: FloatValueAnimatorBuilder.java */
    interface a {
        void a();
    }

    /* JADX INFO: renamed from: com.a.a.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FloatValueAnimatorBuilder.java */
    interface InterfaceC0009b {
        void a(float f);
    }

    protected b() {
        this(false);
    }

    protected b(boolean z) {
        if (z) {
            this.a = ValueAnimator.ofFloat(1.0f, 0.0f);
        } else {
            this.a = ValueAnimator.ofFloat(0.0f, 1.0f);
        }
    }

    public b a(long j) {
        this.a.setStartDelay(j);
        return this;
    }

    public b b(long j) {
        this.a.setDuration(j);
        return this;
    }

    public b a(TimeInterpolator timeInterpolator) {
        this.a.setInterpolator(timeInterpolator);
        return this;
    }

    public b a(int i) {
        this.a.setRepeatCount(i);
        return this;
    }

    public b a(final InterfaceC0009b interfaceC0009b) {
        this.a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.a.a.b.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                interfaceC0009b.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return this;
    }

    public b a(a aVar) {
        this.b = aVar;
        return this;
    }

    public ValueAnimator a() {
        if (this.b != null) {
            this.a.addListener(new AnimatorListenerAdapter() { // from class: com.a.a.b.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    b.this.b.a();
                }
            });
        }
        return this.a;
    }
}
