package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import com.amazonaws.services.cognitoidentityprovider.model.MFAOptionType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CognitoUserSettings {
    private Map<String, String> a;

    public CognitoUserSettings() {
        this(null);
    }

    protected CognitoUserSettings(List<MFAOptionType> list) {
        this.a = new HashMap();
        if (list != null) {
            for (MFAOptionType mFAOptionType : list) {
                this.a.put(mFAOptionType.b().toString(), mFAOptionType.a().toString());
            }
        }
    }

    protected List<MFAOptionType> a() {
        ArrayList arrayList = new ArrayList();
        if (this.a != null) {
            for (Map.Entry<String, String> entry : this.a.entrySet()) {
                MFAOptionType mFAOptionType = new MFAOptionType();
                mFAOptionType.c(entry.getKey());
                mFAOptionType.a(entry.getValue());
                arrayList.add(mFAOptionType);
            }
        }
        return arrayList;
    }

    public Map<String, String> b() {
        return this.a;
    }

    public void a(String str, String str2) {
        this.a.put(str, str2);
    }
}
