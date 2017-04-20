.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$1;,
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mStatusBarHeight:I

.field mTaskBarHeight:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field protected mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 145
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 153
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    .line 159
    new-instance v1, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v3, 0xe1

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 173
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 174
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 177
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 180
    new-instance v1, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    .line 181
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 182
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 185
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 172
    return-void
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    .line 677
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 680
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 681
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 684
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 685
    .local v2, "windowRectWithInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 686
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 687
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 688
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 689
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 676
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .registers 2

    .prologue
    .line 561
    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 562
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 563
    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 803
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 804
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p2, :cond_68

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_68

    .line 805
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v5

    .line 806
    :try_start_e
    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v4, :cond_63

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v1

    .line 807
    :goto_16
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 808
    iget-object v7, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    .line 807
    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 812
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 813
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 816
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 817
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_42

    .line 818
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 820
    :cond_42
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 822
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 823
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 824
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 825
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_5d
    .catchall {:try_start_e .. :try_end_5d} :catchall_65

    monitor-exit v5

    .line 828
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 806
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_63
    const/4 v1, 0x0

    .local v1, "disabledInSafeMode":Z
    goto :goto_16

    .line 805
    .end local v1    # "disabledInSafeMode":Z
    :catchall_65
    move-exception v4

    monitor-exit v5

    throw v4

    .line 830
    :cond_68
    return-object v5
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .registers 27
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    .line 730
    if-eqz p1, :cond_9c

    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_9c

    .line 731
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v15, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v18

    .line 733
    .local v18, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    .line 734
    .local v4, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v17

    .line 736
    .local v17, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 739
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v14, v6, -0x1

    .local v14, "i":I
    :goto_2d
    if-ltz v14, :cond_7f

    .line 740
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    .line 741
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 743
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    move-object/from16 v9, p3

    .line 742
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 745
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 746
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 745
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 747
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 748
    .local v20, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 749
    new-instance v6, Landroid/view/AppTransitionAnimationSpec;

    iget-object v8, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v20

    invoke-direct {v6, v8, v7, v0}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v20    # "toTaskRect":Landroid/graphics/Rect;
    :cond_7c
    add-int/lit8 v14, v14, -0x1

    goto :goto_2d

    .line 752
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_7f
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v16, v0

    .line 753
    .local v16, "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 754
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 755
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    .line 754
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v6, v0, v8, v9, v1}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    return-object v6

    .line 758
    .end local v4    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v14    # "i":I
    .end local v15    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .end local v16    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    .end local v17    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v18    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_9c
    new-instance v19, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 759
    .local v19, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v22

    .line 762
    .local v22, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 761
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 763
    .restart local v7    # "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_e5

    .line 764
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    .line 765
    .local v21, "toTaskRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 766
    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    move-object/from16 v0, v21

    iget v9, v0, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    .line 767
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    .line 765
    invoke-static/range {v6 .. v13}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    return-object v6

    .line 770
    .end local v21    # "toTaskRect":Landroid/graphics/RectF;
    :cond_e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    return-object v6
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .registers 11
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 780
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 781
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 782
    .local v1, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_2a

    .line 783
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 791
    :goto_f
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 792
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 793
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 794
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    .line 793
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 795
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    .line 786
    :cond_2a
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 787
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_f
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .registers 9
    .param p1, "growTarget"    # I

    .prologue
    .line 914
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 915
    const/4 v0, 0x0

    return-object v0

    .line 917
    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 918
    .local v2, "result":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 920
    .local v6, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 921
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    .line 919
    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 922
    return-object v2
.end method

.method private preloadIcon(I)V
    .registers 6
    .param p1, "runningTaskId"    # I

    .prologue
    .line 697
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 698
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 699
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 700
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 701
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 695
    return-void
.end method

.method private reloadResources()V
    .registers 11

    .prologue
    const v4, 0x7f100245

    const v1, 0x7f100244

    .line 570
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 573
    .local v9, "res":Landroid/content/res/Resources;
    const v0, 0x105001b

    .line 572
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mStatusBarHeight:I

    .line 575
    const v0, 0x105001c

    .line 574
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarHeight:I

    .line 577
    const v0, 0x105001e

    .line 576
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarWidth:I

    .line 578
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 585
    const v7, 0x7f100268

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    .line 578
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 587
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 588
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0400d1

    .line 589
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 588
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 590
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutDirection(I)V

    .line 569
    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;)V
    .registers 6
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 929
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 930
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 935
    if-eqz p1, :cond_2e

    .line 936
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 940
    :goto_21
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 928
    return-void

    .line 938
    :cond_2e
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_21
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .registers 16
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    .line 603
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 604
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 605
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 606
    .local v9, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 607
    if-eqz p2, :cond_dd

    .line 608
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 613
    .local v2, "windowRect":Landroid/graphics/Rect;
    :goto_18
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 614
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 615
    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 617
    :cond_27
    invoke-direct {p0, v9, v2}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 618
    invoke-virtual {v2, v12, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 620
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 623
    .local v0, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 624
    if-eqz p1, :cond_dc

    .line 625
    iget v3, v9, Landroid/graphics/Rect;->top:I

    .line 626
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 625
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 627
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 628
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 629
    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 628
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 630
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v12}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 632
    const/4 v11, 0x0

    .line 633
    .local v11, "taskViewWidth":I
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 634
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getGridAlgorithm()Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-result-object v7

    .line 635
    .local v7, "gridLayout":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    invoke-virtual {v7, v2}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 637
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    new-instance v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v4}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 636
    invoke-virtual {v7, v12, v3, v4, v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v11, v3

    .line 645
    .end local v7    # "gridLayout":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    :cond_7a
    :goto_7a
    if-lez v11, :cond_dc

    .line 646
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    .line 647
    :try_start_7f
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    if-ne v3, v11, :cond_91

    .line 648
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v5, :cond_bc

    .line 649
    :cond_91
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 650
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setShouldDarkenBackgroundColor(Z)V

    .line 651
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 653
    :cond_a4
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->forceLayout()V

    .line 654
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 655
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 656
    iget v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 654
    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 658
    :cond_bc
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v6, v12, v11, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_c5
    .catchall {:try_start_7f .. :try_end_c5} :catchall_f2

    monitor-exit v4

    .line 662
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_d2

    .line 663
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v11, :cond_f5

    .line 666
    :cond_d2
    :goto_d2
    iget v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 665
    invoke-static {v11, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 602
    .end local v11    # "taskViewWidth":I
    :cond_dc
    return-void

    .line 609
    .end local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v2    # "windowRect":Landroid/graphics/Rect;
    :cond_dd
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2    # "windowRect":Landroid/graphics/Rect;
    goto/16 :goto_18

    .line 639
    .restart local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v11    # "taskViewWidth":I
    :cond_e3
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 640
    .local v10, "taskViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 641
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    goto :goto_7a

    .line 646
    .end local v10    # "taskViewBounds":Landroid/graphics/Rect;
    :catchall_f2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 664
    :cond_f5
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v4, :cond_dc

    goto :goto_d2
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .registers 1

    .prologue
    .line 387
    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 541
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 545
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 546
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 549
    if-nez p2, :cond_23

    move v2, v4

    .line 553
    :goto_1b
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    .line 547
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 540
    :cond_22
    return-void

    :cond_23
    move v2, v1

    .line 549
    goto :goto_1b
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .registers 6

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 721
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 719
    const v2, 0x7f0500a8

    .line 720
    const v3, 0x7f0500a9

    .line 721
    const/4 v4, 0x0

    .line 718
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .registers 6

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 711
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 709
    const v2, 0x7f0500aa

    .line 710
    const v3, 0x7f0500ab

    .line 711
    const/4 v4, 0x0

    .line 708
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .registers 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 272
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 279
    return-void

    .line 284
    :cond_13
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 271
    return-void
.end method

.method public onAnimationFinished()V
    .registers 3

    .prologue
    .line 947
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 946
    return-void
.end method

.method public onBootCompleted()V
    .registers 6

    .prologue
    .line 192
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 193
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 194
    .local v2, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 195
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 196
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 197
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 198
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 199
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 189
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    .line 202
    return-void
.end method

.method public onDraggingInRecents(F)V
    .registers 4
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 392
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 391
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .registers 4
    .param p1, "velocity"    # F

    .prologue
    .line 396
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 395
    return-void
.end method

.method public onShowCurrentUserToast(II)V
    .registers 4
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .prologue
    move-object v0, p1

    .line 223
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 224
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 225
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_11

    .line 226
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(IZ)V

    .line 222
    :cond_11
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 214
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    .line 213
    return-void
.end method

.method public preloadRecents()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 366
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 367
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 368
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 369
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 370
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 371
    sget-object v8, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_4c

    move v5, v6

    :goto_28
    invoke-virtual {v8, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 372
    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget v8, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-boolean v9, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v9, :cond_4e

    :goto_33
    invoke-virtual {v1, v5, v8, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 373
    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 374
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_4b

    .line 377
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 382
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 362
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_4b
    return-void

    .restart local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .restart local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4c
    move v5, v7

    .line 371
    goto :goto_28

    :cond_4e
    move v6, v7

    .line 372
    goto :goto_33
.end method

.method public showNextAffiliatedTask()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 529
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_next"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 530
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 527
    return-void
.end method

.method public showNextTask()V
    .registers 16

    .prologue
    const/4 v13, 0x0

    .line 407
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 408
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 409
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 410
    .local v5, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v12, -0x1

    invoke-virtual {v4, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 411
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    .line 414
    .local v0, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v12

    if-nez v12, :cond_20

    :cond_1f
    return-void

    .line 417
    :cond_20
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    .line 418
    .local v6, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v6, :cond_27

    return-void

    .line 421
    :cond_27
    iget v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v2

    .line 422
    .local v2, "isRunningTaskInHomeStack":Z
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 423
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v11, 0x0

    .line 424
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v3, 0x0

    .line 425
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 426
    .local v9, "taskCount":I
    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_39
    const/4 v12, 0x1

    if-lt v1, v12, :cond_58

    .line 427
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 428
    .local v8, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_67

    .line 429
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 430
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 431
    const v13, 0x7f0500ae

    .line 432
    const v14, 0x7f0500a7

    .line 430
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 444
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_58
    :goto_58
    if-nez v11, :cond_87

    .line 446
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 447
    const v13, 0x7f0500af

    .line 446
    invoke-static {v12, v13}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 445
    invoke-virtual {v7, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 448
    return-void

    .line 434
    .restart local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_67
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v12, v13, :cond_84

    .line 435
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 436
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 437
    const v13, 0x7f0500b1

    .line 438
    const v14, 0x7f0500b0

    .line 436
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_58

    .line 426
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 452
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_87
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v14, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v7, v12, v13, v14, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 406
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .registers 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_prev"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 533
    return-void
.end method

.method public showRecents(ZZZZZI)V
    .registers 14
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "launchedWhileDockingTask"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "growTarget"    # I

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 234
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 235
    iput-boolean p4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 236
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 238
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 258
    :cond_13
    :goto_13
    :try_start_13
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 259
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez p4, :cond_41

    move v1, p2

    .line 260
    :goto_1a
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 261
    .local v2, "isHomeStackVisible":Landroid/util/MutableBoolean;
    if-nez v1, :cond_43

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_24} :catch_4f

    move-result v5

    if-eqz v5, :cond_43

    .line 232
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local p5    # "fromHome":Z
    :goto_27
    return-void

    .line 239
    .restart local p5    # "fromHome":Z
    :cond_28
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 245
    if-nez p1, :cond_33

    .line 246
    return-void

    .line 248
    :cond_33
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_13

    .line 249
    :cond_39
    if-eqz p1, :cond_13

    .line 252
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 253
    return-void

    .line 259
    .restart local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_41
    const/4 v1, 0x1

    .local v1, "forceVisible":Z
    goto :goto_1a

    .line 262
    .end local v1    # "forceVisible":Z
    .restart local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    :cond_43
    :try_start_43
    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 263
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v5, v2, Landroid/util/MutableBoolean;->value:Z

    if-nez v5, :cond_5a

    .end local p5    # "fromHome":Z
    :goto_4b
    invoke-virtual {p0, v3, p5, p3, p6}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_4e} :catch_4f

    goto :goto_27

    .line 266
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_4f
    move-exception v0

    .line 267
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "RecentsImpl"

    const-string/jumbo v6, "Failed to launch RecentsActivity"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 263
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local p5    # "fromHome":Z
    :cond_5a
    const/4 p5, 0x1

    goto :goto_4b
.end method

.method public showRelativeAffiliatedTask(Z)V
    .registers 22
    .param p1, "showNextTask"    # Z

    .prologue
    .line 459
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    .line 460
    .local v11, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 461
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 462
    .local v9, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v9, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 463
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 466
    .local v3, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_2c

    :cond_2b
    return-void

    .line 469
    :cond_2c
    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    .line 470
    .local v10, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v10, :cond_33

    return-void

    .line 472
    :cond_33
    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v17

    if-eqz v17, :cond_3e

    return-void

    .line 475
    :cond_3e
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v14

    .line 476
    .local v14, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v15, 0x0

    .line 477
    .local v15, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v6, 0x0

    .line 478
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 479
    .local v13, "taskCount":I
    const/4 v8, 0x0

    .line 480
    .local v8, "numAffiliatedTasks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4a
    if-ge v5, v13, :cond_90

    .line 481
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    .line 482
    .local v12, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c2

    .line 483
    iget-object v4, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 485
    .local v4, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_ad

    .line 486
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 487
    .local v16, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 488
    const v18, 0x7f0500ae

    .line 489
    const v19, 0x7f0500ad

    .line 487
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 496
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :goto_7e
    if-eqz v16, :cond_8c

    .line 497
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 499
    .end local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_8c
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 505
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_90
    if-nez v15, :cond_d8

    .line 506
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_ac

    .line 507
    if-eqz p1, :cond_c5

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 510
    const v18, 0x7f0500ac

    .line 509
    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 508
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 517
    :cond_ac
    :goto_ac
    return-void

    .line 491
    .restart local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    .restart local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_ad
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 492
    .restart local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 493
    const v18, 0x7f0500b1

    .line 494
    const v19, 0x7f0500b0

    .line 492
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_7e

    .line 480
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :cond_c2
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 513
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 514
    const v18, 0x7f0500af

    .line 513
    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 512
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_ac

    .line 521
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "overview_affiliated_task_launch"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v0, v1, v2, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 458
    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .registers 21
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .prologue
    .line 838
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    .line 839
    .local v5, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v4

    .line 840
    .local v4, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 841
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p1, :cond_c9

    .line 842
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isBlackListedActivity(Ljava/lang/String;)Z

    move-result v3

    .line 845
    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_26

    if-eqz v3, :cond_cc

    .line 847
    :cond_26
    const/4 v7, -0x1

    .line 852
    .local v7, "runningTaskId":I
    :goto_27
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_37

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v13, :cond_37

    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v13, :cond_41

    .line 854
    :cond_37
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v13

    sput-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 856
    :cond_41
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_d4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v13, :cond_d4

    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v13

    if-eqz v13, :cond_d4

    .line 860
    :goto_55
    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v9

    .line 861
    .local v9, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v13

    if-lez v13, :cond_e0

    const/4 v2, 0x1

    .line 862
    .local v2, "hasRecentTasks":Z
    :goto_62
    if-eqz p1, :cond_66

    if-eqz p2, :cond_e2

    :cond_66
    const/4 v11, 0x0

    .line 866
    .local v11, "useThumbnailTransition":Z
    :goto_67
    if-nez v11, :cond_6f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-eqz v13, :cond_e4

    :cond_6f
    const/4 v13, 0x0

    :goto_70
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 867
    if-nez v11, :cond_e6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    :goto_78
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 868
    iget-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v13, :cond_e8

    move v13, v3

    :goto_7f
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    .line 869
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 870
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 871
    iput v7, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 872
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 876
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 879
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v12

    .line 880
    .local v12, "windowOverrideRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 887
    .local v10, "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    iget v13, v10, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    .line 888
    iget v13, v10, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    .line 890
    if-nez p3, :cond_ea

    .line 891
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v13, v14, v15}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    .line 892
    return-void

    .line 843
    .end local v2    # "hasRecentTasks":Z
    .end local v7    # "runningTaskId":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .end local v11    # "useThumbnailTransition":Z
    .end local v12    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_c9
    const/4 v3, 0x0

    .local v3, "isBlacklisted":Z
    goto/16 :goto_1e

    .line 845
    .end local v3    # "isBlacklisted":Z
    :cond_cc
    if-eqz p1, :cond_26

    .line 846
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .restart local v7    # "runningTaskId":I
    goto/16 :goto_27

    .line 857
    :cond_d4
    sget-object v14, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz p2, :cond_de

    const/4 v13, 0x0

    :goto_d9
    invoke-virtual {v5, v14, v7, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto/16 :goto_55

    :cond_de
    const/4 v13, 0x1

    goto :goto_d9

    .line 861
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_e0
    const/4 v2, 0x0

    .restart local v2    # "hasRecentTasks":Z
    goto :goto_62

    :cond_e2
    move v11, v2

    .line 863
    goto :goto_67

    .line 866
    .restart local v11    # "useThumbnailTransition":Z
    :cond_e4
    const/4 v13, 0x1

    goto :goto_70

    .line 867
    :cond_e6
    const/4 v13, 0x1

    goto :goto_78

    .line 868
    :cond_e8
    const/4 v13, 0x0

    goto :goto_7f

    .line 896
    .restart local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .restart local v12    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_ea
    if-eqz v3, :cond_fe

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 909
    .local v6, "opts":Landroid/app/ActivityOptions;
    :goto_f0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    .line 837
    return-void

    .line 898
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :cond_fe
    if-eqz v11, :cond_10d

    .line 900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v12}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v6

    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    goto :goto_f0

    .line 905
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :cond_10d
    if-eqz v2, :cond_114

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    goto :goto_f0

    .line 907
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :cond_114
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    goto :goto_f0
.end method

.method public toggleRecents(I)V
    .registers 16
    .param p1, "growTarget"    # I

    .prologue
    .line 290
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v10}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 291
    return-void

    .line 294
    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 295
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 296
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 299
    :try_start_12
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 300
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v10, 0x1

    invoke-direct {v3, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 301
    .local v3, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long v4, v10, v12

    .line 303
    .local v4, "elapsedTime":J
    invoke-virtual {v9, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 304
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v1

    .line 305
    .local v1, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 306
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v7

    .line 307
    .local v7, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v10, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_a2

    .line 309
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v10, v4

    if-gez v10, :cond_66

    .line 310
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_64

    const/4 v6, 0x1

    .line 311
    .local v6, "isQuickTap":Z
    :goto_4d
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v10, :cond_80

    .line 312
    if-eqz v6, :cond_68

    .line 313
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 338
    .end local v6    # "isQuickTap":Z
    :goto_63
    return-void

    .line 310
    :cond_64
    const/4 v6, 0x0

    .restart local v6    # "isQuickTap":Z
    goto :goto_4d

    .line 309
    .end local v6    # "isQuickTap":Z
    :cond_66
    const/4 v6, 0x0

    .restart local v6    # "isQuickTap":Z
    goto :goto_4d

    .line 315
    :cond_68
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_74
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_74} :catch_75

    goto :goto_63

    .line 357
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v4    # "elapsedTime":J
    .end local v6    # "isQuickTap":Z
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_75
    move-exception v2

    .line 358
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v10, "RecentsImpl"

    const-string/jumbo v11, "Failed to launch RecentsActivity"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_7f
    return-void

    .line 318
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .restart local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "isQuickTap":Z
    .restart local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_80
    :try_start_80
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v10

    if-eqz v10, :cond_88

    if-eqz v6, :cond_95

    .line 320
    :cond_88
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_63

    .line 323
    :cond_95
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_63

    .line 331
    .end local v6    # "isQuickTap":Z
    :cond_a2
    const-wide/16 v10, 0x15e

    cmp-long v10, v4, v10

    if-gez v10, :cond_a9

    .line 332
    return-void

    .line 335
    :cond_a9
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    goto :goto_63

    .line 344
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_bc
    const-wide/16 v10, 0x15e

    cmp-long v10, v4, v10

    if-gez v10, :cond_c3

    .line 345
    return-void

    .line 349
    :cond_c3
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    .line 350
    .local v8, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v10, v3, Landroid/util/MutableBoolean;->value:Z

    const/4 v11, 0x1

    invoke-virtual {p0, v8, v10, v11, p1}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    .line 354
    const-string/jumbo v10, "recentapps"

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_d9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_80 .. :try_end_d9} :catch_75

    goto :goto_7f
.end method
