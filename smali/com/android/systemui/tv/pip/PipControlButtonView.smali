.class public Lcom/android/systemui/tv/pip/PipControlButtonView;
.super Landroid/widget/RelativeLayout;
.source "PipControlButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipControlButtonView$1;
    }
.end annotation


# instance fields
.field private mButtonFocusGainAnimator:Landroid/animation/Animator;

.field private mButtonFocusLossAnimator:Landroid/animation/Animator;

.field mButtonImageView:Landroid/widget/ImageView;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mIconImageView:Landroid/widget/ImageView;

.field private final mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mTextFocusGainAnimator:Landroid/animation/Animator;

.field private mTextFocusLossAnimator:Landroid/animation/Animator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    new-instance v3, Lcom/android/systemui/tv/pip/PipControlButtonView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/tv/pip/PipControlButtonView$1;-><init>(Lcom/android/systemui/tv/pip/PipControlButtonView;)V

    .line 46
    iput-object v3, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 78
    const-string/jumbo v4, "layout_inflater"

    .line 77
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400f9

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    const v3, 0x7f120080

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mIconImageView:Landroid/widget/ImageView;

    .line 82
    const v3, 0x7f120116

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    .line 83
    const v3, 0x7f120273

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 85
    const v3, 0x1010119

    const v4, 0x101014f

    filled-new-array {v3, v4}, [I

    move-result-object v2

    .line 87
    .local v2, "values":[I
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 89
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setImageResource(I)V

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setText(I)V

    .line 92
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method

.method private static cancelAnimator(Landroid/animation/Animator;)V
    .registers 2
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 142
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 140
    :cond_9
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 5

    .prologue
    const v3, 0x7f0500c3

    const v2, 0x7f0500c2

    .line 97
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 180
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_29

    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 179
    return-void

    .line 185
    :cond_29
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public setImageResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 121
    return-void
.end method

.method public setText(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    return-void
.end method

.method public startFocusGainAnimation()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    .line 157
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 149
    :cond_20
    return-void
.end method

.method public startFocusLossAnimation()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 172
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 164
    :cond_1c
    return-void
.end method
