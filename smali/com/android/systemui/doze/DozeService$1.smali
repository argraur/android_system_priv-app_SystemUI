.class Lcom/android/systemui/doze/DozeService$1;
.super Landroid/content/BroadcastReceiver;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 387
    const-string/jumbo v2, "com.android.systemui.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 388
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Received pulse intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_20
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2, v1}, Lcom/android/systemui/doze/DozeService;->-wrap6(Lcom/android/systemui/doze/DozeService;I)V

    .line 391
    :cond_25
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 392
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeService;->-set0(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 393
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get1(Lcom/android/systemui/doze/DozeService;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get4(Lcom/android/systemui/doze/DozeService;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 394
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-wrap2(Lcom/android/systemui/doze/DozeService;)V

    .line 397
    :cond_4c
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 398
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get11(Lcom/android/systemui/doze/DozeService;)[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    move-result-object v2

    array-length v3, v2

    :goto_60
    if-ge v1, v3, :cond_6a

    aget-object v0, v2, v1

    .line 399
    .local v0, "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->updateListener()V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 386
    .end local v0    # "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    :cond_6a
    return-void
.end method
