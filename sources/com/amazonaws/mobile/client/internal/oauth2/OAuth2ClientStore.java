package com.amazonaws.mobile.client.internal.oauth2;

import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: OAuth2Client.java */
/* JADX INFO: loaded from: classes.dex */
class OAuth2ClientStore {
    ReadWriteLock a = new ReentrantReadWriteLock();
    private final AWSKeyValueStore b;

    OAuth2ClientStore(OAuth2Client oAuth2Client) {
        this.b = new AWSKeyValueStore(oAuth2Client.j, OAuth2Client.c, oAuth2Client.k);
    }

    void a(OAuth2Tokens oAuth2Tokens) {
        try {
            this.a.writeLock().lock();
            this.b.a(OAuth2Constants.TokenResponseFields.ACCESS_TOKEN.toString(), oAuth2Tokens.a());
            this.b.a(OAuth2Constants.TokenResponseFields.ID_TOKEN.toString(), oAuth2Tokens.b());
            this.b.a(OAuth2Constants.TokenResponseFields.REFRESH_TOKEN.toString(), oAuth2Tokens.c());
            this.b.a(OAuth2Constants.TokenResponseFields.EXPIRES_IN.toString(), oAuth2Tokens.f() == null ? null : oAuth2Tokens.f().toString());
            this.b.a(OAuth2Client.e, oAuth2Tokens.g().toString());
        } finally {
            this.a.writeLock().unlock();
        }
    }

    OAuth2Tokens a() {
        try {
            this.a.readLock().lock();
            String strB = this.b.b(OAuth2Constants.TokenResponseFields.EXPIRES_IN.toString());
            return new OAuth2Tokens(this.b.b(OAuth2Constants.TokenResponseFields.ACCESS_TOKEN.toString()), this.b.b(OAuth2Constants.TokenResponseFields.ID_TOKEN.toString()), this.b.b(OAuth2Constants.TokenResponseFields.REFRESH_TOKEN.toString()), this.b.b(OAuth2Constants.TokenResponseFields.TOKEN_TYPE.toString()), strB == null ? null : Long.decode(strB), Long.valueOf(this.b.b(OAuth2Client.e)), this.b.b(OAuth2Constants.TokenResponseFields.SCOPES.toString()));
        } finally {
            this.a.readLock().unlock();
        }
    }

    Map<String, String> a(String... strArr) {
        try {
            this.a.readLock().lock();
            HashMap map = new HashMap();
            for (String str : strArr) {
                map.put(str, this.b.b(str));
            }
            return map;
        } finally {
            this.a.readLock().unlock();
        }
    }

    String a(String str) {
        try {
            this.a.readLock().lock();
            return this.b.b(str);
        } finally {
            this.a.readLock().unlock();
        }
    }

    void a(Map<String, String> map) {
        try {
            this.a.writeLock().lock();
            for (String str : map.keySet()) {
                this.b.a(str, map.get(str));
            }
        } finally {
            this.a.writeLock().unlock();
        }
    }

    void a(String str, String str2) {
        try {
            this.a.writeLock().lock();
            this.b.a(str, str2);
        } finally {
            this.a.writeLock().unlock();
        }
    }

    void b() {
        this.b.a();
    }

    public void a(boolean z) {
        this.b.a(z);
    }
}
