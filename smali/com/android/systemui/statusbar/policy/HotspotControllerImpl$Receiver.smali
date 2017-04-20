.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string/jumbo v1, "HotspotController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_24
    const-string/jumbo v1, "wifi_state"

    const/16 v2, 0xe

    .line 153
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_43

    const/4 v1, 0x1

    :goto_3f
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    .line 151
    return-void

    .line 156
    :cond_43
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method public setListening(Z)V
    .registers 5
    .param p1, "listening"    # Z

    .prologue
    .line 137
    if-eqz p1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    if-eqz v1, :cond_28

    .line 143
    :cond_6
    if-nez p1, :cond_27

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    if-eqz v1, :cond_27

    .line 144
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "HotspotController"

    const-string/jumbo v2, "Unregistering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    .line 136
    :cond_27
    :goto_27
    return-void

    .line 138
    :cond_28
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string/jumbo v1, "HotspotController"

    const-string/jumbo v2, "Registering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    goto :goto_27
.end method
