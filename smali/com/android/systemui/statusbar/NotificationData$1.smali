.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 183
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 181
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .registers 21
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 187
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 188
    .local v12, "na":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 189
    .local v13, "nb":Landroid/service/notification/StatusBarNotification;
    const/4 v2, 0x3

    .line 190
    .local v2, "aImportance":I
    const/4 v6, 0x3

    .line 191
    .local v6, "bImportance":I
    const/4 v4, 0x0

    .line 192
    .local v4, "aRank":I
    const/4 v8, 0x0

    .line 194
    .local v8, "bRank":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v14

    if-eqz v14, :cond_60

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v4

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    .line 204
    :cond_60
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->-get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, "mediaNotification":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ae

    .line 208
    const/4 v14, 0x1

    if-le v2, v14, :cond_ac

    const/4 v3, 0x1

    .line 209
    .local v3, "aMedia":Z
    :goto_7a
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 210
    const/4 v14, 0x1

    if-le v6, v14, :cond_b0

    const/4 v7, 0x1

    .line 212
    .local v7, "bMedia":Z
    :goto_88
    const/4 v14, 0x5

    if-lt v2, v14, :cond_b4

    .line 213
    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 214
    :goto_8f
    const/4 v14, 0x5

    if-lt v6, v14, :cond_b6

    .line 215
    invoke-static {v13}, Lcom/android/systemui/statusbar/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    .line 217
    :goto_96
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v10

    .line 218
    .local v10, "isHeadsUp":Z
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v14

    if-eq v10, v14, :cond_ba

    .line 219
    if-eqz v10, :cond_b8

    const/4 v14, -0x1

    :goto_ab
    return v14

    .line 208
    .end local v3    # "aMedia":Z
    .end local v7    # "bMedia":Z
    .end local v10    # "isHeadsUp":Z
    :cond_ac
    const/4 v3, 0x0

    .restart local v3    # "aMedia":Z
    goto :goto_7a

    .line 207
    .end local v3    # "aMedia":Z
    :cond_ae
    const/4 v3, 0x0

    .restart local v3    # "aMedia":Z
    goto :goto_7a

    .line 210
    :cond_b0
    const/4 v7, 0x0

    .restart local v7    # "bMedia":Z
    goto :goto_88

    .line 209
    .end local v7    # "bMedia":Z
    :cond_b2
    const/4 v7, 0x0

    .restart local v7    # "bMedia":Z
    goto :goto_88

    .line 212
    :cond_b4
    const/4 v5, 0x0

    .local v5, "aSystemMax":Z
    goto :goto_8f

    .line 214
    .end local v5    # "aSystemMax":Z
    :cond_b6
    const/4 v9, 0x0

    .local v9, "bSystemMax":Z
    goto :goto_96

    .line 219
    .end local v9    # "bSystemMax":Z
    .restart local v10    # "isHeadsUp":Z
    :cond_b8
    const/4 v14, 0x1

    goto :goto_ab

    .line 220
    :cond_ba
    if-eqz v10, :cond_cd

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->-get1(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v14

    return v14

    .line 223
    :cond_cd
    if-eq v3, v7, :cond_d5

    .line 225
    if-eqz v3, :cond_d3

    const/4 v14, -0x1

    :goto_d2
    return v14

    :cond_d3
    const/4 v14, 0x1

    goto :goto_d2

    .line 226
    :cond_d5
    if-eq v5, v9, :cond_dd

    .line 228
    if-eqz v5, :cond_db

    const/4 v14, -0x1

    :goto_da
    return v14

    :cond_db
    const/4 v14, 0x1

    goto :goto_da

    .line 229
    :cond_dd
    if-eq v4, v8, :cond_e2

    .line 230
    sub-int v14, v4, v8

    return v14

    .line 232
    :cond_e2
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-wide v14, v14, Landroid/app/Notification;->when:J

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v14, v14

    return v14
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
