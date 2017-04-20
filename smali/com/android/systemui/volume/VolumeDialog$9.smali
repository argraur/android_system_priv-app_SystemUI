.class Lcom/android/systemui/volume/VolumeDialog$9;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->updateExpandedH(ZZ)V
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
    .line 558
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 570
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get19(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/Window;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get19(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 565
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 564
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get19(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/Window;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$9;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get19(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 575
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 574
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 580
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 560
    return-void
.end method
