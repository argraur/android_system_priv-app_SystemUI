.class Lcom/android/systemui/volume/VolumeDialog$7;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->initRow(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p2, "val$row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p3, "val$stream"    # I

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$stream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 418
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x7

    invoke-static {v4, v6, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 419
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    .line 420
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    if-ne v4, v7, :cond_a5

    .line 421
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 422
    .local v0, "hasVibrator":Z
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get18(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v7, :cond_86

    .line 423
    if-eqz v0, :cond_65

    .line 424
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 440
    .end local v0    # "hasVibrator":Z
    :cond_5d
    :goto_5d
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set17(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J

    .line 417
    return-void

    .line 426
    .restart local v0    # "hasVibrator":Z
    :cond_65
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_84

    const/4 v2, 0x1

    .line 427
    .local v2, "wasZero":Z
    :goto_70
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$stream:I

    if-eqz v2, :cond_80

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get11(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    :cond_80
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_5d

    .line 426
    .end local v2    # "wasZero":Z
    :cond_84
    const/4 v2, 0x0

    .restart local v2    # "wasZero":Z
    goto :goto_70

    .line 430
    .end local v2    # "wasZero":Z
    :cond_86
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 431
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_5d

    .line 432
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$stream:I

    invoke-virtual {v3, v4, v8}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_5d

    .line 436
    .end local v0    # "hasVibrator":Z
    :cond_a5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    if-ne v3, v4, :cond_cc

    const/4 v1, 0x1

    .line 437
    .local v1, "vmute":Z
    :goto_b8
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$stream:I

    .line 438
    if-eqz v1, :cond_ce

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get11(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    .line 437
    :goto_c8
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_5d

    .line 436
    .end local v1    # "vmute":Z
    :cond_cc
    const/4 v1, 0x0

    .restart local v1    # "vmute":Z
    goto :goto_b8

    .line 438
    :cond_ce
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$7;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    goto :goto_c8
.end method
