.class Lcom/android/systemui/BatteryMeterDrawable$1;
.super Ljava/lang/Object;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterDrawable;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/BatteryMeterDrawable;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable$1;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$1;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    .line 204
    return-void
.end method
