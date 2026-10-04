package com.amazonaws.internal.keyvaluestore;

import android.content.Context;
import android.content.SharedPreferences;
import java.security.Key;

/* JADX INFO: loaded from: classes.dex */
interface KeyProvider {
    Key a(SharedPreferences sharedPreferences, String str, Context context);
}
