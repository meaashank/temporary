package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.arch.lifecycle.Lifecycle;
import android.content.ComponentCallbacks2;
import android.os.Bundle;
import android.support.annotation.RestrictTo;

/* JADX INFO: compiled from: ReportFragment.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class o extends Fragment {
    private static final String a = "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag";
    private a b;

    /* JADX INFO: compiled from: ReportFragment.java */
    interface a {
        void a();

        void b();

        void c();
    }

    public static void a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag(a) == null) {
            fragmentManager.beginTransaction().add(new o(), a).commit();
            fragmentManager.executePendingTransactions();
        }
    }

    static o b(Activity activity) {
        return (o) activity.getFragmentManager().findFragmentByTag(a);
    }

    private void b(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    private void c(a aVar) {
        if (aVar != null) {
            aVar.b();
        }
    }

    private void d(a aVar) {
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        b(this.b);
        a(Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        c(this.b);
        a(Lifecycle.Event.ON_START);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        d(this.b);
        a(Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(Lifecycle.Event.ON_STOP);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(Lifecycle.Event.ON_DESTROY);
        this.b = null;
    }

    private void a(Lifecycle.Event event) {
        ComponentCallbacks2 activity = getActivity();
        if (activity instanceof g) {
            ((g) activity).a().a(event);
        } else if (activity instanceof e) {
            Lifecycle lifecycle = ((e) activity).getLifecycle();
            if (lifecycle instanceof f) {
                ((f) lifecycle).a(event);
            }
        }
    }

    void a(a aVar) {
        this.b = aVar;
    }
}
