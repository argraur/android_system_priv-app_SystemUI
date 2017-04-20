.class public Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;
.super Landroid/widget/TextView;
.source "EmergencyCryptkeeperText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;,
        Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;-><init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;-><init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->update()V

    .line 66
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_e

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 81
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method

.method public update()V
    .registers 15

    .prologue
    .line 85
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v11

    .line 86
    const/4 v12, 0x0

    .line 85
    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    .line 87
    .local v5, "hasMobile":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 88
    const-string/jumbo v12, "airplane_mode_on"

    const/4 v13, 0x0

    .line 87
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 88
    const/4 v12, 0x1

    .line 87
    if-ne v11, v12, :cond_2b

    const/4 v1, 0x1

    .line 90
    .local v1, "airplaneMode":Z
    :goto_1d
    if-eqz v5, :cond_21

    if-eqz v1, :cond_2d

    .line 91
    :cond_21
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    .line 93
    return-void

    .line 87
    .end local v1    # "airplaneMode":Z
    :cond_2b
    const/4 v1, 0x0

    .restart local v1    # "airplaneMode":Z
    goto :goto_1d

    .line 96
    :cond_2d
    const/4 v2, 0x1

    .line 97
    .local v2, "allSimsMissing":Z
    const/4 v4, 0x0

    .line 99
    .local v4, "displayText":Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v10

    .line 100
    .local v10, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 101
    .local v0, "N":I
    const/4 v6, 0x0

    .end local v4    # "displayText":Ljava/lang/CharSequence;
    .local v6, "i":I
    :goto_3b
    if-ge v6, v0, :cond_69

    .line 102
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 103
    .local v9, "subId":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    .line 104
    .local v8, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 105
    .local v3, "carrierName":Ljava/lang/CharSequence;
    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardConstants$State;->iccCardExist()Z

    move-result v11

    if-eqz v11, :cond_63

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_66

    .line 101
    :cond_63
    :goto_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 106
    :cond_66
    const/4 v2, 0x0

    .line 107
    move-object v4, v3

    .local v4, "displayText":Ljava/lang/CharSequence;
    goto :goto_63

    .line 110
    .end local v3    # "carrierName":Ljava/lang/CharSequence;
    .end local v4    # "displayText":Ljava/lang/CharSequence;
    .end local v8    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v9    # "subId":I
    :cond_69
    if-eqz v2, :cond_78

    .line 111
    if-eqz v0, :cond_87

    .line 117
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 133
    :cond_78
    :goto_78
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_ad

    const/16 v11, 0x8

    :goto_83
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    .line 84
    return-void

    .line 123
    :cond_87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 124
    const v12, 0x10402b4

    .line 123
    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 125
    .restart local v4    # "displayText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 126
    new-instance v12, Landroid/content/IntentFilter;

    const-string/jumbo v13, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    .line 127
    .local v7, "i":Landroid/content/Intent;
    if-eqz v7, :cond_78

    .line 128
    const-string/jumbo v11, "plmn"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_78

    .line 134
    .end local v4    # "displayText":Ljava/lang/CharSequence;
    .end local v7    # "i":Landroid/content/Intent;
    :cond_ad
    const/4 v11, 0x0

    goto :goto_83
.end method
