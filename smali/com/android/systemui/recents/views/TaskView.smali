.class public Lcom/android/systemui/recents/views/TaskView;
.super Lcom/android/systemui/recents/views/FixedSizeFrameLayout;
.source "TaskView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndCancelledEvent_event_LambdaImpl0;,
        Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndEvent_event_LambdaImpl0;,
        Lcom/android/systemui/recents/views/TaskView$1;,
        Lcom/android/systemui/recents/views/TaskView$2;,
        Lcom/android/systemui/recents/views/TaskView$3;,
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# static fields
.field public static final DIM_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_OUTLINE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionButtonTranslationZ:F

.field private mActionButtonView:Landroid/view/View;

.field private mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field private mClipViewInStack:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAnimator:Landroid/animation/ObjectAnimator;

.field private mDisabledAppToast:Landroid/widget/Toast;

.field private mDownTouchPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "header_"
    .end annotation
.end field

.field private mIncompatibleAppToastView:Landroid/view/View;

.field private mIsDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mOutlineAnimator:Landroid/animation/ObjectAnimator;

.field private final mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "task_"
    .end annotation
.end field

.field protected mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "thumbnail_"
    .end annotation
.end field

.field private mTmpAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTransformAnimation:Landroid/animation/AnimatorSet;

.field private mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "view_bounds_"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/model/Task;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    const-string/jumbo v1, "dimAlphaWithoutHeader"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Ljava/lang/String;)V

    .line 83
    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    .line 101
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$2;

    const-string/jumbo v1, "dimAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Ljava/lang/String;)V

    .line 100
    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    .line 118
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$3;

    const-string/jumbo v1, "viewOutlineAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$3;-><init>(Ljava/lang/String;)V

    .line 117
    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 148
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    .line 160
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    .line 178
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 179
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->createOutlineProvider()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    .line 181
    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v2, :cond_35

    .line 182
    new-instance v2, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_35
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 185
    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_recents_views_TaskView_lambda$1()V
    .registers 2

    .prologue
    .line 706
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_recents_views_TaskView_lambda$2()V
    .registers 2

    .prologue
    .line 715
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 0
    return-void
.end method

.method public cancelTransformAnimation()V
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 363
    return-void
.end method

.method protected createOutlineProvider()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .registers 4

    .prologue
    .line 212
    new-instance v0, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 213
    const v2, 0x7f100249

    .line 212
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method dismissTask()V
    .registers 4

    .prologue
    .line 392
    move-object v1, p0

    .line 393
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v0, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    .line 394
    .local v0, "dismissEvent":Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;
    new-instance v2, Lcom/android/systemui/recents/views/TaskView$5;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/recents/views/TaskView$5;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 402
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 390
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "TaskView"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    const-string/jumbo v1, " mTask="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 724
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 726
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 719
    return-void
.end method

.method public getDimAlpha()F
    .registers 2

    .prologue
    .line 452
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    return v0
.end method

.method public getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/recents/model/Task;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V
    .registers 9
    .param p1, "fadeOut"    # Z
    .param p2, "fadeOutDuration"    # I
    .param p3, "scaleDown"    # Z
    .param p4, "animListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 502
    if-eqz p1, :cond_42

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_42

    .line 503
    if-eqz p3, :cond_20

    .line 504
    const v0, 0x3f666666    # 0.9f

    .line 505
    .local v0, "toScale":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 509
    .end local v0    # "toScale":F
    :cond_20
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 511
    int-to-long v2, p2

    .line 509
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 512
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 509
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 513
    new-instance v2, Lcom/android/systemui/recents/views/TaskView$6;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/animation/Animator$AnimatorListener;)V

    .line 509
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 501
    :cond_41
    :goto_41
    return-void

    .line 524
    :cond_42
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 525
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 526
    if-eqz p4, :cond_41

    .line 527
    invoke-interface {p4, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_41
.end method

.method isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z
    .registers 3
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 357
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->isSame(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    .line 356
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected measureContents(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 274
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 275
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 276
    .local v1, "heightWithoutPadding":I
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 277
    .local v2, "widthSpec":I
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 280
    .local v0, "heightSpec":I
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->measureChildren(II)V

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 273
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    .line 714
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndCancelledEvent_event_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndCancelledEvent_event_LambdaImpl0;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 712
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    .line 703
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-nez v0, :cond_e

    .line 704
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndEvent_event_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndEvent_event_LambdaImpl0;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 709
    :cond_e
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 702
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 647
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    if-eqz v0, :cond_2f

    .line 648
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 649
    .local v6, "context":Landroid/content/Context;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v1, v0, v2

    const v1, 0x7f0f02da

    invoke-virtual {v6, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 650
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    if-eqz v0, :cond_23

    .line 651
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 653
    :cond_23
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    .line 654
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 655
    return-void

    .line 658
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_2f
    const/4 v5, 0x0

    .line 659
    .local v5, "screenPinningRequested":Z
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v0, :cond_3b

    .line 661
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 662
    const/4 v5, 0x1

    .line 664
    :cond_3b
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 668
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    const/16 v2, 0x115

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 646
    return-void
.end method

.method protected onConfigurationChanged()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 243
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 224
    const v0, 0x7f120204

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 225
    const v0, 0x7f120200

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 226
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateClipToTaskBar(Landroid/view/View;)V

    .line 227
    const v0, 0x7f12020f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    .line 222
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 267
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 269
    :cond_1f
    invoke-super {p0, p1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 675
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 676
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v1, 0x0

    .line 677
    .local v1, "inBounds":Z
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v3, v3, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 678
    .local v0, "clipBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 681
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 686
    .end local v1    # "inBounds":Z
    :goto_2c
    if-ne p1, p0, :cond_36

    if-eqz v1, :cond_36

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 697
    :cond_36
    return v5

    .line 684
    .restart local v1    # "inBounds":Z
    :cond_37
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_4d

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_4d

    const/4 v1, 0x1

    goto :goto_2c

    :cond_4d
    const/4 v1, 0x0

    goto :goto_2c

    .line 688
    .end local v1    # "inBounds":Z
    :cond_4f
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 690
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v5

    sub-float v5, v7, v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 691
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v5

    sub-float v5, v7, v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 693
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 694
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-direct {v4, v5, p0, v6}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 695
    const/4 v3, 0x1

    return v3
.end method

.method public onPrepareLaunchTargetForEnterAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setDimAlphaWithoutHeader(F)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 540
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 541
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 535
    :cond_1a
    return-void
.end method

.method onReload(Z)V
    .registers 3
    .param p1, "isResumingFromVisible"    # Z

    .prologue
    .line 197
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v0

    if-nez v0, :cond_d

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetNoUserInteractionState()V

    .line 200
    :cond_d
    if-nez p1, :cond_12

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 196
    :cond_12
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    .line 250
    if-lez p1, :cond_29

    if-lez p2, :cond_29

    .line 251
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 248
    :cond_29
    return-void
.end method

.method public onStartFrontTaskEnterAnimation(Z)V
    .registers 3
    .param p1, "screenPinningEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 591
    if-eqz p1, :cond_6

    .line 592
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 590
    :cond_6
    return-void
.end method

.method public onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .registers 11
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "screenPinningEnabled"    # Z
    .param p4, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 548
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 551
    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 552
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 554
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    .line 553
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    aput v3, v2, v4

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v3, v2, v5

    .line 553
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 555
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 558
    if-eqz p3, :cond_40

    .line 559
    invoke-virtual {p0, v5, p2}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 562
    :cond_40
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v1, :cond_66

    .line 563
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_66

    .line 564
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 565
    const/high16 v2, 0x3f800000    # 1.0f

    .line 564
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 566
    int-to-long v2, p2

    .line 564
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 567
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 564
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 547
    :cond_66
    return-void
.end method

.method public onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .registers 10
    .param p1, "duration"    # I
    .param p2, "screenPinningRequested"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 575
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 578
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 580
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    .line 579
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 580
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v5

    aput v5, v4, v2

    const/4 v5, 0x0

    aput v5, v4, v3

    .line 579
    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 581
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 583
    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 585
    if-eqz p2, :cond_3c

    move v1, v2

    .line 586
    :goto_34
    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 584
    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    .line 574
    return-void

    :cond_3c
    move v1, v3

    .line 585
    goto :goto_34
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .registers 12
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "touchExplorationEnabled"    # Z
    .param p3, "displayOrientation"    # I
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 600
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 601
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    .line 602
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 603
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v2, p0}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 604
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v2, :cond_5e

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v2

    :goto_18
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    .line 605
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v2, v4, v5, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    .line 606
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 608
    iget-boolean v2, p1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v2, :cond_60

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 609
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-nez v2, :cond_58

    .line 611
    const v2, 0x7f12020d

    .line 610
    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    .line 612
    const v2, 0x102000b

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 613
    .local v0, "msg":Landroid/widget/TextView;
    const v2, 0x7f0f02dc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 615
    .end local v0    # "msg":Landroid/widget/TextView;
    :cond_58
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    move v2, v3

    .line 604
    goto :goto_18

    .line 616
    :cond_60
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v2, :cond_5d

    .line 617
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5d
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .registers 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskDataLoaded(Landroid/app/ActivityManager$TaskThumbnailInfo;)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 622
    return-void
.end method

.method public onTaskDataUnloaded()V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 632
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask(Z)V

    .line 629
    return-void
.end method

.method public onTaskStackIdChanged()V
    .registers 5

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 637
    return-void
.end method

.method resetNoUserInteractionState()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    .line 385
    return-void
.end method

.method resetViewProperties()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->reset()V

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->reset()V

    .line 339
    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Lcom/android/systemui/recents/views/TaskView;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_48

    .line 348
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_48
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 189
    return-void
.end method

.method setClipViewInStack(Z)V
    .registers 3
    .param p1, "clip"    # Z

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_f

    .line 420
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 421
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_f

    .line 422
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    .line 418
    :cond_f
    return-void
.end method

.method public setDimAlpha(F)V
    .registers 3
    .param p1, "dimAlpha"    # F

    .prologue
    .line 435
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    .line 436
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 434
    return-void
.end method

.method public setDimAlphaWithoutHeader(F)V
    .registers 3
    .param p1, "dimAlpha"    # F

    .prologue
    .line 444
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    .line 445
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 443
    return-void
.end method

.method public setFocusedState(ZZ)V
    .registers 4
    .param p1, "isFocused"    # Z
    .param p2, "requestViewFocus"    # Z

    .prologue
    .line 459
    if-eqz p1, :cond_f

    .line 460
    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 458
    :cond_a
    :goto_a
    return-void

    .line 461
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    goto :goto_a

    .line 464
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    if-eqz v0, :cond_a

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    goto :goto_a
.end method

.method setNoUserInteractionState()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 380
    return-void
.end method

.method public setTouchEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 371
    if-eqz p1, :cond_7

    move-object v0, p0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    return-void

    .line 371
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method shouldClipViewInStack()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 412
    :cond_f
    return v1

    .line 414
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    return v0
.end method

.method public showActionButton(ZI)V
    .registers 7
    .param p1, "fadeIn"    # Z
    .param p2, "fadeInDuration"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 477
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_35

    .line 480
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 484
    int-to-long v2, p2

    .line 480
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 485
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 480
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 476
    :goto_34
    return-void

    .line 488
    :cond_35
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_34
.end method

.method public startNoUserInteractionAnimation()V
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 375
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 13
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "toAnimation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 287
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 288
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 291
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 292
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v2, :cond_5a

    move v2, v3

    :goto_18
    invoke-virtual {p1, p0, v5, p2, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 293
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->isImmediate()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_32

    .line 295
    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    .line 297
    :cond_32
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_47

    .line 298
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    .line 301
    :cond_47
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 302
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 304
    :cond_54
    if-eqz p3, :cond_59

    .line 305
    invoke-interface {p3, v6}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 286
    :cond_59
    :goto_59
    return-void

    :cond_5a
    move v2, v4

    .line 292
    goto :goto_18

    .line 309
    :cond_5c
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v2

    iget v5, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_87

    .line 310
    sget-object v2, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v6

    aput v6, v5, v3

    .line 311
    iget v6, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v6, v5, v4

    .line 310
    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 312
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v5}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_87
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v2

    iget v5, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_b6

    .line 315
    sget-object v2, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    .line 316
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v6

    aput v6, v5, v3

    iget v6, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    aput v6, v5, v4

    .line 315
    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    .line 317
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v5}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_b6
    if-eqz p3, :cond_cc

    .line 320
    filled-new-array {v3, v4}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 321
    .local v1, "updateCallbackAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v7, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v1    # "updateCallbackAnim":Landroid/animation/ValueAnimator;
    :cond_cc
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Lcom/android/systemui/recents/views/AnimationProps;->createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    .line 327
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 328
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto/16 :goto_59
.end method
