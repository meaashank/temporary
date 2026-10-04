package com.a.a;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Stack;

/* JADX INFO: compiled from: ToolbarTapTarget.java */
/* JADX INFO: loaded from: classes.dex */
class h extends j {

    /* JADX INFO: compiled from: ToolbarTapTarget.java */
    private interface c {
        View a(int i);

        CharSequence a();

        void a(CharSequence charSequence);

        void a(ArrayList<View> arrayList, CharSequence charSequence, int i);

        Drawable b();

        @Nullable
        Drawable c();

        int d();

        Object e();
    }

    h(Toolbar toolbar, @IdRes int i, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        super(toolbar.findViewById(i), charSequence, charSequence2);
    }

    h(android.widget.Toolbar toolbar, @IdRes int i, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        super(toolbar.findViewById(i), charSequence, charSequence2);
    }

    h(Toolbar toolbar, boolean z, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        super(z ? b(toolbar) : c(toolbar), charSequence, charSequence2);
    }

    h(android.widget.Toolbar toolbar, boolean z, CharSequence charSequence, @Nullable CharSequence charSequence2) {
        super(z ? b(toolbar) : c(toolbar), charSequence, charSequence2);
    }

    private static c a(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Given null instance");
        }
        if (obj instanceof Toolbar) {
            return new b((Toolbar) obj);
        }
        if (obj instanceof android.widget.Toolbar) {
            return new a((android.widget.Toolbar) obj);
        }
        throw new IllegalStateException("Couldn't provide proper toolbar proxy instance");
    }

    private static View b(Object obj) {
        c cVarA = a(obj);
        CharSequence charSequenceA = cVarA.a();
        boolean z = !TextUtils.isEmpty(charSequenceA);
        if (!z) {
            charSequenceA = "taptarget-findme";
        }
        cVarA.a(charSequenceA);
        ArrayList<View> arrayList = new ArrayList<>(1);
        cVarA.a(arrayList, charSequenceA, 2);
        if (!z) {
            cVarA.a((CharSequence) null);
        }
        if (arrayList.size() > 0) {
            return arrayList.get(0);
        }
        Drawable drawableB = cVarA.b();
        if (drawableB == null) {
            throw new IllegalStateException("Toolbar does not have a navigation view set!");
        }
        int iD = cVarA.d();
        for (int i = 0; i < iD; i++) {
            View viewA = cVarA.a(i);
            if ((viewA instanceof ImageButton) && ((ImageButton) viewA).getDrawable() == drawableB) {
                return viewA;
            }
        }
        throw new IllegalStateException("Could not find navigation view for Toolbar!");
    }

    private static View c(Object obj) {
        c cVarA = a(obj);
        Drawable drawableC = cVarA.c();
        if (drawableC != null) {
            Stack stack = new Stack();
            stack.push((ViewGroup) cVarA.e());
            while (!stack.empty()) {
                ViewGroup viewGroup = (ViewGroup) stack.pop();
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof ViewGroup) {
                        stack.push((ViewGroup) childAt);
                    } else if ((childAt instanceof ImageView) && ((ImageView) childAt).getDrawable() == drawableC) {
                        return childAt;
                    }
                }
            }
        }
        try {
            return (View) d.a(d.a(d.a(cVarA.e(), "mMenuView"), "mPresenter"), "mOverflowButton");
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unable to access overflow view for Toolbar!", e);
        } catch (NoSuchFieldException e2) {
            throw new IllegalStateException("Could not find overflow view for Toolbar!", e2);
        }
    }

    /* JADX INFO: compiled from: ToolbarTapTarget.java */
    private static class b implements c {
        private final Toolbar a;

        b(Toolbar toolbar) {
            this.a = toolbar;
        }

        @Override // com.a.a.h.c
        public CharSequence a() {
            return this.a.getNavigationContentDescription();
        }

        @Override // com.a.a.h.c
        public void a(CharSequence charSequence) {
            this.a.setNavigationContentDescription(charSequence);
        }

        @Override // com.a.a.h.c
        public void a(ArrayList<View> arrayList, CharSequence charSequence, int i) {
            this.a.findViewsWithText(arrayList, charSequence, i);
        }

        @Override // com.a.a.h.c
        public Drawable b() {
            return this.a.getNavigationIcon();
        }

        @Override // com.a.a.h.c
        public Drawable c() {
            return this.a.getOverflowIcon();
        }

        @Override // com.a.a.h.c
        public int d() {
            return this.a.getChildCount();
        }

        @Override // com.a.a.h.c
        public View a(int i) {
            return this.a.getChildAt(i);
        }

        @Override // com.a.a.h.c
        public Object e() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: ToolbarTapTarget.java */
    @TargetApi(21)
    private static class a implements c {
        private final android.widget.Toolbar a;

        a(android.widget.Toolbar toolbar) {
            this.a = toolbar;
        }

        @Override // com.a.a.h.c
        public CharSequence a() {
            return this.a.getNavigationContentDescription();
        }

        @Override // com.a.a.h.c
        public void a(CharSequence charSequence) {
            this.a.setNavigationContentDescription(charSequence);
        }

        @Override // com.a.a.h.c
        public void a(ArrayList<View> arrayList, CharSequence charSequence, int i) {
            this.a.findViewsWithText(arrayList, charSequence, i);
        }

        @Override // com.a.a.h.c
        public Drawable b() {
            return this.a.getNavigationIcon();
        }

        @Override // com.a.a.h.c
        @Nullable
        public Drawable c() {
            if (Build.VERSION.SDK_INT >= 23) {
                return this.a.getOverflowIcon();
            }
            return null;
        }

        @Override // com.a.a.h.c
        public int d() {
            return this.a.getChildCount();
        }

        @Override // com.a.a.h.c
        public View a(int i) {
            return this.a.getChildAt(i);
        }

        @Override // com.a.a.h.c
        public Object e() {
            return this.a;
        }
    }
}
