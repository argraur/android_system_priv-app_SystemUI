.class Lcom/android/settingslib/wifi/WifiTracker$Scanner;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 639
    return-void
.end method


# virtual methods
.method forceScan()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->removeMessages(I)V

    .line 652
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->sendEmptyMessage(I)Z

    .line 650
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 667
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    return-void

    .line 668
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get4(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 669
    iput v2, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 677
    :cond_14
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 666
    return-void

    .line 670
    :cond_1a
    iget v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_14

    .line 671
    iput v2, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 672
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get1(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 673
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get1(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->wifi_fail_to_scan:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 675
    :cond_3d
    return-void
.end method

.method isScanning()Z
    .registers 2

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method pause()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 656
    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 657
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->removeMessages(I)V

    .line 655
    return-void
.end method

.method resume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 646
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->sendEmptyMessage(I)Z

    .line 644
    :cond_a
    return-void
.end method
