.class Lcom/android/systemui/doze/DozeService$4;
.super Lcom/android/systemui/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->requestPulse(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;

.field final synthetic val$performedProxCheck:Z

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService;JIZ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;
    .param p2, "this$0_1"    # Lcom/android/systemui/doze/DozeService;
    .param p3, "val$start"    # J
    .param p5, "val$reason"    # I
    .param p6, "val$performedProxCheck"    # Z

    .prologue
    .line 242
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    iput-wide p3, p0, Lcom/android/systemui/doze/DozeService$4;->val$start:J

    iput p5, p0, Lcom/android/systemui/doze/DozeService$4;->val$reason:I

    iput-boolean p6, p0, Lcom/android/systemui/doze/DozeService$4;->val$performedProxCheck:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$ProximityCheck;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .registers 9
    .param p1, "result"    # I

    .prologue
    .line 245
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1c

    const/4 v2, 0x1

    .line 246
    .local v2, "isNear":Z
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 247
    .local v0, "end":J
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->-get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeService$4;->val$start:J

    sub-long v4, v0, v4

    iget v6, p0, Lcom/android/systemui/doze/DozeService$4;->val$reason:I

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(Landroid/content/Context;ZJI)V

    .line 248
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService$4;->val$performedProxCheck:Z

    if-eqz v3, :cond_1e

    .line 250
    return-void

    .line 245
    .end local v0    # "end":J
    .end local v2    # "isNear":Z
    :cond_1c
    const/4 v2, 0x0

    .restart local v2    # "isNear":Z
    goto :goto_4

    .line 253
    .restart local v0    # "end":J
    :cond_1e
    if-eqz v2, :cond_30

    .line 254
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/doze/DozeService;->-set2(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 255
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->-get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 256
    return-void

    .line 260
    :cond_30
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    iget v4, p0, Lcom/android/systemui/doze/DozeService$4;->val$reason:I

    invoke-static {v3, v4}, Lcom/android/systemui/doze/DozeService;->-wrap1(Lcom/android/systemui/doze/DozeService;I)V

    .line 244
    return-void
.end method
