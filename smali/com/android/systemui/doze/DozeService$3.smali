.class Lcom/android/systemui/doze/DozeService$3;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


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
    .line 417
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuzzBeepBlinked()V
    .registers 3

    .prologue
    .line 426
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onBuzzBeepBlinked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-wrap4(Lcom/android/systemui/doze/DozeService;)V

    .line 425
    return-void
.end method

.method public onNewNotifications()V
    .registers 3

    .prologue
    .line 420
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNewNotifications (noop)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_12
    return-void
.end method

.method public onNotificationLight(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 432
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationLight (noop) on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_23
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 3
    .param p1, "active"    # Z

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeService;->-set1(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 439
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get8(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get4(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 440
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-wrap3(Lcom/android/systemui/doze/DozeService;)V

    .line 437
    :cond_1a
    return-void
.end method
