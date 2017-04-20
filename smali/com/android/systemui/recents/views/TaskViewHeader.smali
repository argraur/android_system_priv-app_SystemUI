.class public Lcom/android/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;
    }
.end annotation


# instance fields
.field mAppIconView:Landroid/widget/ImageView;

.field mAppInfoView:Landroid/widget/ImageView;

.field mAppOverlayView:Landroid/widget/FrameLayout;

.field mAppTitleView:Landroid/widget/TextView;

.field private mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field mCornerRadius:I

.field mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mDarkFreeformIcon:Landroid/graphics/drawable/Drawable;

.field mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

.field mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

.field mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimLayerPaint:Landroid/graphics/Paint;

.field mDisabledTaskBarBackgroundColor:I

.field mDismissButton:Landroid/widget/ImageView;

.field private mFocusTimerCountDown:Landroid/os/CountDownTimer;

.field mFocusTimerIndicator:Landroid/widget/ProgressBar;

.field mHeaderBarHeight:I

.field mHeaderButtonPadding:I

.field mHighlightHeight:I

.field mIconView:Landroid/widget/ImageView;

.field mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mLightFreeformIcon:Landroid/graphics/drawable/Drawable;

.field mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

.field mLightInfoIcon:Landroid/graphics/drawable/Drawable;

.field mMoveTaskButton:Landroid/widget/ImageView;

.field mMoveTaskTargetStackId:I

.field private mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field private mShouldDarkenBackgroundColor:Z

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskBarViewDarkTextColor:I

.field mTaskBarViewLightTextColor:I

.field mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTitleView:Landroid/widget/TextView;

.field private mTmpHSL:[F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskViewHeader;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskViewHeader;)[F
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 157
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    .line 175
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    .line 180
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    .line 183
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 187
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    .line 205
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0201ce

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    const v1, 0x7f0201cd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v1, :cond_cf

    .line 212
    const v1, 0x7f10026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 211
    :goto_46
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    .line 214
    const v1, 0x7f10024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    .line 215
    const v1, 0x7f0c0089

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    .line 216
    const v1, 0x7f0c008a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    .line 217
    const v1, 0x7f0201d8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFreeformIcon:Landroid/graphics/drawable/Drawable;

    .line 218
    const v1, 0x7f0201d7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFreeformIcon:Landroid/graphics/drawable/Drawable;

    .line 219
    const v1, 0x7f0201da

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

    .line 220
    const v1, 0x7f0201d9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

    .line 221
    const v1, 0x7f0201d3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    .line 222
    const v1, 0x7f0201d2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    .line 224
    const v1, 0x7f0c0086

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 223
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    .line 227
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    .line 228
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    .line 231
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    return-void

    .line 213
    :cond_cf
    const v1, 0x7f100248

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_46
.end method

.method private hideAppOverlay(Z)V
    .registers 8
    .param p1, "immediate"    # Z

    .prologue
    .line 697
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_5

    .line 698
    return-void

    .line 701
    :cond_5
    if-eqz p1, :cond_f

    .line 702
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 695
    :goto_e
    return-void

    .line 704
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 705
    .local v1, "x":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 706
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    .line 707
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    .line 706
    invoke-static {v3, v1, v2, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 708
    .local v0, "revealAnim":Landroid/animation/Animator;
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 709
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 710
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 716
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_e
.end method

.method private showAppOverlay()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 650
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 651
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 652
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 653
    .local v4, "userId":I
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 654
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_1a

    .line 655
    return-void

    .line 659
    :cond_1a
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v7, :cond_73

    .line 661
    const v7, 0x7f120209

    .line 660
    invoke-static {p0, v7}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    .line 662
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 663
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v8, 0x7f1201af

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    .line 664
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 666
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v8, 0x7f12020c

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    .line 667
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v8, 0x7f12020b

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    .line 669
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v7, v8, v10, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 673
    :cond_73
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v7, v7, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v7, :cond_e3

    .line 675
    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    .line 674
    :goto_88
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedApplicationIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v7, v7, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v7, :cond_e6

    .line 679
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    .line 678
    :goto_a0
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 681
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 683
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v5, v7, v8

    .line 684
    .local v5, "x":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 685
    .local v6, "y":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v9

    int-to-float v9, v9

    .line 685
    invoke-static {v7, v5, v6, v8, v9}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 687
    .local v2, "revealAnim":Landroid/animation/Animator;
    const-wide/16 v8, 0xfa

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 688
    sget-object v7, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 689
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 648
    return-void

    .line 675
    .end local v2    # "revealAnim":Landroid/animation/Animator;
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_e3
    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    goto :goto_88

    .line 680
    :cond_e6
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_a0
.end method

.method private updateBackgroundColor(IF)V
    .registers 9
    .param p1, "color"    # I
    .param p2, "dimAlpha"    # F

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 441
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_3a

    .line 442
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    aget v1, v1, v5

    sub-float v2, v4, p2

    const/high16 v3, -0x42800000    # -0.0625f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v5

    .line 446
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {v1}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->invalidate()V

    .line 440
    :cond_3a
    return-void
.end method

.method private updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 11
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "title"    # Landroid/view/View;
    .param p3, "secondaryButton"    # Landroid/view/View;
    .param p4, "button"    # Landroid/view/View;

    .prologue
    const v5, 0x800005

    const/4 v4, -0x1

    .line 264
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    const/16 v2, 0x30

    .line 264
    invoke-direct {v0, v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 266
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    const v3, 0x800003

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 268
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 270
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x2

    const v2, 0x800013

    .line 269
    invoke-direct {v0, v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 271
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_71

    .line 273
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    mul-int/lit8 v1, v1, 0x2

    .line 272
    :goto_35
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 275
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    if-eqz p3, :cond_59

    .line 277
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 278
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 279
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 281
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 280
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 283
    :cond_59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 284
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 286
    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 285
    invoke-virtual {p4, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 263
    return-void

    .line 274
    :cond_71
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    goto :goto_35
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V
    .registers 9
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "touchExplorationEnabled"    # Z
    .param p3, "disabledInSafeMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 463
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 465
    if-eqz p3, :cond_d7

    .line 466
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    .line 468
    .local v0, "primaryColor":I
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_15

    .line 469
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    .line 471
    :cond_15
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 472
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_2e
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_db

    .line 476
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    .line 475
    :goto_3d
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_df

    .line 478
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 477
    :goto_48
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 482
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_93

    .line 487
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 488
    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    .line 489
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_e3

    .line 490
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

    .line 489
    :goto_7b
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    :goto_7e
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 500
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 503
    :cond_93
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 504
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v1, :cond_b0

    .line 506
    const v1, 0x7f120207

    .line 505
    invoke-static {p0, v1}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    .line 508
    :cond_b0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 510
    iget v2, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v2

    .line 511
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 508
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 515
    :cond_c3
    if-eqz p2, :cond_d6

    .line 516
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 462
    :cond_d6
    return-void

    .line 467
    .end local v0    # "primaryColor":I
    :cond_d7
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .restart local v0    # "primaryColor":I
    goto/16 :goto_8

    .line 476
    :cond_db
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    goto/16 :goto_3d

    .line 478
    :cond_df
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_48

    .line 491
    :cond_e3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_7b

    .line 493
    :cond_e6
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    .line 494
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_f5

    .line 495
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFreeformIcon:Landroid/graphics/drawable/Drawable;

    .line 494
    :goto_f1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7e

    .line 496
    :cond_f5
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFreeformIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_f1
.end method

.method public cancelFocusTimerIndicator()V
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_5

    .line 404
    return-void

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1a

    .line 408
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    :cond_1a
    return-void
.end method

.method public getIconView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getSecondaryColor(IZ)I
    .registers 5
    .param p1, "primaryColor"    # I
    .param p2, "useLightOverlayColor"    # Z

    .prologue
    .line 421
    if-eqz p2, :cond_b

    const/4 v0, -0x1

    .line 422
    .local v0, "overlayColor":I
    :goto_3
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    .line 421
    .end local v0    # "overlayColor":I
    :cond_b
    const/high16 v0, -0x1000000

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 612
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_14

    .line 614
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 611
    :cond_13
    :goto_13
    return-void

    .line 615
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2f

    .line 616
    const-class v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 617
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 620
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "overview_task_dismissed_source"

    .line 621
    const/4 v3, 0x2

    .line 620
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_13

    .line 622
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4d

    .line 623
    const-class v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 624
    .restart local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 625
    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    .line 624
    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_13

    .line 626
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4d
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_60

    .line 627
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_13

    .line 628
    :cond_60
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_13

    .line 629
    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    goto :goto_13
.end method

.method public onConfigurationChanged()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f100247

    const v4, 0x7f100245

    const v11, 0x7f100246

    const v1, 0x7f100244

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 296
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 303
    const v7, 0x7f100268

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    .line 296
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v8

    .line 304
    .local v8, "headerBarHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 311
    const v7, 0x7f100269

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v12

    move v5, v11

    move v6, v12

    .line 304
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v9

    .line 312
    .local v9, "headerButtonPadding":I
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    if-ne v8, v0, :cond_39

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    if-eq v9, v0, :cond_55

    .line 313
    :cond_39
    iput v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    .line 314
    iput v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 315
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_55

    .line 317
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v13, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 292
    :cond_55
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 607
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    add-int/2addr v0, v2

    int-to-float v4, v0

    .line 374
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    .line 373
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 369
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 244
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 247
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const v1, 0x7f120080

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    .line 248
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 249
    const v1, 0x7f120081

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    .line 250
    const v1, 0x7f120206

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    .line 251
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 252
    const v1, 0x7f120205

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    .line 255
    :cond_3b
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 243
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 324
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 323
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->showAppOverlay()V

    .line 637
    return v2

    .line 638
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_12

    .line 639
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    .line 640
    return v2

    .line 642
    :cond_12
    return v1
.end method

.method public onTaskDataLoaded()V
    .registers 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 528
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_f
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .registers 15
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 336
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v9, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 338
    const/4 v6, 0x1

    .line 339
    .local v6, "showTitle":Z
    const/4 v5, 0x1

    .line 340
    .local v5, "showMoveIcon":Z
    const/4 v4, 0x1

    .line 341
    .local v4, "showDismissIcon":Z
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v8

    sub-int v3, p1, v8

    .line 343
    .local v3, "rightInset":I
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v8, :cond_53

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 346
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 347
    .local v0, "appIconWidth":I
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v11, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v7, v8

    .line 348
    .local v7, "titleWidth":I
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 349
    .local v1, "dismissWidth":I
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_83

    .line 350
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 352
    .local v2, "moveTaskWidth":I
    :goto_41
    add-int v8, v0, v1

    add-int/2addr v8, v2

    add-int/2addr v8, v7

    if-lt p1, v8, :cond_85

    const/4 v6, 0x1

    .line 353
    :goto_48
    add-int v8, v0, v1

    add-int/2addr v8, v2

    if-lt p1, v8, :cond_87

    const/4 v5, 0x1

    .line 354
    :goto_4e
    add-int v8, v0, v1

    if-lt p1, v8, :cond_89

    const/4 v4, 0x1

    .line 357
    .end local v0    # "appIconWidth":I
    .end local v1    # "dismissWidth":I
    .end local v2    # "moveTaskWidth":I
    .end local v7    # "titleWidth":I
    :cond_53
    :goto_53
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_8b

    move v8, v9

    :goto_58
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_6d

    .line 359
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_8d

    move v8, v9

    :goto_64
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    int-to-float v11, v3

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 362
    :cond_6d
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_72

    move v10, v9

    :cond_72
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    int-to-float v10, v3

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0, v9, v9, p1, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLeftTopRightBottom(IIII)V

    .line 335
    return-void

    .restart local v0    # "appIconWidth":I
    .restart local v1    # "dismissWidth":I
    .restart local v7    # "titleWidth":I
    :cond_83
    move v2, v9

    .line 351
    goto :goto_41

    .line 352
    .restart local v2    # "moveTaskWidth":I
    :cond_85
    const/4 v6, 0x0

    goto :goto_48

    .line 353
    :cond_87
    const/4 v5, 0x0

    goto :goto_4e

    .line 354
    :cond_89
    const/4 v4, 0x0

    goto :goto_53

    .end local v0    # "appIconWidth":I
    .end local v1    # "dismissWidth":I
    .end local v2    # "moveTaskWidth":I
    .end local v7    # "titleWidth":I
    :cond_8b
    move v8, v10

    .line 357
    goto :goto_58

    :cond_8d
    move v8, v10

    .line 359
    goto :goto_64
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    .line 238
    return-void
.end method

.method resetNoUserInteractionState()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 592
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 595
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    .line 596
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 591
    :cond_25
    return-void
.end method

.method public setDimAlpha(F)V
    .registers 4
    .param p1, "dimAlpha"    # F

    .prologue
    .line 430
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 431
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    .line 432
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    .line 429
    :cond_1b
    return-void
.end method

.method public setNoUserInteractionState()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 575
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    .line 580
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 582
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 574
    :cond_38
    return-void
.end method

.method public setShouldDarkenBackgroundColor(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    .line 455
    return-void
.end method

.method public startFocusTimerIndicator(I)V
    .registers 8
    .param p1, "duration"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_5

    .line 380
    return-void

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1e

    .line 387
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 389
    :cond_1e
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$1;

    int-to-long v2, p1

    .line 390
    const-wide/16 v4, 0x1e

    move-object v1, p0

    .line 389
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;JJ)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    .line 378
    return-void
.end method

.method startNoUserInteractionAnimation()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 544
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_68

    .line 547
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 549
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 547
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 550
    int-to-long v2, v0

    .line 547
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 555
    :goto_39
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_67

    .line 556
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6e

    .line 557
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 559
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 561
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 559
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 562
    int-to-long v2, v0

    .line 559
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 542
    :cond_67
    :goto_67
    return-void

    .line 553
    :cond_68
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_39

    .line 565
    :cond_6e
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_67
.end method

.method unbindFromTask(Z)V
    .registers 4
    .param p1, "touchExplorationEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 534
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 535
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    if-eqz p1, :cond_10

    .line 537
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 533
    :cond_10
    return-void
.end method
