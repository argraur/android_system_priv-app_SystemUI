.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 594
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 597
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 596
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 599
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 598
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 593
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 603
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J

    .line 604
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v6

    .line 614
    .local v6, "mediaKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 615
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 616
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v0, :cond_5b

    .line 617
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 618
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get24(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v9

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v4

    .line 620
    .local v4, "isVisible":Z
    invoke-static {v5, v3, v4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v8

    .line 621
    .local v8, "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 622
    .local v7, "previouslyVisible":Z
    if-eqz v4, :cond_57

    .line 624
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 625
    if-nez v7, :cond_54

    .line 626
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 630
    :cond_57
    invoke-virtual {v8}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    goto :goto_54

    .line 633
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "isVisible":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "previouslyVisible":Z
    .end local v8    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_5b
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 634
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 636
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 637
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 636
    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 639
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/util/ArraySet;)V

    .line 640
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 642
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/util/ArraySet;)V

    .line 643
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 644
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 645
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 602
    return-void
.end method
