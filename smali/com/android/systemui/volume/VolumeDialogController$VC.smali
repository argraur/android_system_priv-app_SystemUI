.class final Lcom/android/systemui/volume/VolumeDialogController$VC;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VC"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".VC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->TAG:Ljava/lang/String;

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$VC;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogController;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 524
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismiss requested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get4(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 526
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    .line 523
    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 496
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "displaySafeVolumeWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 497
    invoke-static {p1}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get4(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    .line 499
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 495
    return-void
.end method

.method public masterMuteChanged(I)V
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "masterMuteChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_c
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 5
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 517
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setLayoutDirection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get4(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 519
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 516
    return-void
.end method

.method public volumeChanged(II)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 504
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    const-string/jumbo v2, " "

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    invoke-static {p2}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get4(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v0

    if-eqz v0, :cond_39

    return-void

    .line 507
    :cond_39
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 503
    return-void
.end method
