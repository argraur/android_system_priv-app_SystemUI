.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PageIndicator$1;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/PageIndicator;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/PageIndicator;I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 215
    new-instance v0, Lcom/android/systemui/qs/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PageIndicator$1;-><init>(Lcom/android/systemui/qs/PageIndicator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 37
    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 39
    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    .line 41
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    .line 35
    return-void
.end method

.method private animate(II)V
    .registers 15
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 107
    shr-int/lit8 v2, p1, 0x1

    .line 108
    .local v2, "fromIndex":I
    shr-int/lit8 v7, p2, 0x1

    .line 112
    .local v7, "toIndex":I
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 114
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_30

    move v3, v8

    .line 115
    .local v3, "fromTransition":Z
    :goto_e
    if-eqz v3, :cond_34

    if-le p1, p2, :cond_32

    :goto_12
    const/4 v4, 0x1

    .line 116
    .local v4, "isAState":Z
    :goto_13
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 117
    .local v1, "firstIndex":I
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 118
    .local v6, "secondIndex":I
    if-ne v6, v1, :cond_1f

    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 121
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    .local v0, "first":Landroid/widget/ImageView;
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 123
    .local v5, "second":Landroid/widget/ImageView;
    if-eqz v0, :cond_2f

    if-nez v5, :cond_37

    .line 125
    :cond_2f
    return-void

    .end local v0    # "first":Landroid/widget/ImageView;
    .end local v1    # "firstIndex":I
    .end local v3    # "fromTransition":Z
    .end local v4    # "isAState":Z
    .end local v5    # "second":Landroid/widget/ImageView;
    .end local v6    # "secondIndex":I
    :cond_30
    move v3, v9

    .line 114
    goto :goto_e

    .line 115
    .restart local v3    # "fromTransition":Z
    :cond_32
    const/4 v4, 0x0

    .restart local v4    # "isAState":Z
    goto :goto_13

    .end local v4    # "isAState":Z
    :cond_34
    if-ge p1, p2, :cond_32

    goto :goto_12

    .line 128
    .restart local v0    # "first":Landroid/widget/ImageView;
    .restart local v1    # "firstIndex":I
    .restart local v4    # "isAState":Z
    .restart local v5    # "second":Landroid/widget/ImageView;
    .restart local v6    # "secondIndex":I
    :cond_37
    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v10

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 130
    invoke-direct {p0, v3, v4, v9}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v10

    invoke-direct {p0, v0, v10}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 131
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 133
    invoke-direct {p0, v3, v4, v8}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v9

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 134
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 136
    iput-boolean v8, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    .line 104
    return-void
.end method

.method private getAlpha(Z)F
    .registers 3
    .param p1, "isMajor"    # Z

    .prologue
    .line 140
    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    return v0

    :cond_5
    const v0, 0x3e99999a    # 0.3f

    goto :goto_4
.end method

.method private getTransition(ZZZ)I
    .registers 5
    .param p1, "fromB"    # Z
    .param p2, "isMajorAState"    # Z
    .param p3, "isMajor"    # Z

    .prologue
    .line 154
    if-eqz p3, :cond_18

    .line 155
    if-eqz p1, :cond_e

    .line 156
    if-eqz p2, :cond_a

    .line 157
    const v0, 0x7f02018c

    return v0

    .line 159
    :cond_a
    const v0, 0x7f02018e

    return v0

    .line 162
    :cond_e
    if-eqz p2, :cond_14

    .line 163
    const v0, 0x7f02018a

    return v0

    .line 165
    :cond_14
    const v0, 0x7f020190

    return v0

    .line 169
    :cond_18
    if-eqz p1, :cond_24

    .line 170
    if-eqz p2, :cond_20

    .line 171
    const v0, 0x7f020196

    return v0

    .line 173
    :cond_20
    const v0, 0x7f020194

    return v0

    .line 176
    :cond_24
    if-eqz p2, :cond_2a

    .line 177
    const v0, 0x7f020198

    return v0

    .line 179
    :cond_2a
    const v0, 0x7f020192

    return v0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .registers 7
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "res"    # I

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 145
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 147
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/qs/PageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return-void
.end method

.method private setIndex(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 95
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_26

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 98
    .local v2, "v":Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 99
    const v3, 0x7f020189

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    if-ne v1, p1, :cond_24

    const/4 v3, 0x1

    :goto_1a
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 100
    :cond_24
    const/4 v3, 0x0

    goto :goto_1a

    .line 93
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_26
    return-void
.end method

.method private setPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 84
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    .line 90
    :goto_15
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 82
    return-void

    .line 88
    :cond_18
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    goto :goto_15
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 206
    .local v0, "N":I
    if-nez v0, :cond_8

    .line 207
    return-void

    .line 209
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_21

    .line 210
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    mul-int v2, v3, v1

    .line 211
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 204
    .end local v2    # "left":I
    :cond_21
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 188
    .local v0, "N":I
    if-nez v0, :cond_c

    .line 189
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 190
    return-void

    .line 192
    :cond_c
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 194
    .local v4, "widthChildSpec":I
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 196
    .local v1, "heightChildSpec":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v0, :cond_25

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 199
    :cond_25
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    add-int v3, v5, v6

    .line 200
    .local v3, "width":I
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/PageIndicator;->setMeasuredDimension(II)V

    .line 186
    return-void
.end method

.method public setLocation(F)V
    .registers 10
    .param p1, "location"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    float-to-int v0, p1

    .line 63
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 64
    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 63
    const v7, 0x7f0f0418

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    shl-int/lit8 v5, v0, 0x1

    int-to-float v6, v0

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_50

    :goto_2d
    or-int v2, v5, v3

    .line 68
    .local v2, "position":I
    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 69
    .local v1, "lastPosition":I
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4d

    .line 70
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    :cond_4d
    if-ne v2, v1, :cond_52

    return-void

    .end local v1    # "lastPosition":I
    .end local v2    # "position":I
    :cond_50
    move v3, v4

    .line 65
    goto :goto_2d

    .line 73
    .restart local v1    # "lastPosition":I
    .restart local v2    # "position":I
    :cond_52
    iget-boolean v3, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v3, :cond_60

    .line 75
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void

    .line 79
    :cond_60
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    .line 61
    return-void
.end method

.method public setNumPages(I)V
    .registers 6
    .param p1, "numPages"    # I

    .prologue
    .line 45
    const/4 v1, 0x1

    if-le p1, v1, :cond_24

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setVisibility(I)V

    .line 46
    iget-boolean v1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v1, :cond_14

    .line 47
    const-string/jumbo v1, "PageIndicator"

    const-string/jumbo v2, "setNumPages during animation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_26

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->removeViewAt(I)V

    goto :goto_14

    .line 45
    :cond_24
    const/4 v1, 0x4

    goto :goto_4

    .line 52
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    if-le p1, v1, :cond_46

    .line 53
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "v":Landroid/widget/ImageView;
    const v1, 0x7f020191

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/PageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_26

    .line 58
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_46
    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    shr-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 44
    return-void
.end method
