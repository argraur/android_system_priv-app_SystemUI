.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;

.field final synthetic val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .registers 3
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;
    .param p2, "val$scrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 4743
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1$1;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1$1;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 4748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1$1;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)Landroid/view/View;

    .line 4749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    .line 4746
    return-void
.end method
