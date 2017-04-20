.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 3582
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3586
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3587
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 3588
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 3589
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get22(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 3590
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get22(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 3592
    :cond_21
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->getSendingUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 3593
    const/4 v1, 0x0

    .line 3594
    .local v1, "flags":I
    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3595
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_41

    const-string/jumbo v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 3596
    const/4 v1, 0x2

    .line 3598
    :cond_41
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3584
    .end local v1    # "flags":I
    .end local v2    # "reason":Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 3601
    :cond_47
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 3602
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3603
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3604
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap8(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3605
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V

    goto :goto_46

    .line 3607
    :cond_66
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 3608
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_46

    .line 3610
    :cond_76
    const-string/jumbo v3, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 3611
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get21(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->showDeviceMonitoringDialog()V

    goto :goto_46
.end method
