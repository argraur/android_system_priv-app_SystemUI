.class final Lcom/android/systemui/volume/VolumeDialog$H;
.super Landroid/os/Handler;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    .line 1050
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1049
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 1055
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    .line 1054
    :goto_6
    return-void

    .line 1056
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap7(Lcom/android/systemui/volume/VolumeDialog;I)V

    goto :goto_6

    .line 1057
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    goto :goto_6

    .line 1058
    :pswitch_17
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->-wrap5(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_6

    .line 1059
    :pswitch_21
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap5(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_6

    .line 1060
    :pswitch_28
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_31

    const/4 v0, 0x1

    :cond_31
    invoke-static {v1, v2, v0}, Lcom/android/systemui/volume/VolumeDialog;->-wrap6(Lcom/android/systemui/volume/VolumeDialog;IZ)V

    goto :goto_6

    .line 1061
    :pswitch_35
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_6

    .line 1062
    :pswitch_3b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get18(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap3(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    goto :goto_6

    .line 1063
    :pswitch_47
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-wrap9(Lcom/android/systemui/volume/VolumeDialog;)V

    goto :goto_6

    .line 1064
    :pswitch_4d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-wrap12(Lcom/android/systemui/volume/VolumeDialog;)V

    goto :goto_6

    .line 1055
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_17
        :pswitch_21
        :pswitch_28
        :pswitch_35
        :pswitch_3b
        :pswitch_47
        :pswitch_4d
    .end packed-switch
.end method
