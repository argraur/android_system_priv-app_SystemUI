.class Lcom/android/systemui/statusbar/DragDownHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/ExpandableView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/DragDownHelper;
    .param p2, "val$child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DragDownHelper;->-get0(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 193
    return-void
.end method
