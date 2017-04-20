.class Landroid/support/v17/leanback/transition/SlideKitkat;
.super Landroid/transition/Visibility;
.source "SlideKitkat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/SlideKitkat$1;,
        Landroid/support/v17/leanback/transition/SlideKitkat$2;,
        Landroid/support/v17/leanback/transition/SlideKitkat$3;,
        Landroid/support/v17/leanback/transition/SlideKitkat$4;,
        Landroid/support/v17/leanback/transition/SlideKitkat$5;,
        Landroid/support/v17/leanback/transition/SlideKitkat$6;,
        Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;,
        Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlideHorizontal;,
        Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlideVertical;,
        Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;
    }
.end annotation


# static fields
.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

.field private static final sCalculateEnd:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

.field private static final sCalculateLeft:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

.field private static final sCalculateRight:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

.field private static final sCalculateStart:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

.field private static final sCalculateTop:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

.field private mSlideEdge:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 49
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 95
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateLeft:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    .line 102
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateTop:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    .line 109
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$3;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$3;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateRight:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    .line 116
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$4;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$4;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateBottom:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    .line 123
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$5;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$5;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateStart:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    .line 134
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$6;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$6;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateEnd:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 146
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 150
    sget-object v5, Landroid/support/v17/leanback/R$styleable;->lbSlide:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbSlide_lb_slideEdge:I

    const/16 v8, 0x50

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 152
    .local v1, "edge":I
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    .line 153
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbSlide_android_duration:I

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    int-to-long v2, v5

    .line 154
    .local v2, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-ltz v5, :cond_25

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/transition/SlideKitkat;->setDuration(J)Landroid/transition/Transition;

    .line 157
    :cond_25
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbSlide_android_startDelay:I

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    int-to-long v6, v5

    .line 158
    .local v6, "startDelay":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_36

    .line 159
    invoke-virtual {p0, v6, v7}, Landroid/support/v17/leanback/transition/SlideKitkat;->setStartDelay(J)Landroid/transition/Transition;

    .line 161
    :cond_36
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbSlide_android_interpolator:I

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 162
    .local v4, "resID":I
    if-lez v4, :cond_46

    .line 163
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/transition/SlideKitkat;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 165
    :cond_46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-void
.end method

.method private createAnimation(Landroid/view/View;Landroid/util/Property;FFFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p3, "start"    # F
    .param p4, "end"    # F
    .param p5, "terminalValue"    # F
    .param p6, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p7, "finalVisibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FFF",
            "Landroid/animation/TimeInterpolator;",
            "I)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    sget v1, Landroid/support/v17/leanback/R$id;->lb_slide_transition_value:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 217
    .local v7, "startPosition":[F
    if-eqz v7, :cond_18

    .line 218
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne v1, p2, :cond_37

    aget p3, v7, v3

    .line 219
    :goto_13
    sget v1, Landroid/support/v17/leanback/R$id;->lb_slide_transition_value:I

    invoke-virtual {p1, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 221
    :cond_18
    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p3, v1, v2

    aput p4, v1, v3

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 223
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;-><init>(Landroid/view/View;Landroid/util/Property;FFI)V

    .line 225
    .local v0, "listener":Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 227
    invoke-virtual {v6, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    return-object v6

    .line 218
    .end local v0    # "listener":Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    :cond_37
    aget p3, v7, v2

    goto :goto_13
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 235
    if-eqz p4, :cond_8

    iget-object v1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 236
    .local v1, "view":Landroid/view/View;
    :goto_5
    if-nez v1, :cond_a

    .line 237
    return-object v0

    .end local v1    # "view":Landroid/view/View;
    :cond_8
    move-object v1, v0

    .line 235
    goto :goto_5

    .line 239
    .restart local v1    # "view":Landroid/view/View;
    :cond_a
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;->getHere(Landroid/view/View;)F

    move-result v4

    .line 240
    .local v4, "end":F
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;->getGone(Landroid/view/View;)F

    move-result v3

    .line 241
    .local v3, "start":F
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;->getProperty()Landroid/util/Property;

    move-result-object v2

    sget-object v6, Landroid/support/v17/leanback/transition/SlideKitkat;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 242
    const/4 v7, 0x0

    move-object v0, p0

    move v5, v4

    .line 241
    invoke-direct/range {v0 .. v7}, Landroid/support/v17/leanback/transition/SlideKitkat;->createAnimation(Landroid/view/View;Landroid/util/Property;FFFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 249
    if-eqz p2, :cond_8

    iget-object v1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 250
    .local v1, "view":Landroid/view/View;
    :goto_5
    if-nez v1, :cond_a

    .line 251
    return-object v0

    .end local v1    # "view":Landroid/view/View;
    :cond_8
    move-object v1, v0

    .line 249
    goto :goto_5

    .line 253
    .restart local v1    # "view":Landroid/view/View;
    :cond_a
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;->getHere(Landroid/view/View;)F

    move-result v3

    .line 254
    .local v3, "start":F
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;->getGone(Landroid/view/View;)F

    move-result v4

    .line 256
    .local v4, "end":F
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {v0}, Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;->getProperty()Landroid/util/Property;

    move-result-object v2

    .line 257
    sget-object v6, Landroid/support/v17/leanback/transition/SlideKitkat;->sAccelerate:Landroid/animation/TimeInterpolator;

    const/4 v7, 0x4

    move-object v0, p0

    move v5, v3

    .line 256
    invoke-direct/range {v0 .. v7}, Landroid/support/v17/leanback/transition/SlideKitkat;->createAnimation(Landroid/view/View;Landroid/util/Property;FFFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public setSlideEdge(I)V
    .registers 4
    .param p1, "slideEdge"    # I

    .prologue
    .line 177
    sparse-switch p1, :sswitch_data_2c

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :sswitch_c
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateLeft:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    .line 199
    :goto_10
    iput p1, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideEdge:I

    .line 176
    return-void

    .line 182
    :sswitch_13
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateTop:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_10

    .line 185
    :sswitch_18
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateRight:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_10

    .line 188
    :sswitch_1d
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateBottom:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_10

    .line 191
    :sswitch_22
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateStart:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_10

    .line 194
    :sswitch_27
    sget-object v0, Landroid/support/v17/leanback/transition/SlideKitkat;->sCalculateEnd:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat;->mSlideCalculator:Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_10

    .line 177
    :sswitch_data_2c
    .sparse-switch
        0x3 -> :sswitch_c
        0x5 -> :sswitch_18
        0x30 -> :sswitch_13
        0x50 -> :sswitch_1d
        0x800003 -> :sswitch_22
        0x800005 -> :sswitch_27
    .end sparse-switch
.end method
