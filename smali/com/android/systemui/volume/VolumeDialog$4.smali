.class Lcom/android/systemui/volume/VolumeDialog$4;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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
    .line 204
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 207
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 208
    .local v0, "action":I
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/16 v1, 0x9

    if-eq v0, v1, :cond_18

    .line 209
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    move v1, v2

    .line 208
    :goto_f
    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialog;->-set2(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    .line 210
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$4;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 211
    return v2

    :cond_18
    move v1, v2

    .line 208
    goto :goto_f

    .line 209
    :cond_1a
    const/4 v1, 0x0

    goto :goto_f
.end method
