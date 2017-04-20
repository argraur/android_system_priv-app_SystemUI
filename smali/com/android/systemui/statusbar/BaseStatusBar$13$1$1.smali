.class Lcom/android/systemui/statusbar/BaseStatusBar$13$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$13$1;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$13$1;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 3
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/BaseStatusBar$13$1;
    .param p2, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$13$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1206
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    .line 1205
    return-void
.end method
