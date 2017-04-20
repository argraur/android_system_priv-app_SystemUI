.class Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
.super Landroid/view/View;
.source "AssistDisclosure.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistDisclosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistDisclosureView"
.end annotation


# instance fields
.field private mAlpha:I

.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private final mAnimator:Landroid/animation/AnimatorSet;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private mShadowThickness:F

.field private mThickness:F

.field final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/systemui/assist/AssistDisclosure;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xde

    const/4 v4, 0x0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    .line 115
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    .line 112
    iput v4, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    .line 117
    filled-new-array {v4, v5}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 118
    const-wide/16 v2, 0x190

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 119
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    filled-new-array {v5, v4}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 122
    const-wide/16 v2, 0x12c

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    .line 123
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 127
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 149
    .local v0, "srcMode":Landroid/graphics/PorterDuffXfermode;
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    const v2, 0x7f10021e

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    .line 114
    return-void
.end method

.method private drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "padding"    # F

    .prologue
    .line 223
    sub-float v1, p2, p7

    .line 224
    sub-float v2, p3, p7

    .line 225
    add-float v3, p4, p7

    .line 226
    add-float v4, p5, p7

    move-object v0, p1

    move-object v5, p6

    .line 223
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 222
    return-void
.end method

.method private drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "padding"    # F

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getWidth()I

    move-result v10

    .line 191
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getHeight()I

    move-result v8

    .line 192
    .local v8, "height":I
    iget v9, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    .line 196
    .local v9, "thickness":F
    const/4 v2, 0x0

    .line 197
    int-to-float v0, v8

    sub-float v3, v0, v9

    .line 198
    int-to-float v4, v10

    .line 199
    int-to-float v5, v8

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move v7, p3

    .line 195
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 203
    const/4 v2, 0x0

    .line 204
    const/4 v3, 0x0

    .line 206
    int-to-float v0, v8

    sub-float v5, v0, v9

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    move-object v6, p2

    move v7, p3

    .line 202
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 208
    int-to-float v0, v10

    sub-float v2, v0, v9

    .line 209
    const/4 v3, 0x0

    .line 210
    int-to-float v4, v10

    .line 211
    int-to-float v0, v8

    sub-float v5, v0, v9

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move v7, p3

    .line 207
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 216
    const/4 v3, 0x0

    .line 217
    int-to-float v0, v10

    sub-float v4, v0, v9

    move-object v0, p0

    move-object v1, p1

    move v2, v9

    move v5, v9

    move-object v6, p2

    move v7, p3

    .line 214
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 189
    return-void
.end method

.method private startAnimation()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 175
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_16

    .line 233
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    .line 237
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->invalidate()V

    .line 231
    return-void

    .line 234
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_12

    .line 235
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    goto :goto_12
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->startAnimation()V

    .line 164
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->sendAccessibilityEvent(I)V

    .line 160
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    .line 168
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 181
    return-void
.end method
