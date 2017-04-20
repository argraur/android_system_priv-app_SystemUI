.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;
.super Landroid/telephony/PhoneStateListener;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCallState:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 442
    iget v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->mCallState:I

    if-ne v2, p1, :cond_5

    return-void

    .line 444
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->mCallState:I

    .line 445
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 446
    .local v0, "currentUserId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 447
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 448
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 450
    :cond_22
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v3, -0x2710

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 441
    return-void
.end method
