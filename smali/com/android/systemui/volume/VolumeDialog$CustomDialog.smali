.class final Lcom/android/systemui/volume/VolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    .line 1071
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1070
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1105
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1108
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1109
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_6a

    .line 1110
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_68

    move v0, v2

    .line 1111
    .local v0, "isFullScreen":Z
    :goto_30
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 1113
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6c

    .line 1114
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->-get15(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1115
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    .line 1117
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumeDialog;->-wrap0(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 1116
    const v3, 0x7f0f035c

    .line 1115
    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    return v2

    .end local v0    # "isFullScreen":Z
    :cond_68
    move v0, v3

    .line 1110
    goto :goto_30

    :cond_6a
    move v0, v3

    .line 1109
    goto :goto_30

    .line 1121
    .restart local v0    # "isFullScreen":Z
    :cond_6c
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 1077
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .registers 5

    .prologue
    .line 1082
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1083
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get11(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 1084
    .local v0, "animating":Z
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_2c
    if-eqz v0, :cond_35

    .line 1086
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialog;->-set3(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    .line 1087
    return-void

    .line 1089
    :cond_35
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get10(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 1081
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1094
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 1097
    return v2

    .line 1100
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
