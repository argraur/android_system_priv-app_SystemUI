.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 5
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    .end local p2    # "inflated":Landroid/view/View;
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get9(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setNotificationRowParent(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get9(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setAppName(Ljava/lang/String;)V

    .line 869
    return-void
.end method
