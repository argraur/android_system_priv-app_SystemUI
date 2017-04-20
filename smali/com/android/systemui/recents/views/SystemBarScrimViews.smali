.class public Lcom/android/systemui/recents/views/SystemBarScrimViews;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasDockedTasks:Z

.field private mHasNavBarScrim:Z

.field private mHasTransposedNavBar:Z

.field private mNavBarScrimEnterDuration:I

.field private mNavBarScrimView:Landroid/view/View;

.field private mShouldAnimateNavBarScrim:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .registers 4
    .param p1, "activity"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mContext:Landroid/content/Context;

    .line 52
    const v0, 0x7f1201ff

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x7f0e003a

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    .line 56
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 57
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    .line 50
    return-void
.end method

.method private animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V
    .registers 8
    .param p1, "visible"    # Z
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    const/4 v4, 0x6

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "toY":I
    if-eqz p1, :cond_39

    .line 89
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 94
    :goto_16
    sget-object v1, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    if-eq p2, v1, :cond_40

    .line 95
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 96
    int-to-float v2, v0

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 97
    invoke-virtual {p2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 98
    invoke-virtual {p2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 86
    :goto_38
    return-void

    .line 92
    :cond_39
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_16

    .line 101
    :cond_40
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_38
.end method

.method private animateScrimToCurrentNavBarState(Z)V
    .registers 5
    .param p1, "hasStackTasks"    # Z

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v1

    .line 177
    .local v1, "hasNavBarScrim":Z
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eq v2, v1, :cond_13

    .line 178
    if-eqz v1, :cond_16

    .line 179
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 181
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :goto_10
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 183
    .end local v0    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_13
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 175
    return-void

    .line 180
    :cond_16
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_10
.end method

.method private createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;
    .registers 5
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x6

    .line 190
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 190
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    return-object v0
.end method

.method private isNavBarScrimRequired(Z)Z
    .registers 4
    .param p1, "hasStackTasks"    # Z

    .prologue
    const/4 v0, 0x0

    .line 109
    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasTransposedNavBar:Z

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private prepareEnterRecentsAnimation(ZZ)V
    .registers 5
    .param p1, "hasNavBarScrim"    # Z
    .param p2, "animateNavBarScrim"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 77
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    .line 79
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_13

    .line 80
    :cond_e
    const/4 v0, 0x4

    .line 79
    :goto_f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void

    .line 80
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 149
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_e

    .line 150
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 152
    :cond_e
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->hasStackTasks:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 148
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 133
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_e

    .line 135
    const/16 v1, 0xc8

    .line 134
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 136
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 132
    .end local v0    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_e
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    const/4 v3, 0x6

    .line 118
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_1e

    .line 119
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v1, :cond_1f

    .line 120
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 121
    iget v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    .line 120
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v1

    .line 122
    sget-object v2, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 120
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 124
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :goto_1a
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 117
    .end local v0    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_1e
    return-void

    .line 123
    :cond_1f
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_1a
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    .line 157
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 155
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 141
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_e

    .line 143
    const/16 v1, 0xc8

    .line 142
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 144
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 140
    .end local v0    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_e
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 167
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    .line 162
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_a

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 160
    :cond_a
    return-void
.end method

.method public updateNavBarScrim(ZZLcom/android/systemui/recents/views/AnimationProps;)V
    .registers 5
    .param p1, "animateNavBarScrim"    # Z
    .param p2, "hasStackTasks"    # Z
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 65
    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation(ZZ)V

    .line 66
    if-eqz p1, :cond_f

    if-eqz p3, :cond_f

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 64
    :cond_f
    return-void
.end method
