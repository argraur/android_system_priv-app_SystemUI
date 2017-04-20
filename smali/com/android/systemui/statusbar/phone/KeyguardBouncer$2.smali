.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPromptReason(I)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->startAppearAnimation()V

    .line 139
    :goto_2b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-set1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->sendAccessibilityEvent(I)V

    .line 121
    return-void

    .line 128
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->requestLayout()V

    goto :goto_2b
.end method
