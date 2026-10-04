package com.amazonaws.mobile.client.results;

/* JADX INFO: loaded from: classes.dex */
public class Tokens {
    private final Token a;
    private final Token b;
    private final Token c;

    public Tokens(String str, String str2, String str3) {
        this.a = new Token(str);
        this.b = new Token(str2);
        this.c = new Token(str3);
    }

    public Token a() {
        return this.a;
    }

    public Token b() {
        return this.b;
    }

    public Token c() {
        return this.c;
    }
}
