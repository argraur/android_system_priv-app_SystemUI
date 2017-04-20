.class Lcom/android/systemui/keyguard/KeyguardViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1409
    const-string/jumbo v2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1410
    const-string/jumbo v2, "seq"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1413
    .local v0, "sequence":I
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v3

    .line 1414
    :try_start_18
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v2

    if-ne v2, v0, :cond_26

    .line 1415
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_28

    .end local v0    # "sequence":I
    :cond_26
    :goto_26
    monitor-exit v3

    .line 1408
    :cond_27
    return-void

    .line 1413
    .restart local v0    # "sequence":I
    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1418
    .end local v0    # "sequence":I
    :cond_2b
    const-string/jumbo v2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1419
    const-string/jumbo v2, "seq"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1420
    .restart local v0    # "sequence":I
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1421
    .local v1, "userId":I
    if-eqz v1, :cond_27

    .line 1422
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v3

    .line 1423
    :try_start_4b
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v2

    if-ne v2, v0, :cond_26

    .line 1424
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap18(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_59

    goto :goto_26

    .line 1422
    :catchall_59
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1428
    .end local v0    # "sequence":I
    .end local v1    # "userId":I
    :cond_5c
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1429
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v3

    .line 1430
    :try_start_6c
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_73

    goto :goto_26

    .line 1429
    :catchall_73
    move-exception v2

    monitor-exit v3

    throw v2
.end method
