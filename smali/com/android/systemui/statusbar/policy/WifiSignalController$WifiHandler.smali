.class Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;
.super Landroid/os/Handler;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2e

    .line 125
    :goto_5
    return-void

    .line 128
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1b

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-get0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 130
    const v1, 0x11001

    .line 129
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_5

    .line 132
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 136
    :sswitch_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_5

    .line 126
    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_26
        0x11000 -> :sswitch_6
    .end sparse-switch
.end method
