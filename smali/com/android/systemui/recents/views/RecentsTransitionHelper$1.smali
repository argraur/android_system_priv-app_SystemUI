.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$destinationStack:I

.field final synthetic val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .param p2, "val$task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "val$stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "val$destinationStack"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput p4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$destinationStack:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$destinationStack:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-wrap0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
