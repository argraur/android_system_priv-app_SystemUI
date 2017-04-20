.class Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;
.super Landroid/view/IDockedStackListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockDividerVisibilityListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onDockSideChanged_int_newDockSide_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/Divider;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_Divider$DockDividerVisibilityListener_lambda$1(ZJ)V
    .registers 6
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get0(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eq v0, p1, :cond_29

    .line 171
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->-set0(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 172
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-wrap2(Lcom/android/systemui/stackdivider/Divider;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 174
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2a

    .line 175
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    .line 0
    :cond_29
    :goto_29
    return-void

    .line 177
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(Z)V

    goto :goto_29
.end method

.method synthetic -com_android_systemui_stackdivider_Divider$DockDividerVisibilityListener_lambda$2(I)V
    .registers 3
    .param p1, "newDockSide"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->notifyDockSideChanged(I)V

    .line 0
    return-void
.end method

.method public onAdjustedForImeChanged(ZJ)V
    .registers 6
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;ZJ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .registers 3
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->-wrap3(Lcom/android/systemui/stackdivider/Divider;Z)V

    .line 151
    return-void
.end method

.method public onDockSideChanged(I)V
    .registers 4
    .param p1, "newDockSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onDockSideChanged_int_newDockSide_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onDockSideChanged_int_newDockSide_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .registers 3
    .param p1, "exists"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->-wrap0(Lcom/android/systemui/stackdivider/Divider;Z)V

    .line 156
    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJ)V
    .registers 6
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider;->-wrap1(Lcom/android/systemui/stackdivider/Divider;ZJ)V

    .line 162
    return-void
.end method
