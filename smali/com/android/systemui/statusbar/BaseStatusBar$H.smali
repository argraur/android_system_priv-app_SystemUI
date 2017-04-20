.class public Lcom/android/systemui/statusbar/BaseStatusBar$H;
.super Landroid/os/Handler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1555
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    .line 1554
    :goto_7
    return-void

    .line 1557
    :pswitch_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_17

    move v0, v1

    :goto_f
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_19

    :goto_13
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecents(ZZ)V

    goto :goto_7

    :cond_17
    move v0, v2

    goto :goto_f

    :cond_19
    move v1, v2

    goto :goto_13

    .line 1560
    :pswitch_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_2a

    move v0, v1

    :goto_22
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_2c

    :goto_26
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideRecents(ZZ)V

    goto :goto_7

    :cond_2a
    move v0, v2

    goto :goto_22

    :cond_2c
    move v1, v2

    goto :goto_26

    .line 1563
    :pswitch_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    goto :goto_7

    .line 1566
    :pswitch_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->preloadRecents()V

    goto :goto_7

    .line 1569
    :pswitch_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecents()V

    goto :goto_7

    .line 1572
    :pswitch_40
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecentsNextAffiliatedTask()V

    goto :goto_7

    .line 1575
    :pswitch_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecentsPreviousAffiliatedTask()V

    goto :goto_7

    .line 1578
    :pswitch_4c
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleKeyboardShortcuts(I)V

    goto :goto_7

    .line 1581
    :pswitch_54
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyboardShortcuts()V

    goto :goto_7

    .line 1555
    :pswitch_data_5a
    .packed-switch 0x3fb
        :pswitch_8
        :pswitch_1b
        :pswitch_2e
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_46
        :pswitch_4c
        :pswitch_54
    .end packed-switch
.end method
