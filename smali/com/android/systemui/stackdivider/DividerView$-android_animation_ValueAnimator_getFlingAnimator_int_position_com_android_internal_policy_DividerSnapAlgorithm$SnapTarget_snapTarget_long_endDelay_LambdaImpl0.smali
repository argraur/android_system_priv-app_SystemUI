.class final synthetic Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private synthetic val$taskPositionSameAtEnd:Z

.field private synthetic val$this:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/DividerView;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;->val$taskPositionSameAtEnd:Z

    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;->val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;->val$taskPositionSameAtEnd:Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;->val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/stackdivider/DividerView;->-com_android_systemui_stackdivider_DividerView_lambda$1(ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V

    return-void
.end method
