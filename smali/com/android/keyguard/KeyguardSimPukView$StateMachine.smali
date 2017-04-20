.class Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 81
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$StateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_25

    .line 86
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap2(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 87
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 88
    sget v0, Lcom/android/keyguard/R$string;->kg_puk_enter_pin_hint:I

    .line 109
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v2, v2}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(ZZ)V

    .line 110
    if-eqz v0, :cond_21

    .line 111
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 83
    :cond_21
    return-void

    .line 90
    :cond_22
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_13

    .line 92
    :cond_25
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_39

    .line 93
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap1(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 94
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 95
    sget v0, Lcom/android/keyguard/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_13

    .line 97
    :cond_36
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_13

    .line 99
    :cond_39
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_13

    .line 100
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 101
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 102
    sget v0, Lcom/android/keyguard/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 103
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap4(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto :goto_13

    .line 105
    :cond_50
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 106
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_confirm_pin_hint:I

    goto :goto_13
.end method

.method reset()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 116
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Lcom/android/keyguard/KeyguardSimPukView;->-set1(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Lcom/android/keyguard/KeyguardSimPukView;->-set2(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iput v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 119
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardSimPukView;->-get0(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 120
    .local v4, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/keyguard/KeyguardSimPukView;->-set3(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 121
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardSimPukView;->-get4(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 122
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 123
    .local v1, "count":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 125
    .local v6, "rez":Landroid/content/res/Resources;
    const/4 v0, -0x1

    .line 126
    .local v0, "color":I
    const/4 v7, 0x2

    if-ge v1, v7, :cond_69

    .line 127
    sget v7, Lcom/android/keyguard/R$string;->kg_puk_enter_puk_hint:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "msg":Ljava/lang/String;
    :cond_4d
    :goto_4d
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v7, v5, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 137
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardSimPukView;->-get1(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 139
    .end local v0    # "color":I
    .end local v1    # "count":I
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "rez":Landroid/content/res/Resources;
    :cond_61
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v7}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 115
    return-void

    .line 129
    .restart local v0    # "color":I
    .restart local v1    # "count":I
    .restart local v6    # "rez":Landroid/content/res/Resources;
    :cond_69
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardSimPukView;->-get4(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 130
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_8a

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 131
    .local v2, "displayName":Ljava/lang/CharSequence;
    :goto_79
    sget v7, Lcom/android/keyguard/R$string;->kg_puk_enter_puk_hint_multi:I

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .restart local v5    # "msg":Ljava/lang/String;
    if-eqz v3, :cond_4d

    .line 133
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    goto :goto_4d

    .line 130
    .end local v2    # "displayName":Ljava/lang/CharSequence;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_8a
    const-string/jumbo v2, ""

    .restart local v2    # "displayName":Ljava/lang/CharSequence;
    goto :goto_79
.end method
