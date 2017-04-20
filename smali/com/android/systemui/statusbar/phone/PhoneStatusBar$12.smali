.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mBlockedThisTouch:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1372
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->mBlockedThisTouch:Z

    if-eqz v1, :cond_d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_d

    .line 1373
    return v4

    .line 1378
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 1396
    :cond_14
    :goto_14
    :pswitch_14
    return v3

    .line 1380
    :pswitch_15
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->mBlockedThisTouch:Z

    .line 1381
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 1382
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1383
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get25(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1384
    const-string/jumbo v1, "PhoneStatusBar"

    const-string/jumbo v2, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->mBlockedThisTouch:Z

    .line 1387
    return v4

    .line 1393
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap3(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_14

    .line 1378
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_43
        :pswitch_14
        :pswitch_43
    .end packed-switch
.end method
