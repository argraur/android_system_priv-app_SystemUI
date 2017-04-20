.class Lcom/android/systemui/statusbar/policy/FlashlightController$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method

.method private setCameraAvailable(Z)V
    .registers 6
    .param p1, "available"    # Z

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    monitor-enter v2

    .line 219
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get3(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z

    move-result v1

    if-eq v1, p1, :cond_41

    const/4 v0, 0x1

    .line 220
    .local v0, "changed":Z
    :goto_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-set1(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_43

    monitor-exit v2

    .line 222
    if-eqz v0, :cond_40

    .line 223
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchAvailabilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_3b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-wrap0(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V

    .line 216
    :cond_40
    return-void

    .line 219
    .end local v0    # "changed":Z
    :cond_41
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_c

    .line 218
    .end local v0    # "changed":Z
    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setTorchMode(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    monitor-enter v2

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get2(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z

    move-result v1

    if-eq v1, p1, :cond_41

    const/4 v0, 0x1

    .line 232
    .local v0, "changed":Z
    :goto_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_43

    monitor-exit v2

    .line 234
    if-eqz v0, :cond_40

    .line 235
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchModeChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-wrap1(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V

    .line 228
    :cond_40
    return-void

    .line 231
    .end local v0    # "changed":Z
    :cond_41
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_c

    .line 230
    .end local v0    # "changed":Z
    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->setCameraAvailable(Z)V

    .line 212
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->setTorchMode(Z)V

    .line 209
    :cond_13
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->setCameraAvailable(Z)V

    .line 202
    :cond_10
    return-void
.end method
