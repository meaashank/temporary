package com.amazonaws.auth;

import com.amazonaws.ClientConfiguration;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SessionCredentialsProviderFactory {
    private static final Map<Key, STSSessionCredentialsProvider> a = new HashMap();

    private static final class Key {
        private final String a;
        private final String b;

        public Key(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public int hashCode() {
            return (((this.a == null ? 0 : this.a.hashCode()) + 31) * 31) + (this.b != null ? this.b.hashCode() : 0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Key key = (Key) obj;
            if (this.a == null) {
                if (key.a != null) {
                    return false;
                }
            } else if (!this.a.equals(key.a)) {
                return false;
            }
            if (this.b == null) {
                if (key.b != null) {
                    return false;
                }
            } else if (!this.b.equals(key.b)) {
                return false;
            }
            return true;
        }
    }

    public static synchronized STSSessionCredentialsProvider a(AWSCredentials aWSCredentials, String str, ClientConfiguration clientConfiguration) {
        Key key;
        key = new Key(aWSCredentials.a(), str);
        if (!a.containsKey(key)) {
            a.put(key, new STSSessionCredentialsProvider(aWSCredentials, clientConfiguration));
        }
        return a.get(key);
    }
}
