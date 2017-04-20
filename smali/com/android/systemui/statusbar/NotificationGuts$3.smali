.class Lcom/android/systemui/statusbar/NotificationGuts$3;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGuts;->bindSlider(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$minProgress:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p2, "val$minProgress"    # I

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->val$minProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 298
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->val$minProgress:I

    if-ge p2, v0, :cond_10

    .line 299
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->val$minProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 300
    iget p2, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->val$minProgress:I

    .line 302
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/NotificationGuts;->-wrap1(Lcom/android/systemui/statusbar/NotificationGuts;I)V

    .line 303
    if-eqz p3, :cond_22

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-get1(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x122

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 296
    :cond_22
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 309
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 314
    return-void
.end method
