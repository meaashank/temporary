package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChooseMfaContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ForgotPasswordContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.NewPasswordContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.RegisterMfaContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.VerifyMfaContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoInternalErrorException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoNotAuthorizedException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.DevicesHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GetDetailsHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.RegisterMfaHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.UpdateAttributesHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoAccessToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoIdToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoRefreshToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoSecretHash;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.Hkdf;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.AssociateSoftwareTokenRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AssociateSoftwareTokenResult;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.AuthenticationResultType;
import com.amazonaws.services.cognitoidentityprovider.model.ChangePasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CodeDeliveryDetailsType;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceResult;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmSignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceSecretVerifierConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceType;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserAttributeVerificationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserAttributeVerificationCodeResult;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserResult;
import com.amazonaws.services.cognitoidentityprovider.model.GlobalSignOutRequest;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthRequest;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthResult;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidParameterException;
import com.amazonaws.services.cognitoidentityprovider.model.ListDevicesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListDevicesResult;
import com.amazonaws.services.cognitoidentityprovider.model.NewDeviceMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.NotAuthorizedException;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeResult;
import com.amazonaws.services.cognitoidentityprovider.model.ResourceNotFoundException;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import com.amazonaws.services.cognitoidentityprovider.model.SMSMfaSettingsType;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserMFAPreferenceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserSettingsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMfaSettingsType;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserAttributesResult;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.services.cognitoidentityprovider.model.VerifySoftwareTokenRequest;
import com.amazonaws.services.cognitoidentityprovider.model.VerifySoftwareTokenResponseType;
import com.amazonaws.services.cognitoidentityprovider.model.VerifySoftwareTokenResult;
import com.amazonaws.services.cognitoidentityprovider.model.VerifyUserAttributeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.VerifyUserAttributeResult;
import com.amazonaws.services.s3.model.InstructionFileId;
import com.amazonaws.util.Base64;
import com.amazonaws.util.StringUtils;
import io.fabric.sdk.android.services.b.d;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class CognitoUser {
    private static final int b = 16;
    private final Context c;
    private final AmazonCognitoIdentityProvider d;
    private final String e;
    private final String f;
    private String g;
    private String h;
    private final CognitoUserPool j;
    private String k;
    private static final Log a = LogFactory.a(CognitoUser.class);
    private static final Object m = new Object();
    private String i = null;
    private CognitoUserSession l = null;

    protected CognitoUser(CognitoUserPool cognitoUserPool, String str, String str2, String str3, String str4, AmazonCognitoIdentityProvider amazonCognitoIdentityProvider, Context context) {
        this.j = cognitoUserPool;
        this.c = context;
        this.g = str;
        this.d = amazonCognitoIdentityProvider;
        this.e = str2;
        this.f = str3;
        this.k = str4;
    }

    public String a() {
        return this.g;
    }

    public String b() {
        return this.j.b();
    }

    protected AmazonCognitoIdentityProvider c() {
        return this.d;
    }

    public void a(final String str, final boolean z, final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.1
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.a(str, z);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(String str, boolean z, GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(str, z);
            genericHandler.a();
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        ConfirmSignUpRequest confirmSignUpRequestB = new ConfirmSignUpRequest().b(this.e).d(this.k).f(this.g).h(str).b(Boolean.valueOf(z)).b(k());
        String strE = this.j.e();
        if (strE != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.a(strE);
            confirmSignUpRequestB.a(analyticsMetadataType);
        }
        this.d.a(confirmSignUpRequestB);
    }

    public void a(final VerificationHandler verificationHandler) {
        if (verificationHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.2
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    final ResendConfirmationCodeResult resendConfirmationCodeResultG = CognitoUser.this.g();
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            verificationHandler.a(new CognitoUserCodeDeliveryDetails(resendConfirmationCodeResultG.a()));
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            verificationHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(VerificationHandler verificationHandler) {
        if (verificationHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            verificationHandler.a(new CognitoUserCodeDeliveryDetails(g().a()));
        } catch (Exception e) {
            verificationHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ResendConfirmationCodeResult g() {
        ResendConfirmationCodeRequest resendConfirmationCodeRequestD = new ResendConfirmationCodeRequest().f(this.g).b(this.e).d(this.k);
        String strE = this.j.e();
        resendConfirmationCodeRequestD.a(k());
        if (strE != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.a(strE);
            resendConfirmationCodeRequestD.a(analyticsMetadataType);
        }
        return this.d.a(resendConfirmationCodeRequestD);
    }

    public void a(final ForgotPasswordHandler forgotPasswordHandler) {
        if (forgotPasswordHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.3
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    final ForgotPasswordContinuation forgotPasswordContinuation = new ForgotPasswordContinuation(this, new CognitoUserCodeDeliveryDetails(CognitoUser.this.h().a()), true, forgotPasswordHandler);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            forgotPasswordHandler.a(forgotPasswordContinuation);
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            forgotPasswordHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(ForgotPasswordHandler forgotPasswordHandler) {
        if (forgotPasswordHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            forgotPasswordHandler.a(new ForgotPasswordContinuation(this, new CognitoUserCodeDeliveryDetails(h().a()), false, forgotPasswordHandler));
        } catch (Exception e) {
            forgotPasswordHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ForgotPasswordResult h() {
        ForgotPasswordRequest forgotPasswordRequest = new ForgotPasswordRequest();
        forgotPasswordRequest.a(this.e);
        forgotPasswordRequest.c(this.k);
        forgotPasswordRequest.e(this.g);
        forgotPasswordRequest.a(k());
        String strE = this.j.e();
        if (strE != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.a(strE);
            forgotPasswordRequest.a(analyticsMetadataType);
        }
        return this.d.a(forgotPasswordRequest);
    }

    public void a(final String str, final String str2, final ForgotPasswordHandler forgotPasswordHandler) {
        if (forgotPasswordHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.4
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.a(str, str2);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            forgotPasswordHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            forgotPasswordHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(String str, String str2, ForgotPasswordHandler forgotPasswordHandler) {
        if (forgotPasswordHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(str, str2);
            forgotPasswordHandler.a();
        } catch (Exception e) {
            forgotPasswordHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        ConfirmForgotPasswordRequest confirmForgotPasswordRequest = new ConfirmForgotPasswordRequest();
        confirmForgotPasswordRequest.e(this.g);
        confirmForgotPasswordRequest.a(this.e);
        confirmForgotPasswordRequest.c(this.k);
        confirmForgotPasswordRequest.g(str);
        confirmForgotPasswordRequest.i(str2);
        confirmForgotPasswordRequest.a(k());
        String strE = this.j.e();
        if (strE != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.a(strE);
            confirmForgotPasswordRequest.a(analyticsMetadataType);
        }
        this.d.a(confirmForgotPasswordRequest);
    }

    public void a(final AuthenticationHandler authenticationHandler) {
        if (authenticationHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.5
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.d();
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(CognitoUser.this.l, (CognitoDevice) null);
                        }
                    };
                } catch (CognitoNotAuthorizedException unused) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.5.2
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(new AuthenticationContinuation(this, CognitoUser.this.c, true, authenticationHandler), this.a());
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.5.3
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(AuthenticationHandler authenticationHandler) {
        if (authenticationHandler == null) {
            throw new InvalidParameterException("callback is null");
        }
        try {
            d();
            authenticationHandler.a(this.l, (CognitoDevice) null);
        } catch (CognitoNotAuthorizedException unused) {
            authenticationHandler.a(new AuthenticationContinuation(this, this.c, false, authenticationHandler), a());
        } catch (InvalidParameterException e) {
            authenticationHandler.a(e);
        } catch (Exception e2) {
            authenticationHandler.a(e2);
        }
    }

    public Runnable a(AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, final boolean z) {
        final Runnable runnableB = b(authenticationDetails, new AuthenticationHandler() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6
            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void a(final CognitoUserSession cognitoUserSession, final CognitoDevice cognitoDevice) {
                if (z) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(cognitoUserSession, cognitoDevice);
                        }
                    });
                } else {
                    authenticationHandler.a(cognitoUserSession, cognitoDevice);
                }
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void a(final AuthenticationContinuation authenticationContinuation, final String str) {
                if (z) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(authenticationContinuation, str);
                        }
                    });
                } else {
                    authenticationHandler.a(authenticationContinuation, str);
                }
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void a(final MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation) {
                if (z) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.3
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(multiFactorAuthenticationContinuation);
                        }
                    });
                } else {
                    authenticationHandler.a(multiFactorAuthenticationContinuation);
                }
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void a(final ChallengeContinuation challengeContinuation) {
                if (z) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.4
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(challengeContinuation);
                        }
                    });
                } else {
                    authenticationHandler.a(challengeContinuation);
                }
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void a(final Exception exc) {
                if (z) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.5
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(exc);
                        }
                    });
                } else {
                    authenticationHandler.a(exc);
                }
            }
        }, z);
        return z ? new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.7
            @Override // java.lang.Runnable
            public void run() {
                new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnableB.run();
                    }
                }).start();
            }
        } : runnableB;
    }

    Runnable b(final AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, boolean z) {
        if (CognitoServiceConstants.i.equals(authenticationDetails.d())) {
            return c(authenticationDetails, authenticationHandler, z);
        }
        if (CognitoServiceConstants.j.equals(authenticationDetails.d())) {
            return d(authenticationDetails, authenticationHandler, z);
        }
        if (CognitoServiceConstants.n.equals(authenticationDetails.d())) {
            return e(authenticationDetails, authenticationHandler, z);
        }
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.8
            @Override // java.lang.Runnable
            public void run() {
                authenticationHandler.a(new CognitoParameterInvalidException("Unsupported authentication type " + authenticationDetails.d()));
            }
        };
    }

    public Runnable a(String str, RespondToAuthChallengeResult respondToAuthChallengeResult, AuthenticationHandler authenticationHandler, boolean z) {
        RespondToAuthChallengeRequest respondToAuthChallengeRequest = new RespondToAuthChallengeRequest();
        HashMap map = new HashMap();
        if ("SMS_MFA".equals(respondToAuthChallengeResult.a())) {
            map.put(CognitoServiceConstants.J, str);
        } else if (CognitoServiceConstants.h.equals(respondToAuthChallengeResult.a())) {
            map.put(CognitoServiceConstants.K, str);
        }
        map.put("USERNAME", this.h);
        map.put("DEVICE_KEY", this.i);
        map.put("SECRET_HASH", this.k);
        respondToAuthChallengeRequest.a(this.e);
        respondToAuthChallengeRequest.e(respondToAuthChallengeResult.b());
        respondToAuthChallengeRequest.c(respondToAuthChallengeResult.a());
        respondToAuthChallengeRequest.a(map);
        respondToAuthChallengeRequest.a(k());
        return a(respondToAuthChallengeRequest, authenticationHandler, z);
    }

    protected CognitoUserSession d() {
        synchronized (m) {
            if (this.g == null) {
                throw new CognitoNotAuthorizedException("User-ID is null");
            }
            if (this.l != null && this.l.e()) {
                return this.l;
            }
            CognitoUserSession cognitoUserSessionJ = j();
            if (cognitoUserSessionJ.e()) {
                this.l = cognitoUserSessionJ;
                return this.l;
            }
            if (cognitoUserSessionJ.c() != null) {
                try {
                    try {
                        this.l = f(cognitoUserSessionJ);
                        e(this.l);
                        return this.l;
                    } catch (Exception e) {
                        throw new CognitoInternalErrorException("Failed to authenticate user", e);
                    }
                } catch (NotAuthorizedException e2) {
                    i();
                    throw new CognitoNotAuthorizedException("User is not authenticated", e2);
                }
            }
            throw new CognitoNotAuthorizedException("User is not authenticated");
        }
    }

    public void a(final String str, final String str2, final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.9
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.a(str, str2, this.d());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.9.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(String str, String str2, GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(str, str2, d());
            genericHandler.a();
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            ChangePasswordRequest changePasswordRequest = new ChangePasswordRequest();
            changePasswordRequest.a(str);
            changePasswordRequest.c(str2);
            changePasswordRequest.e(cognitoUserSession.b().a());
            this.d.a(changePasswordRequest);
            return;
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    public void a(final GetDetailsHandler getDetailsHandler) {
        if (getDetailsHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.10
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    final CognitoUserDetails cognitoUserDetailsA = CognitoUser.this.a(this.d());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            getDetailsHandler.a(cognitoUserDetailsA);
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.10.2
                        @Override // java.lang.Runnable
                        public void run() {
                            getDetailsHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(GetDetailsHandler getDetailsHandler) {
        if (getDetailsHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            getDetailsHandler.a(a(d()));
        } catch (Exception e) {
            getDetailsHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CognitoUserDetails a(CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            GetUserRequest getUserRequest = new GetUserRequest();
            getUserRequest.a(cognitoUserSession.b().a());
            GetUserResult getUserResultA = this.d.a(getUserRequest);
            return new CognitoUserDetails(new CognitoUserAttributes(getUserResultA.b()), new CognitoUserSettings(getUserResultA.c()));
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    public void a(final String str, final VerificationHandler verificationHandler) {
        if (verificationHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.11
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    final GetUserAttributeVerificationCodeResult getUserAttributeVerificationCodeResultA = CognitoUser.this.a(str, this.d());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            verificationHandler.a(new CognitoUserCodeDeliveryDetails(getUserAttributeVerificationCodeResultA.a()));
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.11.2
                        @Override // java.lang.Runnable
                        public void run() {
                            verificationHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(String str, VerificationHandler verificationHandler) {
        if (verificationHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            verificationHandler.a(new CognitoUserCodeDeliveryDetails(a(str, d()).a()));
        } catch (Exception e) {
            verificationHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GetUserAttributeVerificationCodeResult a(String str, CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            GetUserAttributeVerificationCodeRequest getUserAttributeVerificationCodeRequest = new GetUserAttributeVerificationCodeRequest();
            getUserAttributeVerificationCodeRequest.a(cognitoUserSession.b().a());
            getUserAttributeVerificationCodeRequest.c(str);
            return this.d.a(getUserAttributeVerificationCodeRequest);
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    public void c(final String str, final String str2, final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.12
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.b(str, str2, this.d());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.12.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void d(String str, String str2, GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            b(str, str2, d());
            genericHandler.a();
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VerifyUserAttributeResult b(String str, String str2, CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            VerifyUserAttributeRequest verifyUserAttributeRequest = new VerifyUserAttributeRequest();
            verifyUserAttributeRequest.c(str);
            verifyUserAttributeRequest.a(cognitoUserSession.b().a());
            verifyUserAttributeRequest.e(str2);
            return this.d.a(verifyUserAttributeRequest);
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    public void a(final String str, final RegisterMfaHandler registerMfaHandler) {
        if (registerMfaHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.13
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                AssociateSoftwareTokenResult associateSoftwareTokenResultB;
                boolean z;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUserSession cognitoUserSessionD = this.d();
                    if (!StringUtils.a((CharSequence) str)) {
                        associateSoftwareTokenResultB = CognitoUser.this.a(str);
                        z = true;
                    } else {
                        associateSoftwareTokenResultB = CognitoUser.this.b(cognitoUserSessionD);
                        z = false;
                    }
                    final String strB = associateSoftwareTokenResultB.b();
                    final HashMap map = new HashMap();
                    map.put("type", CognitoServiceConstants.h);
                    map.put("secretKey", associateSoftwareTokenResultB.a());
                    if (z) {
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.13.1
                            @Override // java.lang.Runnable
                            public void run() {
                                registerMfaHandler.a(new VerifyMfaContinuation(CognitoUser.this.c, CognitoUser.this.e, this, registerMfaHandler, map, true, strB, true));
                            }
                        };
                    } else {
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.13.2
                            @Override // java.lang.Runnable
                            public void run() {
                                registerMfaHandler.a(new VerifyMfaContinuation(CognitoUser.this.c, CognitoUser.this.e, this, registerMfaHandler, map, false, strB, true));
                            }
                        };
                    }
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.13.3
                        @Override // java.lang.Runnable
                        public void run() {
                            registerMfaHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(String str, RegisterMfaHandler registerMfaHandler) {
        AssociateSoftwareTokenResult associateSoftwareTokenResultB;
        boolean z;
        if (registerMfaHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            CognitoUserSession cognitoUserSessionD = d();
            if (!StringUtils.a((CharSequence) str)) {
                associateSoftwareTokenResultB = a(str);
                z = true;
            } else {
                associateSoftwareTokenResultB = b(cognitoUserSessionD);
                z = false;
            }
            String strB = associateSoftwareTokenResultB.b();
            HashMap map = new HashMap();
            map.put("type", CognitoServiceConstants.h);
            map.put("secretKey", associateSoftwareTokenResultB.a());
            registerMfaHandler.a(new VerifyMfaContinuation(this.c, this.e, this, registerMfaHandler, map, z, strB, false));
        } catch (Exception e) {
            registerMfaHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AssociateSoftwareTokenResult b(CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            AssociateSoftwareTokenRequest associateSoftwareTokenRequest = new AssociateSoftwareTokenRequest();
            associateSoftwareTokenRequest.a(cognitoUserSession.b().a());
            return a(associateSoftwareTokenRequest);
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AssociateSoftwareTokenResult a(String str) {
        if (str != null) {
            AssociateSoftwareTokenRequest associateSoftwareTokenRequest = new AssociateSoftwareTokenRequest();
            associateSoftwareTokenRequest.c(str);
            return a(associateSoftwareTokenRequest);
        }
        throw new CognitoNotAuthorizedException("session token is invalid");
    }

    private AssociateSoftwareTokenResult a(AssociateSoftwareTokenRequest associateSoftwareTokenRequest) {
        return this.d.a(associateSoftwareTokenRequest);
    }

    public void a(final String str, final String str2, final String str3, final RegisterMfaHandler registerMfaHandler) {
        if (registerMfaHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.14
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                VerifySoftwareTokenResult verifySoftwareTokenResultA;
                boolean z;
                final String strB;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUserSession cognitoUserSessionD = this.d();
                    if (!StringUtils.a((CharSequence) str)) {
                        verifySoftwareTokenResultA = CognitoUser.this.a(str, str2, str3);
                        z = true;
                    } else {
                        verifySoftwareTokenResultA = CognitoUser.this.a(cognitoUserSessionD, str2, str3);
                        z = false;
                    }
                    strB = verifySoftwareTokenResultA.b();
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.14.3
                        @Override // java.lang.Runnable
                        public void run() {
                            registerMfaHandler.a(e);
                        }
                    };
                }
                if (VerifySoftwareTokenResponseType.ERROR.equals(verifySoftwareTokenResultA.a())) {
                    throw new CognitoInternalErrorException("verification failed");
                }
                if (z) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.14.1
                        @Override // java.lang.Runnable
                        public void run() {
                            registerMfaHandler.a(strB);
                        }
                    };
                } else {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.14.2
                        @Override // java.lang.Runnable
                        public void run() {
                            registerMfaHandler.a((String) null);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(String str, String str2, String str3, RegisterMfaHandler registerMfaHandler) {
        VerifySoftwareTokenResult verifySoftwareTokenResultA;
        boolean z;
        if (registerMfaHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            CognitoUserSession cognitoUserSessionD = d();
            if (!StringUtils.a((CharSequence) str)) {
                verifySoftwareTokenResultA = a(str, str2, str3);
                z = true;
            } else {
                verifySoftwareTokenResultA = a(cognitoUserSessionD, str2, str3);
                z = false;
            }
            String strB = verifySoftwareTokenResultA.b();
            if (VerifySoftwareTokenResponseType.ERROR.equals(verifySoftwareTokenResultA.a())) {
                throw new CognitoInternalErrorException("verification failed");
            }
            if (z) {
                registerMfaHandler.a(strB);
            } else {
                registerMfaHandler.a((String) null);
            }
        } catch (Exception e) {
            registerMfaHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VerifySoftwareTokenResult a(CognitoUserSession cognitoUserSession, String str, String str2) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            VerifySoftwareTokenRequest verifySoftwareTokenRequest = new VerifySoftwareTokenRequest();
            verifySoftwareTokenRequest.a(cognitoUserSession.b().a());
            verifySoftwareTokenRequest.e(str);
            verifySoftwareTokenRequest.g(str2);
            return a(verifySoftwareTokenRequest);
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VerifySoftwareTokenResult a(String str, String str2, String str3) {
        if (str != null) {
            VerifySoftwareTokenRequest verifySoftwareTokenRequest = new VerifySoftwareTokenRequest();
            verifySoftwareTokenRequest.c(str);
            verifySoftwareTokenRequest.e(str2);
            verifySoftwareTokenRequest.g(str3);
            return a(verifySoftwareTokenRequest);
        }
        throw new CognitoNotAuthorizedException("session token is invalid");
    }

    private VerifySoftwareTokenResult a(VerifySoftwareTokenRequest verifySoftwareTokenRequest) {
        return this.d.a(verifySoftwareTokenRequest);
    }

    public void a(final CognitoUserAttributes cognitoUserAttributes, final UpdateAttributesHandler updateAttributesHandler) {
        if (updateAttributesHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.15
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    UpdateUserAttributesResult updateUserAttributesResultA = CognitoUser.this.a(cognitoUserAttributes, this.d());
                    final ArrayList arrayList = new ArrayList();
                    if (updateUserAttributesResultA.a() != null) {
                        Iterator<CodeDeliveryDetailsType> it = updateUserAttributesResultA.a().iterator();
                        while (it.hasNext()) {
                            arrayList.add(new CognitoUserCodeDeliveryDetails(it.next()));
                        }
                    }
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.15.1
                        @Override // java.lang.Runnable
                        public void run() {
                            updateAttributesHandler.a(arrayList);
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.15.2
                        @Override // java.lang.Runnable
                        public void run() {
                            updateAttributesHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(CognitoUserAttributes cognitoUserAttributes, UpdateAttributesHandler updateAttributesHandler) {
        if (updateAttributesHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            UpdateUserAttributesResult updateUserAttributesResultA = a(cognitoUserAttributes, d());
            ArrayList arrayList = new ArrayList();
            if (updateUserAttributesResultA.a() != null) {
                Iterator<CodeDeliveryDetailsType> it = updateUserAttributesResultA.a().iterator();
                while (it.hasNext()) {
                    arrayList.add(new CognitoUserCodeDeliveryDetails(it.next()));
                }
            }
            updateAttributesHandler.a(arrayList);
        } catch (Exception e) {
            updateAttributesHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UpdateUserAttributesResult a(CognitoUserAttributes cognitoUserAttributes, CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            UpdateUserAttributesRequest updateUserAttributesRequest = new UpdateUserAttributesRequest();
            updateUserAttributesRequest.a(cognitoUserSession.b().a());
            updateUserAttributesRequest.a(cognitoUserAttributes.b());
            return this.d.a(updateUserAttributesRequest);
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    public void a(final List<String> list, final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.16
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.a((List<String>) list, this.d());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.16.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.16.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(List<String> list, GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(list, d());
            genericHandler.a();
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<String> list, CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession == null) {
            throw new CognitoNotAuthorizedException("user is not authenticated");
        }
        if (!cognitoUserSession.d()) {
            throw new CognitoNotAuthorizedException("user is not authenticated");
        }
        if (list != null && list.size() >= 1) {
            DeleteUserAttributesRequest deleteUserAttributesRequest = new DeleteUserAttributesRequest();
            deleteUserAttributesRequest.a(cognitoUserSession.b().a());
            deleteUserAttributesRequest.a(list);
            this.d.a(deleteUserAttributesRequest);
        }
    }

    public void e() {
        this.l = null;
        i();
    }

    public void a(final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.17
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.c(this.d());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.17.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CognitoUser.this.e();
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.17.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            c(d());
            e();
            genericHandler.a();
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession == null) {
            throw new CognitoNotAuthorizedException("user is not authenticated");
        }
        if (!cognitoUserSession.d()) {
            throw new CognitoNotAuthorizedException("user is not authenticated");
        }
        GlobalSignOutRequest globalSignOutRequest = new GlobalSignOutRequest();
        globalSignOutRequest.a(d().b().a());
        this.d.a(globalSignOutRequest);
    }

    public void c(final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.18
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.d(this.d());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.18.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.18.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void d(GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            d(d());
            genericHandler.a();
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession == null) {
            throw new CognitoNotAuthorizedException("user is not authenticated");
        }
        if (!cognitoUserSession.d()) {
            throw new CognitoNotAuthorizedException("user is not authenticated");
        }
        DeleteUserRequest deleteUserRequest = new DeleteUserRequest();
        deleteUserRequest.a(cognitoUserSession.b().a());
        this.d.a(deleteUserRequest);
    }

    public void a(final CognitoUserSettings cognitoUserSettings, final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        final CognitoUserSession cognitoUserSessionD = d();
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.19
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.a(cognitoUserSettings, cognitoUserSessionD);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.19.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.19.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(CognitoUserSettings cognitoUserSettings, GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(cognitoUserSettings, d());
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CognitoUserSettings cognitoUserSettings, CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession == null || !cognitoUserSession.d()) {
            throw new CognitoNotAuthorizedException("user is not authenticated");
        }
        if (cognitoUserSettings == null) {
            throw new CognitoParameterInvalidException("user attributes is null");
        }
        SetUserSettingsRequest setUserSettingsRequest = new SetUserSettingsRequest();
        setUserSettingsRequest.a(cognitoUserSession.b().a());
        setUserSettingsRequest.a(cognitoUserSettings.a());
        this.d.a(setUserSettingsRequest);
    }

    public void c(final List<CognitoMfaSettings> list, final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        final CognitoUserSession cognitoUserSessionD = d();
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.20
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    CognitoUser.this.b((List<CognitoMfaSettings>) list, cognitoUserSessionD);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.20.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.20.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<CognitoMfaSettings> list, CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            if (list == null || list.size() < 1) {
                throw new CognitoParameterInvalidException("mfa settings are empty");
            }
            SetUserMFAPreferenceRequest setUserMFAPreferenceRequest = new SetUserMFAPreferenceRequest();
            setUserMFAPreferenceRequest.a(cognitoUserSession.b().a());
            for (CognitoMfaSettings cognitoMfaSettings : list) {
                if ("SMS_MFA".equals(cognitoMfaSettings.c())) {
                    SMSMfaSettingsType sMSMfaSettingsType = new SMSMfaSettingsType();
                    sMSMfaSettingsType.a(Boolean.valueOf(cognitoMfaSettings.a()));
                    sMSMfaSettingsType.c(Boolean.valueOf(cognitoMfaSettings.b()));
                    setUserMFAPreferenceRequest.a(sMSMfaSettingsType);
                }
                if (CognitoMfaSettings.b.equals(cognitoMfaSettings.c())) {
                    SoftwareTokenMfaSettingsType softwareTokenMfaSettingsType = new SoftwareTokenMfaSettingsType();
                    softwareTokenMfaSettingsType.a(Boolean.valueOf(cognitoMfaSettings.a()));
                    softwareTokenMfaSettingsType.c(Boolean.valueOf(cognitoMfaSettings.b()));
                    setUserMFAPreferenceRequest.a(softwareTokenMfaSettingsType);
                }
            }
            this.d.a(setUserMFAPreferenceRequest);
            return;
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    private void i() {
        try {
            String str = String.format("CognitoIdentityProvider.%s.%s.idToken", this.e, this.g);
            String str2 = String.format("CognitoIdentityProvider.%s.%s.accessToken", this.e, this.g);
            String str3 = String.format("CognitoIdentityProvider.%s.%s.refreshToken", this.e, this.g);
            this.j.a.c(str);
            this.j.a.c(str2);
            this.j.a.c(str3);
        } catch (Exception e) {
            a.e("Error while deleting from SharedPreferences", e);
        }
    }

    private CognitoUserSession j() {
        CognitoUserSession cognitoUserSession = new CognitoUserSession(null, null, null);
        try {
            String str = "CognitoIdentityProvider." + this.e + InstructionFileId.c + this.g + ".idToken";
            return this.j.a.a(str) ? new CognitoUserSession(new CognitoIdToken(this.j.a.b(str)), new CognitoAccessToken(this.j.a.b("CognitoIdentityProvider." + this.e + InstructionFileId.c + this.g + ".accessToken")), new CognitoRefreshToken(this.j.a.b("CognitoIdentityProvider." + this.e + InstructionFileId.c + this.g + ".refreshToken"))) : cognitoUserSession;
        } catch (Exception e) {
            a.e("Error while reading SharedPreferences", e);
            return cognitoUserSession;
        }
    }

    private void e(CognitoUserSession cognitoUserSession) {
        try {
            this.j.b();
            String str = "CognitoIdentityProvider." + this.e + InstructionFileId.c + this.g + ".idToken";
            String str2 = "CognitoIdentityProvider." + this.e + InstructionFileId.c + this.g + ".accessToken";
            String str3 = "CognitoIdentityProvider." + this.e + InstructionFileId.c + this.g + ".refreshToken";
            String str4 = "CognitoIdentityProvider." + this.e + ".LastAuthUser";
            this.j.a.a(str, cognitoUserSession.a().a());
            this.j.a.a(str2, cognitoUserSession.b().a());
            this.j.a.a(str3, cognitoUserSession.c().a_());
            this.j.a.a(str4, this.g);
        } catch (Exception e) {
            a.e("Error while writing to SharedPreferences.", e);
        }
    }

    private CognitoUserSession a(AuthenticationResultType authenticationResultType) {
        return a(authenticationResultType, (CognitoRefreshToken) null);
    }

    private CognitoUserSession a(AuthenticationResultType authenticationResultType, CognitoRefreshToken cognitoRefreshToken) {
        CognitoIdToken cognitoIdToken = new CognitoIdToken(authenticationResultType.e());
        CognitoAccessToken cognitoAccessToken = new CognitoAccessToken(authenticationResultType.a());
        if (cognitoRefreshToken == null) {
            cognitoRefreshToken = new CognitoRefreshToken(authenticationResultType.d());
        }
        return new CognitoUserSession(cognitoIdToken, cognitoAccessToken, cognitoRefreshToken);
    }

    private CognitoUserSession f(CognitoUserSession cognitoUserSession) {
        InitiateAuthResult initiateAuthResultA = this.d.a(g(cognitoUserSession));
        if (initiateAuthResultA.e() == null) {
            throw new CognitoNotAuthorizedException("user is not authenticated");
        }
        return a(initiateAuthResultA.e(), cognitoUserSession.c());
    }

    public Runnable a(RespondToAuthChallengeRequest respondToAuthChallengeRequest, final AuthenticationHandler authenticationHandler, final boolean z) {
        if (respondToAuthChallengeRequest != null) {
            try {
                if (respondToAuthChallengeRequest.k() != null) {
                    respondToAuthChallengeRequest.k().put("DEVICE_KEY", this.i);
                }
            } catch (ResourceNotFoundException e) {
                if (e.getMessage().contains("Device")) {
                    CognitoDeviceHelper.d(this.h, this.j.b(), this.c);
                    return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.21
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(new AuthenticationContinuation(this, CognitoUser.this.c, z, authenticationHandler), this.a());
                        }
                    };
                }
                return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.22
                    @Override // java.lang.Runnable
                    public void run() {
                        authenticationHandler.a(e);
                    }
                };
            } catch (Exception e2) {
                return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.23
                    @Override // java.lang.Runnable
                    public void run() {
                        authenticationHandler.a(e2);
                    }
                };
            }
        }
        return a(this.d.a(respondToAuthChallengeRequest), (AuthenticationDetails) null, authenticationHandler, z);
    }

    private Runnable c(final AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, final boolean z) {
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.24
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                AuthenticationHelper authenticationHelper = new AuthenticationHelper(CognitoUser.this.j.b());
                try {
                    InitiateAuthResult initiateAuthResultA = CognitoUser.this.d.a(CognitoUser.this.a(authenticationDetails, authenticationHelper));
                    CognitoUser.this.a(initiateAuthResultA.c());
                    if (!CognitoServiceConstants.i.equals(initiateAuthResultA.a())) {
                        CognitoUser.this.a(initiateAuthResultA, authenticationDetails, authenticationHandler, z).run();
                    } else {
                        if (authenticationDetails.a() != null) {
                            CognitoUser.this.a(CognitoUser.this.a(initiateAuthResultA.c(), authenticationDetails.a(), initiateAuthResultA.a(), initiateAuthResultA.b(), authenticationHelper), authenticationHandler, z).run();
                            return;
                        }
                        throw new IllegalStateException("Failed to find password in authentication details to response to PASSWORD_VERIFIER challenge");
                    }
                } catch (ResourceNotFoundException e) {
                    CognitoUser cognitoUser = CognitoUser.this;
                    if (e.getMessage().contains("Device")) {
                        CognitoDeviceHelper.d(CognitoUser.this.h, CognitoUser.this.j.b(), CognitoUser.this.c);
                        authenticationHandler.a(new AuthenticationContinuation(cognitoUser, CognitoUser.this.c, z, authenticationHandler), cognitoUser.a());
                        return;
                    }
                    authenticationHandler.a(e);
                } catch (Exception e2) {
                    authenticationHandler.a(e2);
                }
            }
        };
    }

    private Runnable d(final AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, final boolean z) {
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.25
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                try {
                    AuthenticationHelper authenticationHelper = new AuthenticationHelper(CognitoUser.this.b());
                    InitiateAuthResult initiateAuthResultA = CognitoUser.this.d.a(CognitoUser.this.b(authenticationDetails, authenticationHelper));
                    CognitoUser.this.a(initiateAuthResultA.c());
                    if (!CognitoServiceConstants.i.equals(initiateAuthResultA.a())) {
                        CognitoUser.this.a(initiateAuthResultA, authenticationDetails, authenticationHandler, z).run();
                    } else {
                        if (authenticationDetails.a() != null) {
                            CognitoUser.this.a(CognitoUser.this.a(initiateAuthResultA.c(), authenticationDetails.a(), initiateAuthResultA.a(), initiateAuthResultA.b(), authenticationHelper), authenticationHandler, z).run();
                            return;
                        }
                        throw new IllegalStateException("Failed to find password in authentication details to response to PASSWORD_VERIFIER challenge");
                    }
                } catch (Exception e) {
                    authenticationHandler.a(e);
                }
            }
        };
    }

    private Runnable a(RespondToAuthChallengeResult respondToAuthChallengeResult, AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, boolean z) {
        Runnable runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.26
            @Override // java.lang.Runnable
            public void run() {
                authenticationHandler.a(new CognitoInternalErrorException("Authentication failed due to an internal error"));
            }
        };
        if (respondToAuthChallengeResult == null) {
            return runnable;
        }
        a(respondToAuthChallengeResult.c());
        String strA = respondToAuthChallengeResult.a();
        if (strA == null) {
            final CognitoUserSession cognitoUserSessionA = a(respondToAuthChallengeResult.e());
            e(cognitoUserSessionA);
            NewDeviceMetadataType newDeviceMetadataTypeF = respondToAuthChallengeResult.e().f();
            if (newDeviceMetadataTypeF == null) {
                return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.27
                    @Override // java.lang.Runnable
                    public void run() {
                        authenticationHandler.a(cognitoUserSessionA, (CognitoDevice) null);
                    }
                };
            }
            ConfirmDeviceResult confirmDeviceResultA = a(newDeviceMetadataTypeF);
            if (confirmDeviceResultA != null && confirmDeviceResultA.a().booleanValue()) {
                final CognitoDevice cognitoDevice = new CognitoDevice(newDeviceMetadataTypeF.a(), null, null, null, null, this, this.c);
                return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.28
                    @Override // java.lang.Runnable
                    public void run() {
                        authenticationHandler.a(cognitoUserSessionA, cognitoDevice);
                    }
                };
            }
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.29
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(cognitoUserSessionA, (CognitoDevice) null);
                }
            };
        }
        if (CognitoServiceConstants.i.equals(strA)) {
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.30
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(new CognitoInternalErrorException("Authentication failed due to an internal error: PASSWORD_VERIFIER challenge encountered not at the start of authentication flow"));
                }
            };
        }
        if ("SMS_MFA".equals(strA) || CognitoServiceConstants.h.equals(strA)) {
            final MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation = new MultiFactorAuthenticationContinuation(this, this.c, respondToAuthChallengeResult, z, authenticationHandler);
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.31
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(multiFactorAuthenticationContinuation);
                }
            };
        }
        if (CognitoServiceConstants.f.equals(strA)) {
            final ChooseMfaContinuation chooseMfaContinuation = new ChooseMfaContinuation(this, this.c, this.h, this.e, this.k, respondToAuthChallengeResult, z, authenticationHandler);
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.32
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(chooseMfaContinuation);
                }
            };
        }
        if (CognitoServiceConstants.e.equals(strA)) {
            final RegisterMfaContinuation registerMfaContinuation = new RegisterMfaContinuation(this, this.c, this.h, this.e, this.k, respondToAuthChallengeResult, z, authenticationHandler);
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.33
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(registerMfaContinuation);
                }
            };
        }
        if (CognitoServiceConstants.k.equals(strA)) {
            return a(respondToAuthChallengeResult, authenticationHandler, z);
        }
        if (CognitoServiceConstants.m.equals(strA)) {
            final NewPasswordContinuation newPasswordContinuation = new NewPasswordContinuation(this, this.c, this.h, this.e, this.k, respondToAuthChallengeResult, z, authenticationHandler);
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.34
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(newPasswordContinuation);
                }
            };
        }
        final ChallengeContinuation challengeContinuation = new ChallengeContinuation(this, this.c, this.h, this.e, this.k, respondToAuthChallengeResult, z, authenticationHandler);
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.35
            @Override // java.lang.Runnable
            public void run() {
                authenticationHandler.a(challengeContinuation);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable a(InitiateAuthResult initiateAuthResult, AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, boolean z) {
        try {
            RespondToAuthChallengeResult respondToAuthChallengeResult = new RespondToAuthChallengeResult();
            respondToAuthChallengeResult.a(initiateAuthResult.a());
            respondToAuthChallengeResult.c(initiateAuthResult.b());
            respondToAuthChallengeResult.a(initiateAuthResult.e());
            respondToAuthChallengeResult.a(initiateAuthResult.c());
            return a(respondToAuthChallengeResult, authenticationDetails, authenticationHandler, z);
        } catch (Exception e) {
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.36
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(e);
                }
            };
        }
    }

    private Runnable e(final AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, final boolean z) {
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.37
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InitiateAuthResult initiateAuthResultA = CognitoUser.this.d.a(CognitoUser.this.a(authenticationDetails));
                    CognitoUser.this.h = initiateAuthResultA.c().get(CognitoServiceConstants.F);
                    CognitoUser.this.a(initiateAuthResultA, authenticationDetails, authenticationHandler, z).run();
                } catch (Exception e) {
                    authenticationHandler.a(e);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InitiateAuthRequest a(AuthenticationDetails authenticationDetails) {
        if (StringUtils.a((CharSequence) authenticationDetails.b()) || StringUtils.a((CharSequence) authenticationDetails.a())) {
            throw new CognitoNotAuthorizedException("User name and password are required");
        }
        InitiateAuthRequest initiateAuthRequest = new InitiateAuthRequest();
        initiateAuthRequest.a(CognitoServiceConstants.d);
        initiateAuthRequest.c(this.e);
        initiateAuthRequest.a("USERNAME", authenticationDetails.b());
        initiateAuthRequest.a("PASSWORD", authenticationDetails.a());
        initiateAuthRequest.a("SECRET_HASH", CognitoSecretHash.a(this.g, this.e, this.f));
        if (authenticationDetails.c() != null && authenticationDetails.c().size() > 0) {
            HashMap map = new HashMap();
            for (AttributeType attributeType : authenticationDetails.c()) {
                map.put(attributeType.a(), attributeType.b());
            }
            initiateAuthRequest.c(map);
        }
        return initiateAuthRequest;
    }

    private Runnable a(RespondToAuthChallengeResult respondToAuthChallengeResult, final AuthenticationHandler authenticationHandler, final boolean z) throws Throwable {
        String strB = CognitoDeviceHelper.b(this.h, this.j.b(), this.c);
        String strC = CognitoDeviceHelper.c(this.h, this.j.b(), this.c);
        AuthenticationHelper authenticationHelper = new AuthenticationHelper(strC);
        try {
            RespondToAuthChallengeResult respondToAuthChallengeResultA = this.d.a(a(authenticationHelper));
            if (CognitoServiceConstants.l.equals(respondToAuthChallengeResultA.a())) {
                return a(this.d.a(a(respondToAuthChallengeResultA, strB, strC, authenticationHelper)), (AuthenticationDetails) null, authenticationHandler, z);
            }
            return a(respondToAuthChallengeResultA, (AuthenticationDetails) null, authenticationHandler, z);
        } catch (NotAuthorizedException unused) {
            CognitoDeviceHelper.d(this.h, this.j.b(), this.c);
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.38
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(new AuthenticationContinuation(this, CognitoUser.this.c, z, authenticationHandler), this.a());
                }
            };
        } catch (Exception e) {
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.39
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.a(e);
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InitiateAuthRequest a(AuthenticationDetails authenticationDetails, AuthenticationHelper authenticationHelper) {
        this.g = authenticationDetails.b();
        InitiateAuthRequest initiateAuthRequest = new InitiateAuthRequest();
        initiateAuthRequest.a(CognitoServiceConstants.a);
        initiateAuthRequest.c(this.e);
        initiateAuthRequest.a("SECRET_HASH", CognitoSecretHash.a(this.g, this.e, this.f));
        initiateAuthRequest.a("USERNAME", authenticationDetails.b());
        initiateAuthRequest.a("SRP_A", authenticationHelper.b().toString(16));
        if (this.i == null) {
            initiateAuthRequest.a("DEVICE_KEY", CognitoDeviceHelper.a(authenticationDetails.b(), this.j.b(), this.c));
        } else {
            initiateAuthRequest.a("DEVICE_KEY", this.i);
        }
        if (authenticationDetails.c() != null && authenticationDetails.c().size() > 0) {
            HashMap map = new HashMap();
            for (AttributeType attributeType : authenticationDetails.c()) {
                map.put(attributeType.a(), attributeType.b());
            }
            initiateAuthRequest.c(map);
        }
        String strE = this.j.e();
        if (strE != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.a(strE);
            initiateAuthRequest.a(analyticsMetadataType);
        }
        initiateAuthRequest.a(k());
        return initiateAuthRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InitiateAuthRequest b(AuthenticationDetails authenticationDetails, AuthenticationHelper authenticationHelper) {
        InitiateAuthRequest initiateAuthRequest = new InitiateAuthRequest();
        initiateAuthRequest.a(CognitoServiceConstants.c);
        initiateAuthRequest.c(this.e);
        Map<String, String> mapE = authenticationDetails.e();
        if (this.f != null && mapE.get("SECRET_HASH") == null) {
            this.k = CognitoSecretHash.a(authenticationDetails.b(), this.e, this.f);
            mapE.put("SECRET_HASH", this.k);
        }
        if ("SRP_A".equals(authenticationDetails.f())) {
            mapE.put("SRP_A", authenticationHelper.b().toString(16));
        }
        initiateAuthRequest.a(authenticationDetails.e());
        if (authenticationDetails.c() != null && authenticationDetails.c().size() > 0) {
            HashMap map = new HashMap();
            for (AttributeType attributeType : authenticationDetails.c()) {
                map.put(attributeType.a(), attributeType.b());
            }
            initiateAuthRequest.c(map);
        }
        initiateAuthRequest.a(k());
        return initiateAuthRequest;
    }

    private RespondToAuthChallengeRequest a(AuthenticationHelper authenticationHelper) {
        RespondToAuthChallengeRequest respondToAuthChallengeRequest = new RespondToAuthChallengeRequest();
        respondToAuthChallengeRequest.a(this.e);
        respondToAuthChallengeRequest.c(CognitoServiceConstants.k);
        respondToAuthChallengeRequest.a("USERNAME", this.h);
        respondToAuthChallengeRequest.a("SRP_A", authenticationHelper.b().toString(16));
        respondToAuthChallengeRequest.a("DEVICE_KEY", this.i);
        respondToAuthChallengeRequest.a("SECRET_HASH", this.k);
        respondToAuthChallengeRequest.a(k());
        return respondToAuthChallengeRequest;
    }

    private InitiateAuthRequest g(CognitoUserSession cognitoUserSession) {
        InitiateAuthRequest initiateAuthRequest = new InitiateAuthRequest();
        initiateAuthRequest.a(CognitoServiceConstants.o, cognitoUserSession.c().a_());
        if (this.i == null) {
            if (this.h != null) {
                this.i = CognitoDeviceHelper.a(this.h, this.j.b(), this.c);
            } else {
                this.i = CognitoDeviceHelper.a(cognitoUserSession.f(), this.j.b(), this.c);
            }
        }
        initiateAuthRequest.a("DEVICE_KEY", this.i);
        initiateAuthRequest.a("SECRET_HASH", this.f);
        initiateAuthRequest.c(this.e);
        initiateAuthRequest.a(CognitoServiceConstants.b);
        String strE = this.j.e();
        if (strE != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.a(strE);
            initiateAuthRequest.a(analyticsMetadataType);
        }
        initiateAuthRequest.a(k());
        return initiateAuthRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RespondToAuthChallengeRequest a(Map<String, String> map, String str, String str2, String str3, AuthenticationHelper authenticationHelper) throws Throwable {
        String str4 = map.get("USERNAME");
        String str5 = map.get(CognitoServiceConstants.F);
        String str6 = map.get(CognitoServiceConstants.x);
        String str7 = map.get(CognitoServiceConstants.w);
        String str8 = map.get(CognitoServiceConstants.y);
        this.h = str4;
        this.i = CognitoDeviceHelper.a(this.h, this.j.b(), this.c);
        this.k = CognitoSecretHash.a(this.h, this.e, this.f);
        BigInteger bigInteger = new BigInteger(str6, 16);
        if (bigInteger.mod(AuthenticationHelper.e).equals(BigInteger.ZERO)) {
            throw new CognitoInternalErrorException("SRP error, B cannot be zero");
        }
        byte[] bArrA = authenticationHelper.a(str5, str, bigInteger, new BigInteger(str7, 16));
        Date date = new Date();
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(bArrA, "HmacSHA256"));
            mac.update(this.j.b().split(d.ROLL_OVER_FILE_NAME_SEPARATOR, 2)[1].getBytes(StringUtils.a));
            mac.update(str5.getBytes(StringUtils.a));
            mac.update(Base64.decode(str8));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM d HH:mm:ss z yyyy", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String str9 = simpleDateFormat.format(date);
            byte[] bArrDoFinal = mac.doFinal(str9.getBytes(StringUtils.a));
            HashMap map2 = new HashMap();
            map2.put(CognitoServiceConstants.M, str8);
            map2.put(CognitoServiceConstants.N, new String(Base64.encode(bArrDoFinal), StringUtils.a));
            map2.put(CognitoServiceConstants.L, str9);
            map2.put("USERNAME", this.h);
            map2.put("DEVICE_KEY", this.i);
            map2.put("SECRET_HASH", this.k);
            RespondToAuthChallengeRequest respondToAuthChallengeRequest = new RespondToAuthChallengeRequest();
            respondToAuthChallengeRequest.c(str2);
            respondToAuthChallengeRequest.a(this.e);
            respondToAuthChallengeRequest.e(str3);
            respondToAuthChallengeRequest.a(map2);
            String strE = this.j.e();
            if (strE != null) {
                AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
                analyticsMetadataType.a(strE);
                respondToAuthChallengeRequest.a(analyticsMetadataType);
            }
            respondToAuthChallengeRequest.a(k());
            return respondToAuthChallengeRequest;
        } catch (Exception e) {
            throw new CognitoInternalErrorException("SRP error", e);
        }
    }

    public RespondToAuthChallengeRequest a(RespondToAuthChallengeResult respondToAuthChallengeResult, String str, String str2, AuthenticationHelper authenticationHelper) throws Throwable {
        this.h = respondToAuthChallengeResult.c().get("USERNAME");
        BigInteger bigInteger = new BigInteger(respondToAuthChallengeResult.c().get(CognitoServiceConstants.x), 16);
        if (bigInteger.mod(AuthenticationHelper.e).equals(BigInteger.ZERO)) {
            throw new CognitoInternalErrorException("SRP error, B cannot be zero");
        }
        byte[] bArrA = authenticationHelper.a(this.i, str, bigInteger, new BigInteger(respondToAuthChallengeResult.c().get(CognitoServiceConstants.w), 16));
        Date date = new Date();
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(bArrA, "HmacSHA256"));
            mac.update(str2.getBytes(StringUtils.a));
            mac.update(this.i.getBytes(StringUtils.a));
            mac.update(Base64.decode(respondToAuthChallengeResult.c().get(CognitoServiceConstants.y)));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM d HH:mm:ss z yyyy", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String str3 = simpleDateFormat.format(date);
            byte[] bArrDoFinal = mac.doFinal(str3.getBytes(StringUtils.a));
            this.k = CognitoSecretHash.a(this.h, this.e, this.f);
            HashMap map = new HashMap();
            map.put(CognitoServiceConstants.M, respondToAuthChallengeResult.c().get(CognitoServiceConstants.y));
            map.put(CognitoServiceConstants.N, new String(Base64.encode(bArrDoFinal), StringUtils.a));
            map.put(CognitoServiceConstants.L, str3);
            map.put("USERNAME", this.h);
            map.put("DEVICE_KEY", this.i);
            map.put("SECRET_HASH", this.k);
            RespondToAuthChallengeRequest respondToAuthChallengeRequest = new RespondToAuthChallengeRequest();
            respondToAuthChallengeRequest.c(respondToAuthChallengeResult.a());
            respondToAuthChallengeRequest.a(this.e);
            respondToAuthChallengeRequest.e(respondToAuthChallengeResult.b());
            respondToAuthChallengeRequest.a(map);
            respondToAuthChallengeRequest.a(k());
            return respondToAuthChallengeRequest;
        } catch (Exception e) {
            throw new CognitoInternalErrorException("SRP error", e);
        }
    }

    public void a(final int i, final String str, final DevicesHandler devicesHandler) {
        if (devicesHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.40
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUser.this.c.getMainLooper());
                try {
                    ListDevicesResult listDevicesResultA = CognitoUser.this.a(this.d(), i, str);
                    final ArrayList arrayList = new ArrayList();
                    Iterator<DeviceType> it = listDevicesResultA.a().iterator();
                    while (it.hasNext()) {
                        arrayList.add(new CognitoDevice(it.next(), this, CognitoUser.this.c));
                    }
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.40.1
                        @Override // java.lang.Runnable
                        public void run() {
                            devicesHandler.a(arrayList);
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.40.2
                        @Override // java.lang.Runnable
                        public void run() {
                            devicesHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(int i, String str, DevicesHandler devicesHandler) {
        if (devicesHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            ListDevicesResult listDevicesResultA = a(d(), i, str);
            ArrayList arrayList = new ArrayList();
            Iterator<DeviceType> it = listDevicesResultA.a().iterator();
            while (it.hasNext()) {
                arrayList.add(new CognitoDevice(it.next(), this, this.c));
            }
            devicesHandler.a(arrayList);
        } catch (Exception e) {
            devicesHandler.a(e);
        }
    }

    public CognitoDevice f() {
        if (this.i == null) {
            if (this.h != null) {
                this.i = CognitoDeviceHelper.a(this.h, this.j.b(), this.c);
            } else if (this.g != null) {
                this.i = CognitoDeviceHelper.a(this.g, this.j.b(), this.c);
                if (this.i == null) {
                    this.i = CognitoDeviceHelper.a(j().f(), this.j.b(), this.c);
                }
            }
        }
        if (this.i != null) {
            return new CognitoDevice(this.i, null, null, null, null, this, this.c);
        }
        return null;
    }

    private ConfirmDeviceResult a(NewDeviceMetadataType newDeviceMetadataType) {
        Map<String, String> mapA = CognitoDeviceHelper.a(newDeviceMetadataType.a(), newDeviceMetadataType.b());
        new ConfirmDeviceResult().a(false);
        try {
            ConfirmDeviceResult confirmDeviceResultA = a(d(), newDeviceMetadataType.a(), mapA.get("verifier"), mapA.get("salt"), CognitoDeviceHelper.a());
            CognitoDeviceHelper.a(this.h, this.j.b(), newDeviceMetadataType.a(), this.c);
            CognitoDeviceHelper.b(this.h, this.j.b(), mapA.get("secret"), this.c);
            CognitoDeviceHelper.c(this.h, this.j.b(), newDeviceMetadataType.b(), this.c);
            return confirmDeviceResultA;
        } catch (Exception e) {
            a.e("Device confirmation failed: ", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ListDevicesResult a(CognitoUserSession cognitoUserSession, int i, String str) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            ListDevicesRequest listDevicesRequest = new ListDevicesRequest();
            if (i < 1) {
                listDevicesRequest.a((Integer) 10);
            } else {
                listDevicesRequest.a(Integer.valueOf(i));
            }
            listDevicesRequest.c(str);
            listDevicesRequest.a(cognitoUserSession.b().a());
            return this.d.a(listDevicesRequest);
        }
        throw new CognitoNotAuthorizedException("User is not authorized");
    }

    private ConfirmDeviceResult a(CognitoUserSession cognitoUserSession, String str, String str2, String str3, String str4) {
        if (cognitoUserSession == null || !cognitoUserSession.d()) {
            throw new CognitoNotAuthorizedException("User is not authorized");
        }
        if (str == null || str4 == null) {
            if (str == null) {
                throw new CognitoParameterInvalidException("Device key is null");
            }
            throw new CognitoParameterInvalidException("Device name is null");
        }
        DeviceSecretVerifierConfigType deviceSecretVerifierConfigType = new DeviceSecretVerifierConfigType();
        deviceSecretVerifierConfigType.a(str2);
        deviceSecretVerifierConfigType.c(str3);
        ConfirmDeviceRequest confirmDeviceRequest = new ConfirmDeviceRequest();
        confirmDeviceRequest.a(cognitoUserSession.b().a());
        confirmDeviceRequest.c(str);
        confirmDeviceRequest.e(str4);
        confirmDeviceRequest.a(deviceSecretVerifierConfigType);
        return this.d.a(confirmDeviceRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, String> map) {
        if (this.h == null && map != null && map.containsKey("USERNAME")) {
            this.h = map.get("USERNAME");
            this.i = CognitoDeviceHelper.a(this.h, this.j.b(), this.c);
            if (this.k == null) {
                this.k = CognitoSecretHash.a(this.h, this.e, this.f);
            }
        }
    }

    private UserContextDataType k() {
        return this.j.b(this.g);
    }

    private static class AuthenticationHelper {
        private static final BigInteger g;
        private static final int h = 1024;
        private static final int i = 16;
        private static final String j = "Caldera Derived Key";
        private static final SecureRandom l;
        private BigInteger a = new BigInteger(1024, l).mod(e);
        private BigInteger b = f.modPow(this.a, e);
        private String c;
        private static final String d = "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF";
        private static final BigInteger e = new BigInteger(d, 16);
        private static final BigInteger f = BigInteger.valueOf(2);
        private static final ThreadLocal<MessageDigest> k = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AuthenticationHelper.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageDigest initialValue() {
                try {
                    return MessageDigest.getInstance(CommonUtils.b);
                } catch (NoSuchAlgorithmException e2) {
                    throw new CognitoInternalErrorException("Exception in authentication", e2);
                }
            }
        };

        public AuthenticationHelper(String str) {
            do {
            } while (this.b.mod(e).equals(BigInteger.ZERO));
            if (str.contains(d.ROLL_OVER_FILE_NAME_SEPARATOR)) {
                this.c = str.split(d.ROLL_OVER_FILE_NAME_SEPARATOR, 2)[1];
            } else {
                this.c = str;
            }
        }

        public BigInteger a() {
            return this.a;
        }

        public BigInteger b() {
            return this.b;
        }

        static {
            try {
                l = SecureRandom.getInstance("SHA1PRNG");
                MessageDigest messageDigest = k.get();
                messageDigest.reset();
                messageDigest.update(e.toByteArray());
                g = new BigInteger(1, messageDigest.digest(f.toByteArray()));
            } catch (NoSuchAlgorithmException e2) {
                throw new CognitoInternalErrorException(e2.getMessage(), e2);
            }
        }

        public byte[] a(String str, String str2, BigInteger bigInteger, BigInteger bigInteger2) throws Throwable {
            MessageDigest messageDigest = k.get();
            messageDigest.reset();
            messageDigest.update(this.b.toByteArray());
            BigInteger bigInteger3 = new BigInteger(1, messageDigest.digest(bigInteger.toByteArray()));
            if (bigInteger3.equals(BigInteger.ZERO)) {
                throw new CognitoInternalErrorException("Hash of A and B cannot be zero");
            }
            messageDigest.reset();
            messageDigest.update(this.c.getBytes(StringUtils.a));
            messageDigest.update(str.getBytes(StringUtils.a));
            messageDigest.update(":".getBytes(StringUtils.a));
            byte[] bArrDigest = messageDigest.digest(str2.getBytes(StringUtils.a));
            messageDigest.reset();
            messageDigest.update(bigInteger2.toByteArray());
            BigInteger bigInteger4 = new BigInteger(1, messageDigest.digest(bArrDigest));
            BigInteger bigIntegerMod = bigInteger.subtract(g.multiply(f.modPow(bigInteger4, e))).modPow(this.a.add(bigInteger3.multiply(bigInteger4)), e).mod(e);
            try {
                Hkdf hkdfA = Hkdf.a("HmacSHA256");
                hkdfA.a(bigIntegerMod.toByteArray(), bigInteger3.toByteArray());
                return hkdfA.a(j, 16);
            } catch (NoSuchAlgorithmException e2) {
                throw new CognitoInternalErrorException(e2.getMessage(), e2);
            }
        }
    }
}
