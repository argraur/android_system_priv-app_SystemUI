.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;
.super Landroid/service/notification/IConditionListener$Stub;
.source "ZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-direct {p0}, Landroid/service/notification/IConditionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsReceived([Landroid/service/notification/Condition;)V
    .registers 5
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 234
    invoke-static {}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string/jumbo v1, "ZenModeController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConditionsReceived "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    if-nez p1, :cond_3d

    const/4 v0, 0x0

    .line 234
    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string/jumbo v2, " mRequesting="

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Z

    move-result v2

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_3f

    return-void

    .line 235
    :cond_3d
    array-length v0, p1

    goto :goto_18

    .line 237
    :cond_3f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-wrap4(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;[Landroid/service/notification/Condition;)V

    .line 233
    return-void
.end method
