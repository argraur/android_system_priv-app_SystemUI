.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->post(Ljava/lang/Runnable;)Z

    .line 665
    return-void
.end method
