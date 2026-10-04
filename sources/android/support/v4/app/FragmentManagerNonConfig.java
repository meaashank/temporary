package android.support.v4.app;

import android.arch.lifecycle.s;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FragmentManagerNonConfig {
    private final List<FragmentManagerNonConfig> mChildNonConfigs;
    private final List<Fragment> mFragments;
    private final List<s> mViewModelStores;

    FragmentManagerNonConfig(List<Fragment> list, List<FragmentManagerNonConfig> list2, List<s> list3) {
        this.mFragments = list;
        this.mChildNonConfigs = list2;
        this.mViewModelStores = list3;
    }

    List<Fragment> getFragments() {
        return this.mFragments;
    }

    List<FragmentManagerNonConfig> getChildNonConfigs() {
        return this.mChildNonConfigs;
    }

    List<s> getViewModelStores() {
        return this.mViewModelStores;
    }
}
