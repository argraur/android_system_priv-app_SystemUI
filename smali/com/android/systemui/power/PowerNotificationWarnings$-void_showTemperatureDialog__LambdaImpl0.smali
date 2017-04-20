.class final synthetic Lcom/android/systemui/power/PowerNotificationWarnings$-void_showTemperatureDialog__LambdaImpl0;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_showTemperatureDialog__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$-void_showTemperatureDialog__LambdaImpl0;->val$this:Lcom/android/systemui/power/PowerNotificationWarnings;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$-void_showTemperatureDialog__LambdaImpl0;->val$this:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-com_android_systemui_power_PowerNotificationWarnings_lambda$1(Landroid/content/DialogInterface;)V

    return-void
.end method
