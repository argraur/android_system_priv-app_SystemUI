.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateShowingPublic(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$hiddenView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "val$hiddenView"    # Landroid/view/View;

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->val$hiddenView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->val$hiddenView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    return-void
.end method
