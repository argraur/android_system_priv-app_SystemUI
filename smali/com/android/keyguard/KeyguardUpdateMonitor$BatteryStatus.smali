.class public Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryStatus"
.end annotation


# instance fields
.field public final health:I

.field public final level:I

.field public final maxChargingWattage:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "plugged"    # I
    .param p4, "health"    # I
    .param p5, "maxChargingWattage"    # I

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 871
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 872
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    .line 873
    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    .line 874
    iput p5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    .line 869
    return-void
.end method


# virtual methods
.method public final getChargingSpeed(II)I
    .registers 5
    .param p1, "slowThreshold"    # I
    .param p2, "fastThreshold"    # I

    .prologue
    const/4 v0, 0x0

    .line 906
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-gtz v1, :cond_7

    const/4 v0, -0x1

    :cond_6
    :goto_6
    return v0

    .line 907
    :cond_7
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-lt v1, p1, :cond_6

    .line 908
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-le v0, p2, :cond_11

    const/4 v0, 0x2

    goto :goto_6

    .line 909
    :cond_11
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isBatteryLow()Z
    .registers 3

    .prologue
    .line 902
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isCharged()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 894
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isPluggedIn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 882
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_a

    .line 883
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 882
    :cond_a
    :goto_a
    return v0

    .line 884
    :cond_b
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method
