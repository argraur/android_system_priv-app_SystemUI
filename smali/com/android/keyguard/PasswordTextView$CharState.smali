.class Lcom/android/keyguard/PasswordTextView$CharState;
.super Ljava/lang/Object;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextView$CharState$10;,
        Lcom/android/keyguard/PasswordTextView$CharState$1;,
        Lcom/android/keyguard/PasswordTextView$CharState$2;,
        Lcom/android/keyguard/PasswordTextView$CharState$3;,
        Lcom/android/keyguard/PasswordTextView$CharState$4;,
        Lcom/android/keyguard/PasswordTextView$CharState$5;,
        Lcom/android/keyguard/PasswordTextView$CharState$6;,
        Lcom/android/keyguard/PasswordTextView$CharState$7;,
        Lcom/android/keyguard/PasswordTextView$CharState$8;,
        Lcom/android/keyguard/PasswordTextView$CharState$9;
    }
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field currentTextSizeFactor:F

.field currentTextTranslationY:F

.field currentWidthFactor:F

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSwapperRunnable:Ljava/lang/Runnable;

.field isDotSwapPending:Z

.field removeEndListener:Landroid/animation/Animator$AnimatorListener;

.field textAnimationIsGrowing:Z

.field textAnimator:Landroid/animation/ValueAnimator;

.field textFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field textTranslateAnimator:Landroid/animation/ValueAnimator;

.field textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;

.field whichChar:C

.field widthAnimationIsGrowing:Z

.field widthAnimator:Landroid/animation/ValueAnimator;

.field widthFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/PasswordTextView$CharState;Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->performSwap()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    return-void
.end method

.method private constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 384
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 408
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 415
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 422
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$4;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 429
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$5;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 437
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 436
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 446
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$7;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 445
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 455
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$8;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 454
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 464
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$9;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 463
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 472
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$CharState;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 668
    if-eqz p1, :cond_5

    .line 669
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 667
    :cond_5
    return-void
.end method

.method private performSwap()V
    .registers 3

    .prologue
    .line 560
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 561
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 559
    return-void
.end method

.method private postDotSwap(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 539
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/PasswordTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 537
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .registers 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 543
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .registers 16
    .param p1, "delay"    # J

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 635
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v6}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 636
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->-get6(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 638
    new-array v6, v9, [F

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    .line 639
    const/high16 v7, 0x3fc00000    # 1.5f

    aput v7, v6, v8

    .line 638
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 640
    .local v2, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 641
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->-get0(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    const-wide/16 v4, 0xa0

    .line 644
    .local v4, "overShootDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 645
    new-array v6, v9, [F

    fill-array-data v6, :array_8e

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 647
    .local v3, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 648
    const-wide/16 v6, 0xa0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 649
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 650
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 651
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 652
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 653
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 654
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 664
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "settleBackAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "overShootDuration":J
    :goto_61
    iput-boolean v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 634
    return-void

    .line 656
    :cond_64
    new-array v6, v9, [F

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    aput v11, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 657
    .local v1, "growAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 658
    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    sub-float v6, v11, v6

    const/high16 v7, 0x43200000    # 160.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 659
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 660
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 661
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 662
    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_61

    .line 645
    :array_8e
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDotDisappearAnimation(J)V
    .registers 10
    .param p1, "startDelay"    # J

    .prologue
    const/4 v6, 0x0

    .line 590
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 591
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v4, v1, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 592
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 593
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 594
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->-get3(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 595
    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 596
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 597
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 598
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 599
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 600
    iput-boolean v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 589
    return-void
.end method

.method private startTextAppearAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 614
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 615
    new-array v0, v5, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 616
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 617
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->-get0(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 621
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_79

    .line 625
    new-array v0, v5, [F

    fill-array-data v0, :array_7a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 626
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->-get0(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 629
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 630
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 613
    :cond_79
    return-void

    .line 625
    :array_7a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextDisappearAnimation(J)V
    .registers 8
    .param p1, "startDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 579
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 580
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 581
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 582
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->-get3(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 584
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 585
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 586
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 577
    return-void
.end method

.method private startWidthAppearAnimation()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 604
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 605
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 610
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 603
    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .registers 8
    .param p1, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 567
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 569
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 570
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 573
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 574
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 565
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 680
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_7a

    const/4 v4, 0x1

    .line 681
    .local v4, "textVisible":Z
    :goto_a
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_7c

    const/4 v3, 0x1

    .line 682
    .local v3, "dotVisible":Z
    :goto_11
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float v1, p5, v5

    .line 683
    .local v1, "charWidth":F
    if-eqz v4, :cond_4a

    .line 684
    int-to-float v5, p3

    div-float/2addr v5, v9

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    .line 685
    int-to-float v6, p3

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    .line 684
    add-float v2, v5, v6

    .line 686
    .local v2, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 687
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 688
    .local v0, "centerX":F
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 689
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 690
    iget-char v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->-get5(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v8, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 691
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 693
    .end local v0    # "centerX":F
    .end local v2    # "currYPosition":F
    :cond_4a
    if-eqz v3, :cond_6e

    .line 694
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 695
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 696
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 697
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->-get4(Lcom/android/keyguard/PasswordTextView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->-get5(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v8, v8, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 698
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 700
    .end local v0    # "centerX":F
    :cond_6e
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->-get1(Lcom/android/keyguard/PasswordTextView;)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    return v5

    .line 680
    .end local v1    # "charWidth":F
    .end local v3    # "dotVisible":Z
    .end local v4    # "textVisible":Z
    :cond_7a
    const/4 v4, 0x0

    .restart local v4    # "textVisible":Z
    goto :goto_a

    .line 681
    :cond_7c
    const/4 v3, 0x0

    .restart local v3    # "dotVisible":Z
    goto :goto_11
.end method

.method reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 481
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 482
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 483
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 484
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 486
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 488
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 490
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 491
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 492
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 480
    return-void
.end method

.method startAppearAnimation()V
    .registers 7

    .prologue
    .line 514
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView;->-get6(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 515
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-eqz v3, :cond_4a

    const/4 v0, 0x0

    .line 516
    .local v0, "dotNeedsAnimation":Z
    :goto_11
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView;->-get6(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 517
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4e

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-eqz v3, :cond_4e

    const/4 v1, 0x0

    .line 518
    .local v1, "textNeedsAnimation":Z
    :goto_22
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_52

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    if-eqz v3, :cond_52

    const/4 v2, 0x0

    .line 519
    .local v2, "widthNeedsAnimation":Z
    :goto_2b
    if-eqz v0, :cond_32

    .line 520
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 522
    :cond_32
    if-eqz v1, :cond_37

    .line 523
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextAppearAnimation()V

    .line 525
    :cond_37
    if-eqz v2, :cond_3c

    .line 526
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startWidthAppearAnimation()V

    .line 528
    :cond_3c
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView;->-get6(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 529
    const-wide/16 v4, 0x514

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView$CharState;->postDotSwap(J)V

    .line 513
    :cond_49
    return-void

    .line 515
    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    .end local v2    # "widthNeedsAnimation":Z
    :cond_4a
    const/4 v0, 0x1

    .restart local v0    # "dotNeedsAnimation":Z
    goto :goto_11

    .line 514
    .end local v0    # "dotNeedsAnimation":Z
    :cond_4c
    const/4 v0, 0x0

    .restart local v0    # "dotNeedsAnimation":Z
    goto :goto_11

    .line 517
    :cond_4e
    const/4 v1, 0x1

    .restart local v1    # "textNeedsAnimation":Z
    goto :goto_22

    .line 516
    .end local v1    # "textNeedsAnimation":Z
    :cond_50
    const/4 v1, 0x0

    .restart local v1    # "textNeedsAnimation":Z
    goto :goto_22

    .line 518
    :cond_52
    const/4 v2, 0x1

    .restart local v2    # "widthNeedsAnimation":Z
    goto :goto_2b
.end method

.method startRemoveAnimation(JJ)V
    .registers 10
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 496
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_32

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_32

    const/4 v0, 0x1

    .line 498
    :goto_c
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3b

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_3b

    const/4 v1, 0x1

    .line 500
    :goto_17
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_44

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_44

    const/4 v2, 0x1

    .line 502
    :goto_22
    if-eqz v0, :cond_27

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotDisappearAnimation(J)V

    .line 505
    :cond_27
    if-eqz v1, :cond_2c

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 508
    :cond_2c
    if-eqz v2, :cond_31

    .line 509
    invoke-direct {p0, p3, p4}, Lcom/android/keyguard/PasswordTextView$CharState;->startWidthDisappearAnimation(J)V

    .line 495
    :cond_31
    return-void

    .line 497
    :cond_32
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_39

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .local v0, "dotNeedsAnimation":Z
    goto :goto_c

    .end local v0    # "dotNeedsAnimation":Z
    :cond_39
    const/4 v0, 0x0

    .local v0, "dotNeedsAnimation":Z
    goto :goto_c

    .line 499
    .end local v0    # "dotNeedsAnimation":Z
    :cond_3b
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_42

    iget-boolean v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .local v1, "textNeedsAnimation":Z
    goto :goto_17

    .end local v1    # "textNeedsAnimation":Z
    :cond_42
    const/4 v1, 0x0

    .local v1, "textNeedsAnimation":Z
    goto :goto_17

    .line 501
    .end local v1    # "textNeedsAnimation":Z
    :cond_44
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4b

    iget-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .local v2, "widthNeedsAnimation":Z
    goto :goto_22

    .end local v2    # "widthNeedsAnimation":Z
    :cond_4b
    const/4 v2, 0x0

    .local v2, "widthNeedsAnimation":Z
    goto :goto_22
.end method

.method swapToDotWhenAppearFinished()V
    .registers 7

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 550
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1c

    .line 551
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 552
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 551
    sub-long v0, v2, v4

    .line 553
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PasswordTextView$CharState;->postDotSwap(J)V

    .line 548
    .end local v0    # "remainingDuration":J
    :goto_1b
    return-void

    .line 555
    :cond_1c
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->performSwap()V

    goto :goto_1b
.end method
