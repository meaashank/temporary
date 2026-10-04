package com.amazonaws.auth.policy;

import com.prism.gaia.download.a;

/* JADX INFO: loaded from: classes.dex */
public class Principal {
    public static final Principal a = new Principal("AWS", "*");
    public static final Principal b = new Principal("Service", "*");
    public static final Principal c = new Principal("Federated", "*");
    public static final Principal d = new Principal("*", "*");
    private final String e;
    private final String f;

    public Principal(Services services) {
        if (services == null) {
            throw new IllegalArgumentException("Null AWS service name specified");
        }
        this.e = services.getServiceId();
        this.f = "Service";
    }

    public Principal(String str, String str2) {
        this.f = str;
        this.e = "AWS".equals(str) ? str2.replaceAll(a.q, "") : str2;
    }

    public Principal(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Null AWS account ID specified");
        }
        this.e = str.replaceAll(a.q, "");
        this.f = "AWS";
    }

    public Principal(WebIdentityProviders webIdentityProviders) {
        if (webIdentityProviders == null) {
            throw new IllegalArgumentException("Null web identity provider specified");
        }
        this.e = webIdentityProviders.getWebIdentityProvider();
        this.f = "Federated";
    }

    public String a() {
        return this.f;
    }

    public String b() {
        return this.e;
    }

    public enum Services {
        AWSDataPipeline("datapipeline.amazonaws.com"),
        AmazonElasticTranscoder("elastictranscoder.amazonaws.com"),
        AmazonEC2("ec2.amazonaws.com"),
        AWSOpsWorks("opsworks.amazonaws.com"),
        AWSCloudHSM("cloudhsm.amazonaws.com"),
        AllServices("*");

        private String serviceId;

        Services(String str) {
            this.serviceId = str;
        }

        public String getServiceId() {
            return this.serviceId;
        }

        public static Services fromString(String str) {
            if (str == null) {
                return null;
            }
            for (Services services : values()) {
                if (services.getServiceId().equalsIgnoreCase(str)) {
                    return services;
                }
            }
            return null;
        }
    }

    public enum WebIdentityProviders {
        Facebook("graph.facebook.com"),
        Google("accounts.google.com"),
        Amazon("www.amazon.com"),
        AllProviders("*");

        private String webIdentityProvider;

        WebIdentityProviders(String str) {
            this.webIdentityProvider = str;
        }

        public String getWebIdentityProvider() {
            return this.webIdentityProvider;
        }

        public static WebIdentityProviders fromString(String str) {
            if (str == null) {
                return null;
            }
            for (WebIdentityProviders webIdentityProviders : values()) {
                if (webIdentityProviders.getWebIdentityProvider().equalsIgnoreCase(str)) {
                    return webIdentityProviders;
                }
            }
            return null;
        }
    }

    public int hashCode() {
        return ((this.f.hashCode() + 31) * 31) + this.e.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Principal)) {
            return false;
        }
        Principal principal = (Principal) obj;
        return a().equals(principal.a()) && b().equals(principal.b());
    }
}
