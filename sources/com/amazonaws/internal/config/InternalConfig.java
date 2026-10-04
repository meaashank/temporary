package com.amazonaws.internal.config;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.regions.ServiceAbbreviations;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class InternalConfig {
    private static final Log a = LogFactory.a(InternalConfig.class);
    private static final String b = "/";
    private final SignerConfig c = g();
    private final Map<String, SignerConfig> e = d();
    private final Map<String, SignerConfig> f = f();
    private final Map<String, SignerConfig> d = e();
    private final Map<String, HttpClientConfig> g = c();
    private final List<HostRegexToRegionMapping> h = h();

    InternalConfig() {
    }

    public SignerConfig a(String str) {
        return a(str, null);
    }

    public HttpClientConfig b(String str) {
        return this.g.get(str);
    }

    public SignerConfig a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (str2 != null) {
            SignerConfig signerConfig = this.d.get(str + b + str2);
            if (signerConfig != null) {
                return signerConfig;
            }
            SignerConfig signerConfig2 = this.e.get(str2);
            if (signerConfig2 != null) {
                return signerConfig2;
            }
        }
        SignerConfig signerConfig3 = this.f.get(str);
        return signerConfig3 == null ? this.c : signerConfig3;
    }

    public List<HostRegexToRegionMapping> a() {
        return Collections.unmodifiableList(this.h);
    }

    private static Map<String, HttpClientConfig> c() {
        HashMap map = new HashMap();
        map.put("AmazonCloudWatchClient", new HttpClientConfig(ServiceAbbreviations.d));
        map.put("AmazonCloudWatchLogsClient", new HttpClientConfig("logs"));
        map.put("AmazonSimpleDBClient", new HttpClientConfig(ServiceAbbreviations.l));
        map.put("AmazonSimpleEmailServiceClient", new HttpClientConfig("email"));
        map.put("AWSSecurityTokenServiceClient", new HttpClientConfig(ServiceAbbreviations.t));
        map.put("AmazonCognitoIdentityClient", new HttpClientConfig("cognito-identity"));
        map.put("AmazonCognitoIdentityProviderClient", new HttpClientConfig("cognito-idp"));
        map.put("AmazonCognitoSyncClient", new HttpClientConfig("cognito-sync"));
        map.put("AmazonKinesisFirehoseClient", new HttpClientConfig("firehose"));
        map.put("AWSIotClient", new HttpClientConfig("execute-api"));
        map.put("AmazonLexRuntimeClient", new HttpClientConfig("runtime.lex"));
        map.put("AmazonPinpointClient", new HttpClientConfig("mobiletargeting"));
        map.put("AmazonPinpointAnalyticsClient", new HttpClientConfig("mobileanalytics"));
        map.put("AmazonTranscribeClient", new HttpClientConfig("transcribe"));
        map.put("AmazonTranslateClient", new HttpClientConfig("translate"));
        map.put("AmazonComprehendClient", new HttpClientConfig("comprehend"));
        map.put("AWSKinesisVideoArchivedMediaClient", new HttpClientConfig("kinesisvideo"));
        return map;
    }

    private static Map<String, SignerConfig> d() {
        HashMap map = new HashMap();
        map.put("eu-central-1", new SignerConfig("AWS4SignerType"));
        map.put("cn-north-1", new SignerConfig("AWS4SignerType"));
        return map;
    }

    private static Map<String, SignerConfig> e() {
        HashMap map = new HashMap();
        map.put("s3/eu-central-1", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/cn-north-1", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/us-east-2", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/ca-central-1", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/ap-south-1", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/ap-northeast-2", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/eu-west-2", new SignerConfig("AWSS3V4SignerType"));
        return map;
    }

    private static Map<String, SignerConfig> f() {
        HashMap map = new HashMap();
        map.put(ServiceAbbreviations.f, new SignerConfig("QueryStringSignerType"));
        map.put("email", new SignerConfig("AWS3SignerType"));
        map.put("s3", new SignerConfig("S3SignerType"));
        map.put(ServiceAbbreviations.l, new SignerConfig("QueryStringSignerType"));
        map.put("runtime.lex", new SignerConfig("AmazonLexV4Signer"));
        map.put("polly", new SignerConfig("AmazonPollyCustomPresigner"));
        return map;
    }

    private static SignerConfig g() {
        return new SignerConfig("AWS4SignerType");
    }

    private static List<HostRegexToRegionMapping> h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-external-1\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com", "us-gov-west-1"));
        return arrayList;
    }

    void b() {
        a.b("defaultSignerConfig: " + this.c + "\nserviceRegionSigners: " + this.d + "\nregionSigners: " + this.e + "\nserviceSigners: " + this.f + "\nhostRegexToRegionMappings: " + this.h);
    }

    public static class Factory {
        private static final InternalConfig a;

        static {
            try {
                a = new InternalConfig();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new IllegalStateException("Fatal: Failed to load the internal config for AWS Android SDK", e2);
            }
        }

        public static InternalConfig a() {
            return a;
        }
    }
}
