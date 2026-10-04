package android.arch.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class AndroidViewModel extends q {

    @SuppressLint({"StaticFieldLeak"})
    private Application a;

    public AndroidViewModel(@NonNull Application application) {
        this.a = application;
    }

    @NonNull
    public <T extends Application> T a() {
        return (T) this.a;
    }
}
