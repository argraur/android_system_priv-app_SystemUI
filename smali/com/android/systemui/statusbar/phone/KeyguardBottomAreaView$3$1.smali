.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 668
    return-void
.end method
