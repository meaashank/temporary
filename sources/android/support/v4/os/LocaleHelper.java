package android.support.v4.os;

import android.support.annotation.RestrictTo;
import com.prism.gaia.download.a;
import io.fabric.sdk.android.services.b.d;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
final class LocaleHelper {
    static Locale forLanguageTag(String str) {
        if (str.contains(a.q)) {
            String[] strArrSplit = str.split(a.q, -1);
            if (strArrSplit.length > 2) {
                return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            }
            if (strArrSplit.length > 1) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            if (strArrSplit.length == 1) {
                return new Locale(strArrSplit[0]);
            }
        } else if (str.contains(d.ROLL_OVER_FILE_NAME_SEPARATOR)) {
            String[] strArrSplit2 = str.split(d.ROLL_OVER_FILE_NAME_SEPARATOR, -1);
            if (strArrSplit2.length > 2) {
                return new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]);
            }
            if (strArrSplit2.length > 1) {
                return new Locale(strArrSplit2[0], strArrSplit2[1]);
            }
            if (strArrSplit2.length == 1) {
                return new Locale(strArrSplit2[0]);
            }
        } else {
            return new Locale(str);
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    static String toLanguageTag(Locale locale) {
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country != null && !country.isEmpty()) {
            sb.append(a.q);
            sb.append(locale.getCountry());
        }
        return sb.toString();
    }

    private LocaleHelper() {
    }
}
