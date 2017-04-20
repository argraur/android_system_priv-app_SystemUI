.class Lcom/android/systemui/statusbar/phone/NavigationBarView$2;
.super Landroid/view/IDockedStackListener$Stub;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .registers 4
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    return-void
.end method

.method public onDockSideChanged(I)V
    .registers 2
    .param p1, "newDockSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .registers 4
    .param p1, "exists"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->-get1(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView$2;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJ)V
    .registers 4
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 509
    return-void
.end method
