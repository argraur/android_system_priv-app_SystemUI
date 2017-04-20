.class Lcom/android/systemui/statusbar/BaseStatusBar$10;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZLandroid/content/Intent;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$intent"    # Landroid/content/Intent;
    .param p4, "val$appUid"    # I

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$keyguardShowing:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$appUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1049
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$keyguardShowing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$appUid:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$10;ZLandroid/content/Intent;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 1066
    return v4
.end method
