.class Lcom/android/keyguard/EmergencyButton$3;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-get1(Lcom/android/keyguard/EmergencyButton;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/policy/EmergencyAffordanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    .line 124
    if-eqz v0, :cond_1f

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/policy/EmergencyAffordanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method
