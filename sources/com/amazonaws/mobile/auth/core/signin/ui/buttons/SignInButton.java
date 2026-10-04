package com.amazonaws.mobile.auth.core.signin.ui.buttons;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amazonaws.mobile.auth.core.R;
import com.amazonaws.mobile.auth.core.signin.ui.DisplayUtils;

/* JADX INFO: loaded from: classes.dex */
public class SignInButton extends LinearLayout {
    private static final float i = 8.0f;
    private static final int k = -16777216;
    protected ImageView a;
    protected TextView b;
    protected Bitmap c;
    protected boolean d;
    private final SignInButtonAttributes l;
    private static final int e = DisplayUtils.a(8);
    private static final int f = DisplayUtils.a(8);
    private static final int g = DisplayUtils.a(2);
    private static final int h = DisplayUtils.a(8);
    private static final float j = DisplayUtils.a(50);

    public SignInButton(Context context, AttributeSet attributeSet, int i2, SignInButtonAttributes signInButtonAttributes) {
        super(context, attributeSet, i2);
        this.d = false;
        this.l = signInButtonAttributes;
        setFocusable(true);
        setClickable(true);
        setOrientation(0);
        setGravity(16);
        setBackgroundDrawable(getBackgroundStatesDrawable());
        this.a = new ImageView(context);
        this.c = BitmapFactory.decodeResource(getResources(), this.l.j());
        this.a.setImageDrawable(new BitmapDrawable(getResources(), this.c));
        this.a.setScaleType(ImageView.ScaleType.FIT_XY);
        this.a.setAdjustViewBounds(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(e, 0, f, 0);
        layoutParams.weight = 0.0f;
        addView(this.a, layoutParams);
        this.b = new TextView(context);
        this.b.setTextColor(this.l.h());
        String string = null;
        this.b.setTypeface(null, 1);
        this.b.setSingleLine(true);
        this.b.setGravity(16);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SignInButton);
            if (typedArrayObtainStyledAttributes.getInt(R.styleable.SignInButton_button_style, 0) > 0) {
                this.d = true;
            }
            string = typedArrayObtainStyledAttributes.getString(R.styleable.SignInButton_text);
            typedArrayObtainStyledAttributes.recycle();
        }
        if (string != null) {
            this.b.setText(string);
        } else {
            this.b.setText(this.l.i());
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.setMargins(DisplayUtils.a(g), 0, DisplayUtils.a(h), 0);
        layoutParams2.weight = 1.0f;
        addView(this.b, layoutParams2);
        a();
        invalidate();
    }

    private Drawable a(int i2) {
        ShapeDrawable shapeDrawableA = DisplayUtils.a(this.l.a(), i2);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{this.l.d(), this.l.d()});
        gradientDrawable.setCornerRadius(DisplayUtils.a(r0));
        GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{this.l.e(), this.l.e()});
        gradientDrawable2.setCornerRadius(DisplayUtils.a(r0));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, gradientDrawable2, shapeDrawableA});
        layerDrawable.setLayerInset(0, 0, 0, 0, 0);
        layerDrawable.setLayerInset(1, this.l.f(), this.l.f(), 0, 0);
        layerDrawable.setLayerInset(2, this.l.f(), this.l.f(), this.l.g(), this.l.g());
        return layerDrawable;
    }

    private Drawable getBackgroundStatesDrawable() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, a(this.l.c()));
        stateListDrawable.addState(new int[0], a(this.l.b()));
        return stateListDrawable;
    }

    private void a() {
        if (this.d) {
            this.b.setVisibility(8);
            setGravity(17);
        } else {
            this.b.setVisibility(0);
            setGravity(16);
        }
    }

    public void setSmallStyle(boolean z) {
        this.d = z;
        a();
    }

    public void setButtonText(String str) {
        this.b.setText(str);
        b();
    }

    public void setButtonText(int i2) {
        this.b.setText(i2);
        b();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
        double measuredHeight = getMeasuredHeight();
        Double.isNaN(measuredHeight);
        int height = (int) (measuredHeight * 0.72d);
        if (height > this.c.getHeight()) {
            height = this.c.getHeight();
        }
        layoutParams.height = height;
        layoutParams.width = height;
    }

    private boolean a(float f2, RectF rectF) {
        String string;
        TextPaint textPaint = new TextPaint(this.b.getPaint());
        textPaint.setTextSize(f2);
        TransformationMethod transformationMethod = this.b.getTransformationMethod();
        if (transformationMethod == null) {
            string = this.b.getText().toString();
        } else {
            string = transformationMethod.getTransformation(this.b.getText(), this.b).toString();
        }
        return rectF.contains(new RectF(0.0f, 0.0f, textPaint.measureText(string), textPaint.getFontSpacing()));
    }

    private float a(float f2, float f3, RectF rectF) {
        float f4 = f2;
        while (f2 <= f3) {
            float f5 = (f2 + f3) / 2.0f;
            if (a(f5, rectF)) {
                f2 = f5 + 0.5f;
                f4 = f5;
            } else {
                f3 = f5 - 0.5f;
            }
        }
        return f4;
    }

    private void b() {
        if (getMeasuredWidth() == 0 || this.d) {
            return;
        }
        float fApplyDimension = TypedValue.applyDimension(2, 8.0f, getResources().getDisplayMetrics());
        RectF rectF = new RectF();
        rectF.right = (this.b.getMeasuredWidth() - this.b.getCompoundPaddingLeft()) - this.b.getCompoundPaddingRight();
        rectF.bottom = (this.b.getMeasuredHeight() - this.b.getCompoundPaddingBottom()) - this.b.getCompoundPaddingTop();
        this.b.setTextSize(0, a(fApplyDimension, j, rectF));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        b();
    }
}
