.class Lcom/android/systemui/doze/DozeService$5;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get9(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get4(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 283
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeService;->-set2(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 285
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-wrap7(Lcom/android/systemui/doze/DozeService;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-wrap8(Lcom/android/systemui/doze/DozeService;)V

    .line 289
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    return-void
.end method

.method public onPulseStarted()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get9(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get4(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 276
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-wrap9(Lcom/android/systemui/doze/DozeService;)V

    .line 274
    :cond_15
    return-void
.end method
