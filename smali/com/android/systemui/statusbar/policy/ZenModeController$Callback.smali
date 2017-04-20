.class public Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.super Ljava/lang/Object;
.source "ZenModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsChanged([Landroid/service/notification/Condition;)V
    .registers 2
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 42
    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 47
    return-void
.end method

.method public onEffectsSupressorChanged()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 2
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 46
    return-void
.end method

.method public onNextAlarmChanged()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public onZenAvailableChanged(Z)V
    .registers 2
    .param p1, "available"    # Z

    .prologue
    .line 44
    return-void
.end method

.method public onZenChanged(I)V
    .registers 2
    .param p1, "zen"    # I

    .prologue
    .line 41
    return-void
.end method
