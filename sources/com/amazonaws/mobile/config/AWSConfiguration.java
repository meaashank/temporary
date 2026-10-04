package com.amazonaws.mobile.config;

import android.content.Context;
import java.util.Scanner;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AWSConfiguration {
    private static final String a = "Default";
    private static final String b = "awsconfiguration";
    private JSONObject c;
    private String d;

    public AWSConfiguration(Context context) {
        this(context, a(context));
    }

    private static int a(Context context) {
        try {
            return context.getResources().getIdentifier(b, "raw", context.getPackageName());
        } catch (Exception e) {
            throw new RuntimeException("Failed to read awsconfiguration.json please check that it is correctly formed.", e);
        }
    }

    public AWSConfiguration(Context context, int i) {
        this(context, i, a);
    }

    public AWSConfiguration(Context context, int i, String str) {
        this.d = str;
        a(context, i);
    }

    private void a(Context context, int i) {
        try {
            Scanner scanner = new Scanner(context.getResources().openRawResource(i));
            StringBuilder sb = new StringBuilder();
            while (scanner.hasNextLine()) {
                sb.append(scanner.nextLine());
            }
            scanner.close();
            this.c = new JSONObject(sb.toString());
        } catch (Exception e) {
            throw new RuntimeException("Failed to read awsconfiguration.json please check that it is correctly formed.", e);
        }
    }

    public JSONObject a(String str) {
        try {
            JSONObject jSONObject = this.c.getJSONObject(str);
            if (jSONObject.has(this.d)) {
                jSONObject = jSONObject.getJSONObject(this.d);
            }
            return new JSONObject(jSONObject.toString());
        } catch (JSONException unused) {
            return null;
        }
    }

    public String a() {
        try {
            return this.c.getString("UserAgent");
        } catch (JSONException unused) {
            return "";
        }
    }

    public void b(String str) {
        this.d = str;
    }

    public String b() {
        return this.d;
    }

    public String toString() {
        return this.c.toString();
    }
}
