.class Lcom/android/systemui/statusbar/phone/DozeScrimController$4;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 273
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "DozeScrimController"

    const-string/jumbo v1, "Pulse out finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_f
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-wrap0(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    .line 272
    return-void
.end method
