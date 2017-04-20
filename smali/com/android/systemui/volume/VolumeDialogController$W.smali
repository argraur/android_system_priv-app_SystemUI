.class final Lcom/android/systemui/volume/VolumeDialogController$W;
.super Landroid/os/Handler;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    .line 549
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 548
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_92

    .line 553
    :goto_7
    return-void

    .line 555
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap1(Lcom/android/systemui/volume/VolumeDialogController;II)Z

    goto :goto_7

    .line 556
    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap10(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_7

    .line 557
    :pswitch_1a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap11(Lcom/android/systemui/volume/VolumeDialogController;)V

    goto :goto_7

    .line 558
    :pswitch_20
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_2c

    :goto_28
    invoke-static {v2, v3, v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap15(Lcom/android/systemui/volume/VolumeDialogController;IZ)V

    goto :goto_7

    :cond_2c
    move v0, v1

    goto :goto_28

    .line 559
    :pswitch_2e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap18(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_7

    .line 560
    :pswitch_36
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/Condition;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap14(Lcom/android/systemui/volume/VolumeDialogController;Landroid/service/notification/Condition;)V

    goto :goto_7

    .line 561
    :pswitch_40
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_4c

    :goto_48
    invoke-static {v2, v3, v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap16(Lcom/android/systemui/volume/VolumeDialogController;IZ)V

    goto :goto_7

    :cond_4c
    move v0, v1

    goto :goto_48

    .line 562
    :pswitch_4e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onLayoutDirectionChanged(I)V

    goto :goto_7

    .line 563
    :pswitch_5a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$C;->onConfigurationChanged()V

    goto :goto_7

    .line 564
    :pswitch_64
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap17(Lcom/android/systemui/volume/VolumeDialogController;II)V

    goto :goto_7

    .line 565
    :pswitch_6e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap13(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_7

    .line 566
    :pswitch_76
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_80

    :goto_7c
    invoke-static {v2, v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap12(Lcom/android/systemui/volume/VolumeDialogController;Z)V

    goto :goto_7

    :cond_80
    move v0, v1

    goto :goto_7c

    .line 567
    :pswitch_82
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->onUserActivityW()V

    goto :goto_7

    .line 568
    :pswitch_88
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap19(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto/16 :goto_7

    .line 554
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
        :pswitch_1a
        :pswitch_20
        :pswitch_2e
        :pswitch_36
        :pswitch_40
        :pswitch_4e
        :pswitch_5a
        :pswitch_64
        :pswitch_6e
        :pswitch_76
        :pswitch_82
        :pswitch_88
    .end packed-switch
.end method
