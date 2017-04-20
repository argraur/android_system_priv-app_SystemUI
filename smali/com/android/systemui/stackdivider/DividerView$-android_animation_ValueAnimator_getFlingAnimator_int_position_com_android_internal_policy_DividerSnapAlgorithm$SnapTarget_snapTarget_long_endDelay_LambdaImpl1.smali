.class final synthetic Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl1;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private synthetic val$this:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl1;->val$this:Lcom/android/systemui/stackdivider/DividerView;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl1;->val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl1;->val$this:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl1;->val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->-com_android_systemui_stackdivider_DividerView_lambda$2(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method
