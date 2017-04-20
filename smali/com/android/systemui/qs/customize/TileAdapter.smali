.class public Lcom/android/systemui/qs/customize/TileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TileAdapter.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileAdapter$1;,
        Lcom/android/systemui/qs/customize/TileAdapter$2;,
        Lcom/android/systemui/qs/customize/TileAdapter$Holder;,
        Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/qs/customize/TileAdapter$Holder;",
        ">;",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;"
    }
.end annotation


# instance fields
.field private mAccessibilityFromIndex:I

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityMoving:Z

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private mEditIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private final mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mNeedsFocus:Z

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field private mTileDividerIndex:I

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileAdapter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z
    .registers 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->selectPosition(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleDrag(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 460
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 505
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$2;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 91
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 92
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 93
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 89
    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 160
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 161
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v1

    .line 159
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method private move(IILjava/util/List;)V
    .registers 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemMoved(II)V

    .line 408
    return-void
.end method

.method private move(IILandroid/view/View;)Z
    .registers 12
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 346
    if-ne p2, p1, :cond_6

    .line 347
    return v5

    .line 349
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v1, v2, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 350
    .local v1, "fromLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-direct {p0, p1, p2, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILjava/util/List;)V

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 353
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p2, v2, :cond_4e

    .line 354
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 355
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 354
    const/16 v4, 0x168

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x169

    invoke-static {v2, v3, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 358
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    .line 359
    aput-object v1, v3, v6

    .line 358
    const v4, 0x7f0f0409

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "announcement":Ljava/lang/CharSequence;
    :goto_45
    invoke-virtual {p3, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 377
    return v5

    .line 360
    .end local v0    # "announcement":Ljava/lang/CharSequence;
    :cond_4e
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p1, v2, :cond_82

    .line 361
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 362
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 361
    const/16 v4, 0x16a

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x16b

    invoke-static {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 365
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v7, [Ljava/lang/Object;

    .line 366
    aput-object v1, v3, v6

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 365
    const v4, 0x7f0f0408

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announcement":Ljava/lang/CharSequence;
    goto :goto_45

    .line 368
    .end local v0    # "announcement":Ljava/lang/CharSequence;
    :cond_82
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 369
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 368
    const/16 v4, 0x16c

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x16d

    invoke-static {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 372
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v7, [Ljava/lang/Object;

    .line 373
    aput-object v1, v3, v6

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 372
    const v4, 0x7f0f040a

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announcement":Ljava/lang/CharSequence;
    goto :goto_45
.end method

.method private recalcSpecs()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    if-nez v3, :cond_a

    .line 133
    :cond_9
    return-void

    .line 135
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 136
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_37

    .line 138
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    .line 139
    .local v2, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v2, :cond_34

    .line 140
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 143
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_37
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v0, 0x0

    :goto_3d
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_61

    .line 145
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 146
    .restart local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v3, :cond_5e

    .line 147
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 144
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 151
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_61
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method private selectPosition(ILandroid/view/View;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 299
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemRemoved(I)V

    .line 301
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne p1, v0, :cond_1b

    add-int/lit8 p1, p1, -0x1

    .line 303
    :cond_1b
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 295
    return-void
.end method

.method private showAccessibilityDialog(ILandroid/view/View;)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 308
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 309
    .local v1, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 310
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    const v5, 0x7f0f0406

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 311
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    const v5, 0x7f0f0407

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 313
    .local v2, "options":[Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$6;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/systemui/qs/customize/TileAdapter$6;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V

    .line 313
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 325
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 313
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 327
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/AlertDialog;Z)V

    .line 328
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)V

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 307
    return-void
.end method

.method private startAccessibleDrag(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    .line 334
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 335
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 337
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 332
    return-void
.end method

.method private static strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "tileInfo"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 401
    .local v1, "spec":Ljava/lang/String;
    const-string/jumbo v2, "custom("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 402
    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 403
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 405
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_14
    return-object v1
.end method

.method private updateDividerLocations()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 383
    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 384
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 386
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22

    .line 387
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne v1, v2, :cond_25

    .line 388
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 385
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 390
    :cond_25
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    goto :goto_22

    .line 394
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne v1, v2, :cond_39

    .line 395
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemChanged(I)V

    .line 380
    :cond_39
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object v0
.end method

.method public getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_c

    .line 170
    const/4 v0, 0x2

    return v0

    .line 172
    :cond_c
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne p1, v0, :cond_12

    .line 173
    const/4 v0, 0x4

    return v0

    .line 175
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 176
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public getSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 209
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
    .registers 13
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .param p2, "position"    # I

    .prologue
    const v9, 0x7f0f0405

    const/4 v7, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 210
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v3, :cond_21

    .line 211
    iget-object v4, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1f

    :goto_1b
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void

    :cond_1f
    move v2, v3

    .line 212
    goto :goto_1b

    .line 215
    :cond_21
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v4, :cond_41

    .line 216
    iget-object v2, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 217
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    if-eqz v3, :cond_3d

    const v3, 0x7f0f03f4

    .line 216
    :goto_39
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 219
    return-void

    .line 218
    :cond_3d
    const v3, 0x7f0f03f3

    goto :goto_39

    .line 221
    :cond_41
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v7, :cond_a7

    .line 222
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    .line 223
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusable(Z)V

    .line 224
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusableInTouchMode(Z)V

    .line 225
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setVisibility(I)V

    .line 226
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setImportantForAccessibility(I)V

    .line 227
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    .line 228
    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    .line 227
    invoke-virtual {v5, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$3;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    if-eqz v3, :cond_a6

    .line 238
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->requestLayout()V

    .line 239
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$4;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$4;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 247
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 249
    :cond_a6
    return-void

    .line 252
    :cond_a7
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 254
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v5, :cond_120

    .line 255
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/Object;

    .line 256
    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, v2

    const v8, 0x7f0f0404

    .line 255
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 264
    :goto_c8
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 265
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setAppLabel(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v6, :cond_e6

    iget-boolean v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v6, :cond_158

    :cond_e6
    :goto_e6
    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 268
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 269
    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v2, :cond_f9

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p2, v2, :cond_15a

    :cond_f9
    const/4 v1, 0x1

    .line 270
    .local v1, "selectable":Z
    :goto_fa
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    .line 271
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusable(Z)V

    .line 272
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    if-eqz v1, :cond_15c

    :goto_10e
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setImportantForAccessibility(I)V

    .line 275
    if-eqz v1, :cond_11f

    .line 276
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$5;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .end local v1    # "selectable":Z
    :cond_11f
    return-void

    .line 257
    :cond_120
    iget-boolean v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v5, :cond_139

    .line 258
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/Object;

    .line 259
    add-int/lit8 v8, p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 258
    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_c8

    .line 261
    :cond_139
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    .line 262
    add-int/lit8 v8, p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, v4

    const v8, 0x7f0f0403

    .line 261
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_c8

    :cond_158
    move v2, v4

    .line 266
    goto :goto_e6

    .line 269
    :cond_15a
    const/4 v1, 0x0

    .restart local v1    # "selectable":Z
    goto :goto_fa

    :cond_15c
    move v4, v3

    .line 274
    goto :goto_10e
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 185
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x4

    if-ne p2, v3, :cond_19

    .line 186
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    const v4, 0x7f0400b6

    invoke-virtual {v2, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3

    .line 188
    :cond_19
    const/4 v3, 0x1

    if-ne p2, v3, :cond_29

    .line 189
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    const v4, 0x7f0400b3

    invoke-virtual {v2, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3

    .line 191
    :cond_29
    const v3, 0x7f0400b7

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 193
    .local v1, "frame":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v4, Lcom/android/systemui/qs/QSIconView;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/QSIconView;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 194
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 203
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z
    .registers 3
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->clearDrag()V

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 126
    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 5
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 111
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 113
    :cond_26
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 114
    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 108
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 2
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 96
    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "currentSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    return-void

    .line 121
    :cond_9
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 117
    return-void
.end method
