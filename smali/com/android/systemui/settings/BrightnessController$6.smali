.class Lcom/android/systemui/settings/BrightnessController$6;
.super Landroid/os/Handler;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 246
    :try_start_7
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_72

    .line 267
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1f

    .line 270
    :goto_f
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 243
    return-void

    .line 248
    :pswitch_15
    :try_start_15
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_26

    :goto_1b
    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap0(Lcom/android/systemui/settings/BrightnessController;Z)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 269
    :catchall_1f
    move-exception v0

    .line 270
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 269
    throw v0

    :cond_26
    move v0, v1

    .line 248
    goto :goto_1b

    .line 251
    :pswitch_28
    :try_start_28
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    goto :goto_f

    .line 255
    :pswitch_3f
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4d

    :goto_49
    invoke-virtual {v2, v0}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_f

    :cond_4d
    move v0, v1

    goto :goto_49

    .line 258
    :pswitch_4f
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_f

    .line 261
    :pswitch_5b
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_f

    .line 264
    :pswitch_66
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_70

    :goto_6c
    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V
    :try_end_6f
    .catchall {:try_start_28 .. :try_end_6f} :catchall_1f

    goto :goto_f

    :cond_70
    move v0, v1

    goto :goto_6c

    .line 246
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_15
        :pswitch_28
        :pswitch_3f
        :pswitch_4f
        :pswitch_5b
        :pswitch_66
    .end packed-switch
.end method
