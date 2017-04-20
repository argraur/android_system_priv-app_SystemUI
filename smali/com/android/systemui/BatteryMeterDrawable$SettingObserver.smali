.class final Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterDrawable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/BatteryMeterDrawable;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    .line 510
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 509
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 515
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterDrawable;->-wrap1(Lcom/android/systemui/BatteryMeterDrawable;)V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterDrawable;->-wrap0(Lcom/android/systemui/BatteryMeterDrawable;)V

    .line 514
    return-void
.end method
