package com.a.a;

import android.R;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.a.a.b;

/* JADX INFO: compiled from: TapTargetView.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class g extends View {
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;

    @Nullable
    SpannableStringBuilder F;

    @Nullable
    DynamicLayout G;

    @Nullable
    TextPaint H;

    @Nullable
    Paint I;
    Rect J;
    Rect K;
    Path L;
    float M;
    int N;
    int[] O;
    int P;
    float Q;
    int R;
    float S;
    int T;
    int U;
    int V;
    float W;
    final int a;
    float aa;
    int ab;
    int ac;
    Bitmap ad;
    a ae;

    @Nullable
    ViewOutlineProvider af;
    final b.InterfaceC0009b ag;
    final ValueAnimator ah;
    final ValueAnimator ai;
    final ValueAnimator aj;
    private boolean ak;
    private boolean al;
    private boolean am;
    private final ValueAnimator an;
    private ValueAnimator[] ao;
    private final ViewTreeObserver.OnGlobalLayoutListener ap;
    final int b;
    final int c;
    final int d;
    final int e;
    final int f;
    final int g;
    final int h;
    final int i;
    final int j;
    final int k;

    @Nullable
    final ViewGroup l;
    final ViewManager m;
    final e n;
    final Rect o;
    final TextPaint p;
    final TextPaint q;
    final Paint r;
    final Paint s;
    final Paint t;
    final Paint u;
    CharSequence v;

    @Nullable
    StaticLayout w;

    @Nullable
    CharSequence x;

    @Nullable
    StaticLayout y;
    boolean z;

    float a(float f) {
        return f < 0.5f ? f / 0.5f : (1.0f - f) / 0.5f;
    }

    float a(float f, float f2) {
        if (f < f2) {
            return 0.0f;
        }
        return (f - f2) / (1.0f - f2);
    }

    public static g a(Activity activity, e eVar) {
        return a(activity, eVar, (a) null);
    }

    public static g a(Activity activity, e eVar, a aVar) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity is null");
        }
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        g gVar = new g(activity, viewGroup, (ViewGroup) viewGroup.findViewById(R.id.content), eVar, aVar);
        viewGroup.addView(gVar, layoutParams);
        return gVar;
    }

    public static g a(Dialog dialog, e eVar) {
        return a(dialog, eVar, (a) null);
    }

    public static g a(Dialog dialog, e eVar, a aVar) {
        if (dialog == null) {
            throw new IllegalArgumentException("Dialog is null");
        }
        Context context = dialog.getContext();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2;
        layoutParams.format = 1;
        layoutParams.flags = 0;
        layoutParams.gravity = 8388659;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.width = -1;
        layoutParams.height = -1;
        g gVar = new g(context, windowManager, null, eVar, aVar);
        windowManager.addView(gVar, layoutParams);
        return gVar;
    }

    /* JADX INFO: compiled from: TapTargetView.java */
    public static class a {
        public void a(g gVar, boolean z) {
        }

        public void b(g gVar) {
        }

        public void a(g gVar) {
            gVar.b(true);
        }

        public void d(g gVar) {
            a(gVar);
        }

        public void c(g gVar) {
            gVar.b(false);
        }
    }

    public g(final Context context, ViewManager viewManager, @Nullable final ViewGroup viewGroup, final e eVar, @Nullable a aVar) {
        final boolean z;
        final boolean z2;
        super(context);
        this.ak = false;
        this.al = false;
        this.am = true;
        this.ag = new b.InterfaceC0009b() { // from class: com.a.a.g.1
            @Override // com.a.a.b.InterfaceC0009b
            public void a(float f) {
                float f2 = g.this.N * f;
                boolean z3 = f2 > g.this.M;
                if (!z3) {
                    g.this.e();
                }
                float f3 = g.this.n.c * 255.0f;
                g.this.M = f2;
                float f4 = 1.5f * f;
                g.this.P = (int) Math.min(f3, f4 * f3);
                g.this.L.reset();
                g.this.L.addCircle(g.this.O[0], g.this.O[1], g.this.M, Path.Direction.CW);
                g.this.T = (int) Math.min(255.0f, f4 * 255.0f);
                if (z3) {
                    g.this.S = g.this.b * Math.min(1.0f, f4);
                } else {
                    g.this.S = g.this.b * f;
                    g.this.Q *= f;
                }
                g.this.U = (int) (g.this.a(f, 0.7f) * 255.0f);
                if (z3) {
                    g.this.e();
                }
                g.this.a(g.this.J);
            }
        };
        this.ah = new b().b(250L).a(250L).a(new AccelerateDecelerateInterpolator()).a(new b.InterfaceC0009b() { // from class: com.a.a.g.6
            @Override // com.a.a.b.InterfaceC0009b
            public void a(float f) {
                g.this.ag.a(f);
            }
        }).a(new b.a() { // from class: com.a.a.g.5
            @Override // com.a.a.b.a
            public void a() {
                g.this.ai.start();
                g.this.am = true;
            }
        }).a();
        this.ai = new b().b(1000L).a(-1).a(new AccelerateDecelerateInterpolator()).a(new b.InterfaceC0009b() { // from class: com.a.a.g.7
            @Override // com.a.a.b.InterfaceC0009b
            public void a(float f) {
                float fA = g.this.a(f, 0.5f);
                g.this.Q = (fA + 1.0f) * g.this.b;
                g.this.R = (int) ((1.0f - fA) * 255.0f);
                g.this.S = g.this.b + (g.this.a(f) * g.this.c);
                if (g.this.M != g.this.N) {
                    g.this.M = g.this.N;
                }
                g.this.e();
                g.this.a(g.this.J);
            }
        }).a();
        this.aj = new b(true).b(250L).a(new AccelerateDecelerateInterpolator()).a(new b.InterfaceC0009b() { // from class: com.a.a.g.9
            @Override // com.a.a.b.InterfaceC0009b
            public void a(float f) {
                g.this.ag.a(f);
            }
        }).a(new b.a() { // from class: com.a.a.g.8
            @Override // com.a.a.b.a
            public void a() {
                g.this.c(true);
            }
        }).a();
        this.an = new b().b(250L).a(new AccelerateDecelerateInterpolator()).a(new b.InterfaceC0009b() { // from class: com.a.a.g.11
            @Override // com.a.a.b.InterfaceC0009b
            public void a(float f) {
                float fMin = Math.min(1.0f, 2.0f * f);
                g.this.M = g.this.N * ((0.2f * fMin) + 1.0f);
                float f2 = 1.0f - fMin;
                g.this.P = (int) (g.this.n.c * f2 * 255.0f);
                g.this.L.reset();
                g.this.L.addCircle(g.this.O[0], g.this.O[1], g.this.M, Path.Direction.CW);
                float f3 = 1.0f - f;
                g.this.S = g.this.b * f3;
                g.this.T = (int) (f3 * 255.0f);
                g.this.Q = (f + 1.0f) * g.this.b;
                g.this.R = (int) (f3 * g.this.R);
                g.this.U = (int) (f2 * 255.0f);
                g.this.e();
                g.this.a(g.this.J);
            }
        }).a(new b.a() { // from class: com.a.a.g.10
            @Override // com.a.a.b.a
            public void a() {
                g.this.c(true);
            }
        }).a();
        this.ao = new ValueAnimator[]{this.ah, this.ai, this.an, this.aj};
        if (eVar == null) {
            throw new IllegalArgumentException("Target cannot be null");
        }
        this.n = eVar;
        this.m = viewManager;
        this.l = viewGroup;
        this.ae = aVar == null ? new a() : aVar;
        this.v = eVar.a;
        this.x = eVar.b;
        this.a = i.a(context, 20);
        this.h = i.a(context, 40);
        this.b = i.a(context, eVar.d);
        this.d = i.a(context, 40);
        this.e = i.a(context, 8);
        this.f = i.a(context, 360);
        this.g = i.a(context, 20);
        this.i = i.a(context, 88);
        this.j = i.a(context, 8);
        this.k = i.a(context, 1);
        this.c = (int) (this.b * 0.1f);
        this.L = new Path();
        this.o = new Rect();
        this.J = new Rect();
        this.p = new TextPaint();
        this.p.setTextSize(eVar.f(context));
        this.p.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.p.setAntiAlias(true);
        this.q = new TextPaint();
        this.q.setTextSize(eVar.g(context));
        this.q.setTypeface(Typeface.create(Typeface.SANS_SERIF, 0));
        this.q.setAntiAlias(true);
        this.q.setAlpha(com.prism.gaia.client.e.d.c.g.K);
        this.r = new Paint();
        this.r.setAntiAlias(true);
        this.r.setAlpha((int) (eVar.c * 255.0f));
        this.s = new Paint();
        this.s.setAntiAlias(true);
        this.s.setAlpha(50);
        this.s.setStyle(Paint.Style.STROKE);
        this.s.setStrokeWidth(this.k);
        this.s.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.t = new Paint();
        this.t.setAntiAlias(true);
        this.u = new Paint();
        this.u.setAntiAlias(true);
        a(context);
        if (Build.VERSION.SDK_INT < 19 || !(context instanceof Activity)) {
            z = false;
            z2 = false;
        } else {
            int i = ((Activity) context).getWindow().getAttributes().flags;
            z = (67108864 & i) != 0;
            z2 = (i & 134217728) != 0;
        }
        this.ap = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.a.a.g.12
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (g.this.al) {
                    return;
                }
                g.this.c();
                eVar.a(new Runnable() { // from class: com.a.a.g.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int[] iArr = new int[2];
                        g.this.o.set(eVar.b());
                        g.this.getLocationOnScreen(iArr);
                        g.this.o.offset(-iArr[0], -iArr[1]);
                        if (viewGroup != null) {
                            WindowManager windowManager = (WindowManager) context.getSystemService("window");
                            DisplayMetrics displayMetrics = new DisplayMetrics();
                            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                            Rect rect = new Rect();
                            viewGroup.getWindowVisibleDisplayFrame(rect);
                            int[] iArr2 = new int[2];
                            viewGroup.getLocationInWindow(iArr2);
                            if (z) {
                                rect.top = iArr2[1];
                            }
                            if (z2) {
                                rect.bottom = iArr2[1] + viewGroup.getHeight();
                            }
                            g.this.ab = Math.max(0, rect.top);
                            g.this.ac = Math.min(rect.bottom, displayMetrics.heightPixels);
                        }
                        g.this.b();
                        g.this.requestFocus();
                        g.this.d();
                        g.this.f();
                    }
                });
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.ap);
        setFocusableInTouchMode(true);
        setClickable(true);
        setOnClickListener(new View.OnClickListener() { // from class: com.a.a.g.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.ae == null || g.this.O == null || !g.this.am) {
                    return;
                }
                boolean z3 = g.this.a(g.this.o.centerX(), g.this.o.centerY(), (int) g.this.W, (int) g.this.aa) <= ((double) g.this.S);
                boolean z4 = g.this.a(g.this.O[0], g.this.O[1], (int) g.this.W, (int) g.this.aa) <= ((double) g.this.M);
                if (z3) {
                    g.this.am = false;
                    g.this.ae.a(g.this);
                } else if (z4) {
                    g.this.ae.b(g.this);
                } else if (g.this.D) {
                    g.this.am = false;
                    g.this.ae.c(g.this);
                }
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.a.a.g.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (g.this.ae == null || !g.this.o.contains((int) g.this.W, (int) g.this.aa)) {
                    return false;
                }
                g.this.ae.d(g.this);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.E) {
            return;
        }
        this.am = false;
        this.ah.start();
        this.E = true;
    }

    protected void a(Context context) {
        this.B = this.n.l;
        this.C = this.n.j;
        this.D = this.n.k;
        if (this.C && Build.VERSION.SDK_INT >= 21 && !this.n.m) {
            this.af = new ViewOutlineProvider() { // from class: com.a.a.g.4
                @Override // android.view.ViewOutlineProvider
                @TargetApi(21)
                public void getOutline(View view, Outline outline) {
                    if (g.this.O == null) {
                        return;
                    }
                    outline.setOval((int) (g.this.O[0] - g.this.M), (int) (g.this.O[1] - g.this.M), (int) (g.this.O[0] + g.this.M), (int) (g.this.O[1] + g.this.M));
                    outline.setAlpha(g.this.P / 255.0f);
                    if (Build.VERSION.SDK_INT >= 22) {
                        outline.offset(0, g.this.j);
                    }
                }
            };
            setOutlineProvider(this.af);
            setElevation(this.j);
        }
        if (this.C && this.af == null && Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        } else {
            setLayerType(2, null);
        }
        Resources.Theme theme = context.getTheme();
        this.z = i.a(context, "isLightTheme") == 0;
        Integer numA = this.n.a(context);
        if (numA != null) {
            this.r.setColor(numA.intValue());
        } else if (theme != null) {
            this.r.setColor(i.a(context, "colorPrimary"));
        } else {
            this.r.setColor(-1);
        }
        Integer numB = this.n.b(context);
        int i = ViewCompat.MEASURED_STATE_MASK;
        if (numB != null) {
            this.t.setColor(numB.intValue());
        } else {
            this.t.setColor(this.z ? ViewCompat.MEASURED_STATE_MASK : -1);
        }
        if (this.n.m) {
            this.t.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        this.u.setColor(this.t.getColor());
        Integer numC = this.n.c(context);
        if (numC != null) {
            this.V = i.a(numC.intValue(), 0.3f);
        } else {
            this.V = -1;
        }
        Integer numD = this.n.d(context);
        if (numD != null) {
            this.p.setColor(numD.intValue());
        } else {
            TextPaint textPaint = this.p;
            if (!this.z) {
                i = -1;
            }
            textPaint.setColor(i);
        }
        Integer numE = this.n.e(context);
        if (numE != null) {
            this.q.setColor(numE.intValue());
        } else {
            this.q.setColor(this.p.getColor());
        }
        if (this.n.g != null) {
            this.p.setTypeface(this.n.g);
        }
        if (this.n.h != null) {
            this.q.setTypeface(this.n.h);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
    }

    void a(boolean z) {
        if (this.ak) {
            return;
        }
        this.al = false;
        this.ak = true;
        for (ValueAnimator valueAnimator : this.ao) {
            valueAnimator.cancel();
            valueAnimator.removeAllUpdateListeners();
        }
        k.a(getViewTreeObserver(), this.ap);
        this.E = false;
        if (this.ae != null) {
            this.ae.a(this, z);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.ak || this.O == null) {
            return;
        }
        if (this.ab > 0 && this.ac > 0) {
            canvas.clipRect(0, this.ab, getWidth(), this.ac);
        }
        if (this.V != -1) {
            canvas.drawColor(this.V);
        }
        this.r.setAlpha(this.P);
        if (this.C && this.af == null) {
            int iSave = canvas.save();
            canvas.clipPath(this.L, Region.Op.DIFFERENCE);
            a(canvas);
            canvas.restoreToCount(iSave);
        }
        canvas.drawCircle(this.O[0], this.O[1], this.M, this.r);
        this.t.setAlpha(this.T);
        if (this.R > 0) {
            this.u.setAlpha(this.R);
            canvas.drawCircle(this.o.centerX(), this.o.centerY(), this.Q, this.u);
        }
        canvas.drawCircle(this.o.centerX(), this.o.centerY(), this.S, this.t);
        int iSave2 = canvas.save();
        canvas.translate(this.K.left, this.K.top);
        this.p.setAlpha(this.U);
        if (this.w != null) {
            this.w.draw(canvas);
        }
        if (this.y != null && this.w != null) {
            canvas.translate(0.0f, this.w.getHeight() + this.e);
            this.q.setAlpha((int) (this.n.n * this.U));
            this.y.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        if (this.ad != null) {
            canvas.translate(this.o.centerX() - (this.ad.getWidth() / 2), this.o.centerY() - (this.ad.getHeight() / 2));
            canvas.drawBitmap(this.ad, 0.0f, 0.0f, this.t);
        } else if (this.n.f != null) {
            canvas.translate(this.o.centerX() - (this.n.f.getBounds().width() / 2), this.o.centerY() - (this.n.f.getBounds().height() / 2));
            this.n.f.setAlpha(this.t.getAlpha());
            this.n.f.draw(canvas);
        }
        canvas.restoreToCount(iSave3);
        if (this.A) {
            b(canvas);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.W = motionEvent.getX();
        this.aa = motionEvent.getY();
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!a() || !this.D || i != 4) {
            return false;
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!a() || !this.am || !this.D || i != 4 || !keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        this.am = false;
        if (this.ae != null) {
            this.ae.c(this);
            return true;
        }
        new a().c(this);
        return true;
    }

    public void b(boolean z) {
        this.al = true;
        this.ai.cancel();
        this.ah.cancel();
        if (!this.E || this.O == null) {
            c(z);
        } else if (z) {
            this.an.start();
        } else {
            this.aj.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        a(z);
        k.a(this.m, this);
    }

    public void setDrawDebug(boolean z) {
        if (this.A != z) {
            this.A = z;
            postInvalidate();
        }
    }

    public boolean a() {
        return !this.ak && this.E;
    }

    void a(Canvas canvas) {
        float f = this.P * 0.2f;
        this.s.setStyle(Paint.Style.FILL_AND_STROKE);
        this.s.setAlpha((int) f);
        canvas.drawCircle(this.O[0], this.O[1] + this.j, this.M, this.s);
        this.s.setStyle(Paint.Style.STROKE);
        for (int i = 6; i > 0; i--) {
            this.s.setAlpha((int) ((i / 7.0f) * f));
            canvas.drawCircle(this.O[0], this.O[1] + this.j, this.M + ((7 - i) * this.k), this.s);
        }
    }

    void b(Canvas canvas) {
        if (this.I == null) {
            this.I = new Paint();
            this.I.setARGB(255, 255, 0, 0);
            this.I.setStyle(Paint.Style.STROKE);
            this.I.setStrokeWidth(i.a(getContext(), 1));
        }
        if (this.H == null) {
            this.H = new TextPaint();
            this.H.setColor(SupportMenu.CATEGORY_MASK);
            this.H.setTextSize(i.b(getContext(), 16));
        }
        this.I.setStyle(Paint.Style.STROKE);
        canvas.drawRect(this.K, this.I);
        canvas.drawRect(this.o, this.I);
        canvas.drawCircle(this.O[0], this.O[1], 10.0f, this.I);
        canvas.drawCircle(this.O[0], this.O[1], this.N - this.h, this.I);
        canvas.drawCircle(this.o.centerX(), this.o.centerY(), this.b + this.a, this.I);
        this.I.setStyle(Paint.Style.FILL);
        String str = "Text bounds: " + this.K.toShortString() + "\nTarget bounds: " + this.o.toShortString() + "\nCenter: " + this.O[0] + " " + this.O[1] + "\nView size: " + getWidth() + " " + getHeight() + "\nTarget bounds: " + this.o.toShortString();
        if (this.F == null) {
            this.F = new SpannableStringBuilder(str);
        } else {
            this.F.clear();
            this.F.append((CharSequence) str);
        }
        if (this.G == null) {
            this.G = new DynamicLayout(str, this.H, getWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        }
        int iSave = canvas.save();
        this.I.setARGB(220, 0, 0, 0);
        canvas.translate(0.0f, this.ab);
        canvas.drawRect(0.0f, 0.0f, this.G.getWidth(), this.G.getHeight(), this.I);
        this.I.setARGB(255, 255, 0, 0);
        this.G.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    void b() {
        Drawable drawable = this.n.f;
        if (!this.B || drawable == null) {
            this.ad = null;
            return;
        }
        if (this.ad != null) {
            return;
        }
        this.ad = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.ad);
        drawable.setColorFilter(new PorterDuffColorFilter(this.r.getColor(), PorterDuff.Mode.SRC_ATOP));
        drawable.draw(canvas);
        drawable.setColorFilter(null);
    }

    void c() {
        int iMin = Math.min(getWidth(), this.f) - (this.d * 2);
        if (iMin <= 0) {
            return;
        }
        this.w = new StaticLayout(this.v, this.p, iMin, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        if (this.x != null) {
            this.y = new StaticLayout(this.x, this.q, iMin, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        } else {
            this.y = null;
        }
    }

    void d() {
        this.K = getTextBounds();
        this.O = getOuterCircleCenterPoint();
        this.N = a(this.O[0], this.O[1], this.K, this.o);
    }

    void e() {
        if (this.O == null) {
            return;
        }
        this.J.left = (int) Math.max(0.0f, this.O[0] - this.M);
        this.J.top = (int) Math.min(0.0f, this.O[1] - this.M);
        this.J.right = (int) Math.min(getWidth(), this.O[0] + this.M + this.h);
        this.J.bottom = (int) Math.min(getHeight(), this.O[1] + this.M + this.h);
    }

    int a(int i, int i2, Rect rect, Rect rect2) {
        int iCenterX = rect2.centerX();
        int iCenterY = rect2.centerY();
        Rect rect3 = new Rect(iCenterX, iCenterY, iCenterX, iCenterY);
        int i3 = -((int) (this.b * 1.1f));
        rect3.inset(i3, i3);
        return Math.max(a(i, i2, rect), a(i, i2, rect3)) + this.h;
    }

    Rect getTextBounds() {
        int totalTextHeight = getTotalTextHeight();
        int totalTextWidth = getTotalTextWidth();
        int iCenterY = ((this.o.centerY() - this.b) - this.a) - totalTextHeight;
        if (iCenterY <= this.ab) {
            iCenterY = this.o.centerY() + this.b + this.a;
        }
        int iMax = Math.max(this.d, (this.o.centerX() - ((getWidth() / 2) - this.o.centerX() < 0 ? -this.g : this.g)) - totalTextWidth);
        return new Rect(iMax, iCenterY, Math.min(getWidth() - this.d, totalTextWidth + iMax), totalTextHeight + iCenterY);
    }

    int[] getOuterCircleCenterPoint() {
        int iCenterY;
        if (a(this.o.centerY())) {
            return new int[]{this.o.centerX(), this.o.centerY()};
        }
        int iMax = (Math.max(this.o.width(), this.o.height()) / 2) + this.a;
        int totalTextHeight = getTotalTextHeight();
        boolean z = ((this.o.centerY() - this.b) - this.a) - totalTextHeight > 0;
        int iMin = Math.min(this.K.left, this.o.left - iMax);
        int iMax2 = Math.max(this.K.right, this.o.right + iMax);
        int height = this.w == null ? 0 : this.w.getHeight();
        if (z) {
            iCenterY = (((this.o.centerY() - this.b) - this.a) - totalTextHeight) + height;
        } else {
            iCenterY = this.o.centerY() + this.b + this.a + height;
        }
        return new int[]{(iMin + iMax2) / 2, iCenterY};
    }

    int getTotalTextHeight() {
        if (this.w == null) {
            return 0;
        }
        if (this.y == null) {
            return this.w.getHeight() + this.e;
        }
        return this.w.getHeight() + this.y.getHeight() + this.e;
    }

    int getTotalTextWidth() {
        if (this.w == null) {
            return 0;
        }
        if (this.y == null) {
            return this.w.getWidth();
        }
        return Math.max(this.w.getWidth(), this.y.getWidth());
    }

    boolean a(int i) {
        return this.ac > 0 ? i < this.i || i > this.ac - this.i : i < this.i || i > getHeight() - this.i;
    }

    int a(int i, int i2, Rect rect) {
        return (int) Math.max(a(i, i2, rect.left, rect.top), Math.max(a(i, i2, rect.right, rect.top), Math.max(a(i, i2, rect.left, rect.bottom), a(i, i2, rect.right, rect.bottom))));
    }

    double a(int i, int i2, int i3, int i4) {
        return Math.sqrt(Math.pow(i3 - i, 2.0d) + Math.pow(i4 - i2, 2.0d));
    }

    void a(Rect rect) {
        invalidate(rect);
        if (this.af == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }
}
