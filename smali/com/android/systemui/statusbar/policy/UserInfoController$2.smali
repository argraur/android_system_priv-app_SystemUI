.class Lcom/android/systemui/statusbar/policy/UserInfoController$2;
.super Landroid/content/BroadcastReceiver;
.source "UserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 93
    const-string/jumbo v4, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 92
    if-eqz v4, :cond_32

    .line 95
    :cond_16
    :try_start_16
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 97
    .local v2, "currentUser":I
    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserInfoController$2;->getSendingUserId()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 98
    .local v1, "changedUser":I
    if-ne v1, v2, :cond_32

    .line 99
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_32} :catch_33

    .line 90
    .end local v1    # "changedUser":I
    .end local v2    # "currentUser":I
    :cond_32
    :goto_32
    return-void

    .line 101
    :catch_33
    move-exception v3

    .line 102
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "UserInfoController"

    const-string/jumbo v5, "Couldn\'t get current user id for profile change"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method
