.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderProcessor"
.end annotation


# instance fields
.field private final mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private mApply:Z

.field private mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

.field private final mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private final mId:I

.field private mParentData:Ljava/lang/Object;

.field private final mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mParentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V
    .registers 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "id"    # I
    .param p3, "extractor"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;
    .param p4, "comparator"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;
    .param p5, "applicator"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    .line 255
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 256
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 257
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 253
    return-void
.end method

.method private applyToView(ZLandroid/view/View;)V
    .registers 5
    .param p1, "apply"    # Z
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 296
    if-eqz p2, :cond_12

    .line 297
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 295
    .end local v0    # "view":Landroid/view/View;
    :cond_12
    :goto_12
    return-void

    .line 299
    .restart local v0    # "view":Landroid/view/View;
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;->apply(Landroid/view/View;Z)V

    goto :goto_12
.end method

.method public static forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
    .registers 8
    .param p0, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "id"    # I

    .prologue
    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->-get0()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->-get1()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 280
    return-void
.end method

.method public apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .registers 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "reset"    # Z

    .prologue
    .line 285
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    if-eqz v1, :cond_6

    if-eqz p2, :cond_15

    :cond_6
    const/4 v0, 0x0

    .line 286
    .local v0, "apply":Z
    :goto_7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 287
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 288
    return-void

    .line 285
    .end local v0    # "apply":Z
    :cond_15
    const/4 v0, 0x1

    .restart local v0    # "apply":Z
    goto :goto_7

    .line 290
    :cond_17
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 291
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 284
    return-void
.end method

.method public compareToHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 8
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 267
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    if-nez v2, :cond_5

    .line 268
    return-void

    .line 270
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    .line 271
    .local v1, "header":Landroid/view/NotificationHeaderView;
    if-nez v1, :cond_f

    .line 272
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    .line 273
    return-void

    .line 275
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    if-nez v2, :cond_27

    const/4 v0, 0x0

    .line 276
    :goto_14
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {v1, v4}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 277
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentData:Ljava/lang/Object;

    .line 276
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    .line 266
    return-void

    .line 275
    :cond_27
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;->extractData(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "childData":Ljava/lang/Object;
    goto :goto_14
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    if-nez v1, :cond_23

    :goto_13
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentData:Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    .line 261
    return-void

    .line 263
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;->extractData(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    .line 264
    :cond_2c
    const/4 v0, 0x1

    goto :goto_20
.end method
