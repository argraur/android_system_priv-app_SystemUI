.class final synthetic Lcom/android/systemui/power/PowerUI$-void_updateTemperatureWarning__LambdaImpl0;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_updateTemperatureWarning__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$-void_updateTemperatureWarning__LambdaImpl0;->val$this:Lcom/android/systemui/power/PowerUI;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$-void_updateTemperatureWarning__LambdaImpl0;->val$this:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->-com_android_systemui_power_PowerUI-mthref-0()V

    return-void
.end method
