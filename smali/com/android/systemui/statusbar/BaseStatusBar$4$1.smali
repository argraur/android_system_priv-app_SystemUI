.class Lcom/android/systemui/statusbar/BaseStatusBar$4$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$4;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$fillInIntent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$4;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 7
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$4;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$view"    # Landroid/view/View;
    .param p5, "val$pendingIntent"    # Landroid/app/PendingIntent;
    .param p6, "val$fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$fillInIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$keyguardShowing:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$afterKeyguardGone:Z

    if-eqz v2, :cond_41

    .line 363
    :cond_a
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$view:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$fillInIntent:Landroid/content/Intent;

    invoke-static {v2, v5, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$4;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$4;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    .line 364
    .local v1, "handled":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v5, v2, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$keyguardShowing:Z

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$afterKeyguardGone:Z

    if-eqz v2, :cond_52

    :cond_22
    move v2, v3

    :goto_23
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 367
    if-eqz v1, :cond_40

    .line 368
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 370
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 371
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 375
    :cond_40
    return v1

    .line 356
    .end local v1    # "handled":Z
    :cond_41
    :try_start_41
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 358
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4f} :catch_50

    goto :goto_a

    .line 359
    :catch_50
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_a

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "handled":Z
    :cond_52
    move v2, v4

    .line 364
    goto :goto_23
.end method
