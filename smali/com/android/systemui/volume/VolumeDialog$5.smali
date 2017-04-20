.class Lcom/android/systemui/volume/VolumeDialog$5;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogMotion$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatingChanged(Z)V
    .registers 5
    .param p1, "animating"    # Z

    .prologue
    const/4 v2, 0x0

    .line 226
    if-eqz p1, :cond_4

    return-void

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get13(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 228
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get10(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 229
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->-set4(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    .line 231
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get12(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 232
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get10(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 233
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->-set3(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    .line 225
    :cond_32
    return-void
.end method
