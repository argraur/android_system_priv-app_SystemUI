.class public Lcom/android/systemui/statusbar/NotificationGuts;
.super Landroid/widget/LinearLayout;
.source "NotificationGuts.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;
    }
.end annotation


# instance fields
.field private mActiveSliderAlpha:F

.field private mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActualHeight:I

.field private mAuto:Z

.field private mAutoButton:Landroid/widget/ImageView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBlock:Landroid/widget/RadioButton;

.field private mClipTopAmount:I

.field private mExposed:Z

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mImportanceSummary:Landroid/widget/TextView;

.field private mImportanceTitle:Landroid/widget/TextView;

.field private mInactiveSliderAlpha:F

.field private mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

.field private mNeedsFalsingProtection:Z

.field private mNotificationImportance:I

.field private mReset:Landroid/widget/RadioButton;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowSlider:Z

.field private mSilent:Landroid/widget/RadioButton;

.field private mStartingUserImportance:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationGuts;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->applyAuto()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationGuts;I)V
    .registers 2
    .param p1, "progress"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->updateTitleAndSummary(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderAlpha:F

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setWillNotDraw(Z)V

    .line 98
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    .line 108
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 109
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderAlpha:F

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method private applyAuto()V
    .registers 7

    .prologue
    .line 335
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_55

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 337
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_57

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 338
    .local v2, "starTint":Landroid/content/res/ColorStateList;
    :goto_10
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_5a

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderAlpha:F

    .line 339
    .local v0, "alpha":F
    :goto_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 340
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 341
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 344
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_5d

    .line 345
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 346
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 347
    const v5, 0x7f0f0399

    .line 346
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 349
    const v5, 0x7f0f0392

    .line 348
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :goto_54
    return-void

    .line 335
    .end local v0    # "alpha":F
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "starTint":Landroid/content/res/ColorStateList;
    :cond_55
    const/4 v3, 0x1

    goto :goto_7

    .line 337
    :cond_57
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .restart local v2    # "starTint":Landroid/content/res/ColorStateList;
    goto :goto_10

    .line 338
    :cond_5a
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderAlpha:F

    .restart local v0    # "alpha":F
    goto :goto_16

    .line 351
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5d
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationGuts;->updateTitleAndSummary(I)V

    goto :goto_54
.end method

.method private bindSlider(Landroid/view/View;Z)V
    .registers 6
    .param p1, "importanceSlider"    # Landroid/view/View;
    .param p2, "nonBlockable"    # Z

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 284
    const v1, 0x7f0c009b

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 286
    const v1, 0x7f1201b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    .line 287
    const v1, 0x7f120081

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    .line 288
    const v1, 0x7f1201a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    .line 290
    if-eqz p2, :cond_72

    .line 291
    const/4 v0, 0x1

    .line 293
    .local v0, "minProgress":I
    :goto_39
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationGuts$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts$3;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 322
    const v1, 0x7f1201b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationGuts$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationGuts$4;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_74

    const/4 v1, 0x1

    :goto_6c
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->applyAuto()V

    .line 282
    return-void

    .line 292
    .end local v0    # "minProgress":I
    :cond_72
    const/4 v0, 0x0

    .restart local v0    # "minProgress":I
    goto :goto_39

    .line 330
    :cond_74
    const/4 v1, 0x0

    goto :goto_6c
.end method

.method private bindToggles(Landroid/view/View;IZ)V
    .registers 8
    .param p1, "importanceButtons"    # Landroid/view/View;
    .param p2, "importance"    # I
    .param p3, "nonBlockable"    # Z

    .prologue
    const/4 v3, 0x1

    move-object v0, p1

    .line 257
    check-cast v0, Landroid/widget/RadioGroup;

    .line 258
    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$2;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 264
    const v0, 0x7f1201b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    .line 265
    const v0, 0x7f1201b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    .line 266
    const v0, 0x7f1201b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    .line 267
    if-eqz p3, :cond_69

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f038c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f038b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f038a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const/4 v0, 0x2

    if-ne p2, v0, :cond_78

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 256
    :goto_68
    return-void

    .line 271
    :cond_69
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f038d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 278
    :cond_78
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_68
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 139
    if-eqz p2, :cond_11

    .line 140
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    :cond_11
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 165
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 164
    :cond_f
    return-void
.end method

.method private getSelectedImportance()I
    .registers 3

    .prologue
    const/16 v1, -0x3e8

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0

    .line 242
    :cond_1d
    return v1

    .line 245
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 246
    const/4 v0, 0x0

    return v0

    .line 247
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 248
    const/4 v0, 0x2

    return v0

    .line 250
    :cond_3a
    return v1
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "colorResId"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private updateTitleAndSummary(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_b4

    .line 355
    :goto_3
    return-void

    .line 358
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 359
    const v2, 0x7f0f039a

    .line 358
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 363
    :pswitch_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 364
    const v2, 0x7f0f039b

    .line 363
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0394

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 368
    :pswitch_3e
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 369
    const v2, 0x7f0f039c

    .line 368
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0395

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 373
    :pswitch_5b
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 374
    const v2, 0x7f0f039d

    .line 373
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 378
    :pswitch_78
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 379
    const v2, 0x7f0f039e

    .line 378
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0397

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 383
    :pswitch_96
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 384
    const v2, 0x7f0f039f

    .line 383
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0398

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 356
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_21
        :pswitch_3e
        :pswitch_5b
        :pswitch_78
        :pswitch_96
    .end packed-switch
.end method


# virtual methods
.method public areGutsExposed()Z
    .registers 2

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method bindImportance(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Ljava/util/Set;I)V
    .registers 16
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "importance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p3, "nonBlockablePkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v8, "notification"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 179
    invoke-static {v8}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    .line 181
    const/16 v8, -0x3e8

    iput v8, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    .line 184
    :try_start_11
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/app/INotificationManager;->getImportance(Ljava/lang/String;I)I

    move-result v8

    .line 183
    iput v8, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_21} :catch_8f

    .line 186
    :goto_21
    iput p4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    .line 188
    const v8, 0x7f1201b7

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 189
    .local v5, "importanceSlider":Landroid/view/View;
    const v8, 0x7f1201b2

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 190
    .local v4, "importanceButtons":Landroid/view/View;
    const v8, 0x7f1201b6

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "cantTouchThis":Landroid/view/View;
    if-eqz p3, :cond_53

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 194
    .local v3, "essentialPackage":Z
    :goto_42
    if-eqz v3, :cond_55

    .line 195
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_52
    return-void

    .line 193
    .end local v3    # "essentialPackage":Z
    :cond_53
    const/4 v3, 0x0

    goto :goto_42

    .line 199
    .restart local v3    # "essentialPackage":Z
    :cond_55
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const/4 v7, 0x0

    .line 204
    .local v7, "nonBlockable":Z
    :try_start_5b
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 205
    .local v6, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, p1, v6}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_6c} :catch_8d

    move-result v7

    .line 210
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "nonBlockable":Z
    :goto_6d
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mShowSlider:Z

    if-eqz v8, :cond_7e

    .line 211
    invoke-direct {p0, v5, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->bindSlider(Landroid/view/View;Z)V

    .line 212
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_52

    .line 215
    :cond_7e
    iget v8, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    invoke-direct {p0, v4, v8, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->bindToggles(Landroid/view/View;IZ)V

    .line 216
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_52

    .line 206
    .restart local v7    # "nonBlockable":Z
    :catch_8d
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_6d

    .line 185
    .end local v0    # "cantTouchThis":Landroid/view/View;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "essentialPackage":Z
    .end local v4    # "importanceButtons":Landroid/view/View;
    .end local v5    # "importanceSlider":Landroid/view/View;
    .end local v7    # "nonBlockable":Z
    :catch_8f
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_21
.end method

.method public closeControls(IIZ)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "notify"    # Z

    .prologue
    const/4 v7, -0x1

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_13

    .line 396
    if-eqz p3, :cond_12

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v6, :cond_12

    .line 397
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 399
    :cond_12
    return-void

    .line 401
    :cond_13
    if-eq p1, v7, :cond_17

    if-ne p2, v7, :cond_2e

    .line 402
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 p1, v6, 0x2

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int p2, v6, v7

    .line 405
    :cond_2e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v2, v6

    .line 406
    .local v2, "horz":D
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v4, v6

    .line 407
    .local v4, "vert":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 409
    .local v1, "r":F
    const/4 v6, 0x0

    .line 408
    invoke-static {p0, p1, p2, v1, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 410
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v6, 0x168

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 411
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 412
    new-instance v6, Lcom/android/systemui/statusbar/NotificationGuts$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$5;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 419
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 420
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    .line 421
    if-eqz p3, :cond_72

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v6, :cond_72

    .line 422
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 394
    :cond_72
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 171
    :cond_9
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method public getActualHeight()I
    .registers 2

    .prologue
    .line 432
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    return v0
.end method

.method public hasImportanceChanged()Z
    .registers 3

    .prologue
    .line 223
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getSelectedImportance()I

    move-result v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "show_importance_slider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 121
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 146
    :cond_17
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 466
    const-string/jumbo v1, "show_importance_slider"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 467
    if-eqz p2, :cond_13

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mShowSlider:Z

    .line 465
    :cond_15
    return-void
.end method

.method public resetFalsingCheck()V
    .registers 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_18

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :cond_18
    return-void
.end method

.method saveImportance(Landroid/service/notification/StatusBarNotification;)V
    .registers 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getSelectedImportance()I

    move-result v1

    .line 228
    .local v1, "progress":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    .line 229
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    sub-int v3, v1, v3

    .line 228
    const/16 v4, 0x123

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 231
    :try_start_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Landroid/app/INotificationManager;->setImportance(Ljava/lang/String;II)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 226
    :goto_1c
    return-void

    .line 232
    :catch_1d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1c
.end method

.method public setActualHeight(I)V
    .registers 2
    .param p1, "actualHeight"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 426
    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 436
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 435
    return-void
.end method

.method public setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    .line 446
    return-void
.end method

.method public setExposed(ZZ)V
    .registers 5
    .param p1, "exposed"    # Z
    .param p2, "needsFalsingProtection"    # Z

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    .line 452
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    .line 453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_10

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 450
    :goto_f
    return-void

    .line 456
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
