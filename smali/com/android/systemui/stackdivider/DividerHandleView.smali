.class public Lcom/android/systemui/stackdivider/DividerHandleView;
.super Landroid/view/View;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerHandleView$1;,
        Lcom/android/systemui/stackdivider/DividerHandleView$2;
    }
.end annotation


# static fields
.field private static final HEIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private final mCircleDiameter:I

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mTouching:Z

.field private final mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    .line 55
    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$2;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    .line 84
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 85
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    .line 86
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    .line 78
    return-void
.end method

.method private animateToTarget(IIZ)V
    .registers 12
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "touching"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    sget-object v2, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    new-array v3, v7, [I

    .line 115
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    aput v4, v3, v5

    aput p1, v3, v6

    .line 114
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 116
    .local v1, "widthAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    new-array v3, v7, [I

    .line 117
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    aput v4, v3, v5

    aput p2, v3, v6

    .line 116
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    .local v0, "heightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 119
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 120
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_53

    .line 121
    const-wide/16 v2, 0x96

    .line 120
    :goto_37
    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 123
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_56

    .line 124
    sget-object v2, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 123
    :goto_40
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerHandleView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerHandleView$3;-><init>(Lcom/android/systemui/stackdivider/DividerHandleView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 113
    return-void

    .line 122
    :cond_53
    const-wide/16 v2, 0xc8

    goto :goto_37

    .line 125
    :cond_56
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_40
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 138
    .local v8, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v10, v0, v1

    .line 139
    .local v10, "top":I
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 140
    .local v9, "radius":I
    int-to-float v1, v8

    int-to-float v2, v10

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    .line 141
    int-to-float v5, v9

    int-to-float v6, v9

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 140
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method public setTouching(ZZ)V
    .registers 5
    .param p1, "touching"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    if-ne p1, v0, :cond_6

    .line 91
    return-void

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_11

    .line 94
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 95
    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 97
    :cond_11
    if-nez p2, :cond_2c

    .line 98
    if-eqz p1, :cond_23

    .line 99
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 100
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    .line 105
    :goto_1d
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    .line 110
    :goto_20
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    .line 89
    return-void

    .line 102
    :cond_23
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 103
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    goto :goto_1d

    .line 107
    :cond_2c
    if-eqz p1, :cond_39

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    move v1, v0

    .line 108
    :goto_31
    if-eqz p1, :cond_3d

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    .line 107
    :goto_35
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->animateToTarget(IIZ)V

    goto :goto_20

    :cond_39
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    move v1, v0

    goto :goto_31

    .line 108
    :cond_3d
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    goto :goto_35
.end method
