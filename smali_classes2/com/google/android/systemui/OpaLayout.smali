.class public Lcom/google/android/systemui/OpaLayout;
.super Landroid/widget/FrameLayout;
.source "OpaLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/OpaLayout$-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0;,
        Lcom/google/android/systemui/OpaLayout$1;,
        Lcom/google/android/systemui/OpaLayout$2;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_DIAMOND:I = 0x1

.field private static final ANIMATION_STATE_NONE:I = 0x0

.field private static final ANIMATION_STATE_OTHER:I = 0x3

.field private static final ANIMATION_STATE_RETRACT:I = 0x2

.field private static final COLLAPSE_ANIMATION_DURATION_BG:I = 0x64

.field private static final COLLAPSE_ANIMATION_DURATION_RY:I = 0x53

.field private static final DIAMOND_ANIMATION_DURATION:I = 0xc8

.field private static final DIAMOND_DOTS_SCALE_FACTOR:F = 0.8f

.field private static final DIAMOND_HOME_SCALE_FACTOR:F = 0.625f

.field private static final DOTS_RESIZE_DURATION:I = 0xc8

.field private static final HALO_ANIMATION_DURATION:I = 0x64

.field private static final HALO_SCALE_FACTOR:F = 0.47619048f

.field private static final HOME_REAPPEAR_ANIMATION_OFFSET:I = 0x21

.field private static final HOME_REAPPEAR_DURATION:I = 0x96

.field private static final HOME_RESIZE_DURATION:I = 0x53

.field private static final LINE_ANIMATION_DURATION_X:I = 0x113

.field private static final LINE_ANIMATION_DURATION_Y:I = 0x85

.field private static final MIN_DIAMOND_DURATION:I = 0x64

.field private static final RETRACT_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "OpaLayout"


# instance fields
.field private mAnimationState:I

.field private mBlue:Landroid/view/View;

.field private mBottom:Landroid/view/View;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private final mCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private final mCurrentAnimators:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiamondInterpolator:Landroid/view/animation/Interpolator;

.field private final mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mGreen:Landroid/view/View;

.field private mHalo:Landroid/view/View;

.field private mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private final mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mIsPressed:Z

.field private mIsVertical:Z

.field private mLeft:Landroid/view/View;

.field private mLongClicked:Z

.field private mOpaEnabled:Z

.field private mRed:Landroid/view/View;

.field private final mRetract:Ljava/lang/Runnable;

.field private final mRetractInterpolator:Landroid/view/animation/Interpolator;

.field private mRight:Landroid/view/View;

.field private mStartTime:J

.field private mTop:Landroid/view/View;

.field private mWhite:Landroid/view/View;

.field private mYellow:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/google/android/systemui/OpaLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    return v0
.end method

.method static synthetic -set0(Lcom/google/android/systemui/OpaLayout;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return p1
.end method

.method static synthetic -set1(Lcom/google/android/systemui/OpaLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->cancelCurrentAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startCollapseAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startLineAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startRetractAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 146
    return-void
.end method

.method private cancelCurrentAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 652
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 656
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 657
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 658
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 655
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 660
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 661
    iput v3, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 651
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private endCurrentAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 669
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 671
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 672
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 673
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 674
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 671
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 676
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 677
    iput v3, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 668
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private getCollapseAnimatorSet()Landroid/util/ArraySet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x96

    const/16 v11, 0x64

    const/16 v10, 0x53

    const/16 v9, 0xc8

    const/high16 v8, 0x3f800000    # 1.0f

    .line 491
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 494
    .local v0, "animators":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    iget-boolean v5, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v5, :cond_0

    .line 495
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 496
    const v7, 0x7f1002b9

    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    neg-float v7, v7

    .line 495
    invoke-direct {p0, v5, v6, v7, v10}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v5

    .line 494
    :goto_0
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    .line 500
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 499
    invoke-direct {p0, v5, v8, v9, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    .line 502
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 501
    invoke-direct {p0, v5, v8, v9, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 505
    iget-boolean v5, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v5, :cond_1

    .line 506
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 507
    const v7, 0x7f1002b8

    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    neg-float v7, v7

    .line 506
    invoke-direct {p0, v5, v6, v7, v11}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v5

    .line 505
    :goto_1
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    .line 511
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 510
    invoke-direct {p0, v5, v8, v9, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    .line 513
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 512
    invoke-direct {p0, v5, v8, v9, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 516
    iget-boolean v5, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v5, :cond_2

    .line 517
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 518
    const v7, 0x7f1002b9

    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    .line 517
    invoke-direct {p0, v5, v6, v7, v10}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v5

    .line 516
    :goto_2
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    .line 522
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 521
    invoke-direct {p0, v5, v8, v9, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    .line 524
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 523
    invoke-direct {p0, v5, v8, v9, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 527
    iget-boolean v5, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v5, :cond_3

    .line 528
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 529
    const v7, 0x7f1002b8

    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    .line 528
    invoke-direct {p0, v5, v6, v7, v11}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v5

    .line 527
    :goto_3
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    .line 533
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 532
    invoke-direct {p0, v5, v8, v9, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    .line 535
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 534
    invoke-direct {p0, v5, v8, v9, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 539
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 538
    invoke-direct {p0, v5, v8, v12, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v3

    .line 540
    .local v3, "homeScaleX":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 541
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 540
    invoke-direct {p0, v5, v8, v12, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v4

    .line 542
    .local v4, "homeScaleY":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 543
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 542
    invoke-direct {p0, v5, v8, v12, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    .line 544
    .local v1, "haloScaleX":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 545
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 544
    invoke-direct {p0, v5, v8, v12, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    .line 546
    .local v2, "haloScaleY":Landroid/animation/Animator;
    const-wide/16 v6, 0x21

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 547
    const-wide/16 v6, 0x21

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 548
    const-wide/16 v6, 0x21

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 549
    const-wide/16 v6, 0x21

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 550
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v5

    new-instance v6, Lcom/google/android/systemui/OpaLayout$5;

    invoke-direct {v6, p0}, Lcom/google/android/systemui/OpaLayout$5;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 562
    return-object v0

    .line 497
    .end local v1    # "haloScaleX":Landroid/animation/Animator;
    .end local v2    # "haloScaleY":Landroid/animation/Animator;
    .end local v3    # "homeScaleX":Landroid/animation/Animator;
    .end local v4    # "homeScaleY":Landroid/animation/Animator;
    :cond_0
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 498
    const v7, 0x7f1002b9

    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    .line 497
    invoke-direct {p0, v5, v6, v7, v10}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v5

    goto/16 :goto_0

    .line 508
    :cond_1
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 509
    const v7, 0x7f1002b8

    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    .line 508
    invoke-direct {p0, v5, v6, v7, v11}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v5

    goto/16 :goto_1

    .line 519
    :cond_2
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 520
    const v7, 0x7f1002b9

    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    neg-float v7, v7

    .line 519
    invoke-direct {p0, v5, v6, v7, v10}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v5

    goto/16 :goto_2

    .line 530
    :cond_3
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 531
    const v7, 0x7f1002b8

    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    neg-float v7, v7

    .line 530
    invoke-direct {p0, v5, v6, v7, v11}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v5

    goto/16 :goto_3
.end method

.method private getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "deltaX"    # F
    .param p4, "duration"    # I

    .prologue
    .line 306
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v1, p3

    .line 306
    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 308
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 309
    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 311
    return-object v0
.end method

.method private getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "deltaY"    # F
    .param p4, "duration"    # I

    .prologue
    .line 319
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p3

    .line 319
    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 321
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 322
    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 324
    return-object v0
.end method

.method private getDiamondAnimatorSet()Landroid/util/ArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x3f200000    # 0.625f

    const v7, 0x3ef3cf3d

    const v6, 0x7f1002b4

    const v5, 0x3f4ccccd    # 0.8f

    const/16 v4, 0xc8

    .line 363
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 366
    .local v0, "animators":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 367
    invoke-direct {p0, v6}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    .line 366
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 369
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 368
    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 371
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 370
    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 375
    invoke-direct {p0, v6}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    .line 374
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 377
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 376
    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 379
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 378
    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 383
    invoke-direct {p0, v6}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    .line 382
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    .line 385
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 384
    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    .line 387
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 386
    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 391
    invoke-direct {p0, v6}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    .line 390
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    .line 393
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 392
    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    .line 395
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 394
    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 399
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 398
    invoke-direct {p0, v1, v8, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 401
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 400
    invoke-direct {p0, v1, v8, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 405
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x64

    .line 404
    invoke-direct {p0, v1, v7, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 407
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x64

    .line 406
    invoke-direct {p0, v1, v7, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$3;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$3;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    return-object v0
.end method

.method private getLineAnimatorSet()Landroid/util/ArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f1002b5

    const/16 v7, 0x85

    const/16 v6, 0x53

    const/4 v5, 0x0

    const/16 v4, 0x113

    .line 566
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 567
    .local v0, "animators":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 570
    const v3, 0x7f1002b6

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    .line 569
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 572
    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    .line 571
    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 576
    const v3, 0x7f1002b7

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    .line 575
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 580
    const v3, 0x7f1002b6

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    .line 579
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 582
    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    .line 581
    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 586
    const v3, 0x7f1002b7

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    .line 585
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 610
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 611
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 610
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 613
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 612
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 615
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 614
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 617
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 616
    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$6;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$6;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 630
    return-object v0

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 590
    const v3, 0x7f1002b6

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    .line 589
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 592
    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    .line 591
    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 596
    const v3, 0x7f1002b7

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    .line 595
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 600
    const v3, 0x7f1002b6

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    .line 599
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 602
    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    .line 601
    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 606
    const v3, 0x7f1002b7

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    .line 605
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, "animators":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 686
    .local v4, "longestDuration":J
    const/4 v2, 0x0

    .line 687
    .local v2, "longestAnim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .end local v2    # "longestAnim":Landroid/animation/Animator;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 688
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 689
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 690
    move-object v2, v0

    .line 691
    .local v2, "longestAnim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    .line 687
    .end local v2    # "longestAnim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 694
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_1
    return-object v2
.end method

.method private getPxVal(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getRetractAnimatorSet()Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v3, 0x12c

    .line 424
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 431
    .local v0, "animators":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    .line 434
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 433
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    .line 436
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 435
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    .line 444
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 443
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    .line 446
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 445
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    .line 454
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 453
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    .line 456
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 455
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    .line 464
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 463
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    .line 466
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 465
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 470
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 469
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 472
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 471
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 476
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 475
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 478
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 477
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$4;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$4;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 487
    return-object v0
.end method

.method private getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "factor"    # F
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 280
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 282
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 283
    invoke-virtual {v0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 285
    return-object v0
.end method

.method private getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "factor"    # F
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 293
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 295
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 296
    invoke-virtual {v0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 298
    return-object v0
.end method

.method private getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # I

    .prologue
    .line 331
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 332
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 333
    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 334
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 335
    return-object v0
.end method

.method private getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # I

    .prologue
    .line 342
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 343
    .local v0, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 344
    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 346
    return-object v0
.end method

.method private startAll(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "animators":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 351
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 350
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 349
    :cond_0
    return-void
.end method

.method private startCollapseAnimation()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 270
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 271
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 272
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    .line 268
    return-void
.end method

.method private startDiamondAnimation()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 249
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 250
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 251
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    .line 247
    return-void
.end method

.method private startLineAnimation()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 263
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getLineAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 264
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 265
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    .line 261
    return-void
.end method

.method private startRetractAnimation()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 256
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 257
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 258
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    .line 254
    return-void
.end method


# virtual methods
.method synthetic -com_google_android_systemui_OpaLayout_lambda$1(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public abortCurrentGesture()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->abortCurrentGesture()V

    .line 243
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 158
    const v0, 0x7f1202a5

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    .line 159
    const v0, 0x7f1202a4

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    .line 160
    const v0, 0x7f1202a7

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    .line 161
    const v0, 0x7f1202a6

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    .line 162
    const v0, 0x7f1202a8

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    .line 163
    const v0, 0x7f1202aa

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    .line 164
    const v0, 0x7f1202a9

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 166
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    const-string/jumbo v2, "systemui.google.opa_enabled"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 166
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

	const/4 v0, 0x1
	
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    .line 156
    return-void

    :cond_0
    move v0, v1

    .line 166
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 187
    iget-boolean v4, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    if-nez v4, :cond_0

    .line 188
    return v8

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 191
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 229
    :cond_1
    :goto_0
    :pswitch_0
    return v8

    .line 197
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 198
    iget v4, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->endCurrentAnimation()V

    .line 204
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    .line 205
    iput-boolean v8, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    .line 206
    iput-boolean v6, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    .line 207
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startDiamondAnimation()V

    .line 208
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 209
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/google/android/systemui/OpaLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 201
    :cond_3
    return v8

    .line 213
    :pswitch_2
    iget v4, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    if-ne v4, v6, :cond_4

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    sub-long/2addr v4, v6

    .line 215
    const-wide/16 v6, 0x64

    sub-long v2, v6, v4

    .line 217
    .local v2, "targetTime":J
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 218
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v2, v3}, Lcom/google/android/systemui/OpaLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    return v8

    .line 222
    .end local v2    # "targetTime":J
    :cond_4
    iget-boolean v4, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    if-eqz v4, :cond_6

    :cond_5
    const/4 v1, 0x0

    .line 223
    .local v1, "doRetract":Z
    :goto_1
    iput-boolean v8, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    .line 224
    if-eqz v1, :cond_1

    .line 225
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 222
    .end local v1    # "doRetract":Z
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "doRetract":Z
    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCarMode(Z)V
    .locals 1
    .param p1, "carMode"    # Z

    .prologue
    .line 716
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    .line 715
    return-void

    .line 716
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    new-instance v1, Lcom/google/android/systemui/OpaLayout$-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/OpaLayout$-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    return-void
.end method

.method public setOpaEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 635
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    .line 637
    .end local p1    # "enabled":Z
    :goto_0
    const-string/jumbo v1, "OpaLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting opa enabled to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    .line 640
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 641
    .local v0, "visibility":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 633
    return-void

    .line 635
    .end local v0    # "visibility":I
    .restart local p1    # "enabled":Z
    :cond_0
    const/4 p1, 0x1

    .local p1, "enabled":Z
    goto :goto_0

    .line 640
    .end local p1    # "enabled":Z
    :cond_1
    const/4 v0, 0x4

    .restart local v0    # "visibility":I
    goto :goto_1
.end method

.method public setVertical(Z)V
    .locals 1
    .param p1, "vertical"    # Z

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    .line 701
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 703
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 704
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    .line 705
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    .line 698
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 708
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 709
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    .line 710
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    goto :goto_0
.end method
