.class Lcom/android/systemui/statusbar/BaseStatusBar$13;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;II)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 1162
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_6

    .line 1163
    return v3

    .line 1165
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1166
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Trying to show notification guts, but not attached to window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return v3

    :cond_16
    move-object v5, p1

    .line 1170
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1171
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1174
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    .line 1175
    .local v2, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-nez v2, :cond_25

    .line 1177
    return v3

    .line 1181
    :cond_25
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap1(Lcom/android/systemui/statusbar/BaseStatusBar;II)V

    .line 1183
    return v3

    .line 1186
    :cond_31
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/16 v1, 0xcc

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1189
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1191
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$13;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->post(Ljava/lang/Runnable;)Z

    .line 1219
    const/4 v0, 0x1

    return v0
.end method
