.class Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;
.super Ljava/lang/Object;
.source "FingerprintUnlockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 125
    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "fp wakelock: TIMEOUT!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->-wrap0(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    .line 123
    return-void
.end method
