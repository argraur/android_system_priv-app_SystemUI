.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/TakeScreenshotService;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 38
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 39
    .local v0, "callback":Landroid/os/Messenger;
    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 53
    .local v1, "finisher":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v2, v5}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_26

    .line 54
    const-string/jumbo v2, "TakeScreenshotService"

    const-string/jumbo v3, "Skipping screenshot because storage is locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 59
    :cond_26
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    if-nez v2, :cond_36

    .line 60
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v2, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-set0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 63
    :cond_36
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_66

    .line 37
    :goto_3b
    return-void

    .line 65
    :pswitch_3c
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_4d

    move v2, v3

    :goto_45
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_4f

    :goto_49
    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_3b

    :cond_4d
    move v2, v4

    goto :goto_45

    :cond_4f
    move v3, v4

    goto :goto_49

    .line 68
    :pswitch_51
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_62

    move v2, v3

    :goto_5a
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_64

    :goto_5e
    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    goto :goto_3b

    :cond_62
    move v2, v4

    goto :goto_5a

    :cond_64
    move v3, v4

    goto :goto_5e

    .line 63
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_51
    .end packed-switch
.end method
