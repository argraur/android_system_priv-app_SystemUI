.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;
.super Landroid/view/IRotationWatcher$Stub;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31$-void_onRotationChanged_int_rotation_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_PhoneStatusBar$31_lambda$5(I)V
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->needsReorient(I)Z

    move-result v0

    .line 1443
    if-eqz v0, :cond_19

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    .line 0
    :cond_19
    return-void
.end method

.method public onRotationChanged(I)V
    .registers 5
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31$-void_onRotationChanged_int_rotation_LambdaImpl0;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31$-void_onRotationChanged_int_rotation_LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;I)V

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1448
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1449
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1439
    return-void
.end method
