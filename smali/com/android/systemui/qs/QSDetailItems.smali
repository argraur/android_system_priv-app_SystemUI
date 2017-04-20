.class public Lcom/android/systemui/qs/QSDetailItems;
.super Landroid/widget/FrameLayout;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetailItems$Adapter;,
        Lcom/android/systemui/qs/QSDetailItems$Callback;,
        Lcom/android/systemui/qs/QSDetailItems$H;,
        Lcom/android/systemui/qs/QSDetailItems$Item;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

.field private mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private final mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

.field private mItemList:Lcom/android/systemui/qs/AutoSizingList;

.field private mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

.field private mItemsVisible:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSDetailItems;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDetailItems;Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItemsVisible(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 2
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const-string/jumbo v0, "QSDetailItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailItems$H;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    .line 47
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Adapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 61
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 62
    const-string/jumbo v0, "QSDetailItems"

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convert"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    instance-of v0, p1, Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v0, :cond_7

    .line 67
    check-cast p1, Lcom/android/systemui/qs/QSDetailItems;

    .end local p1    # "convert":Landroid/view/View;
    return-object p1

    .line 69
    .restart local p1    # "convert":Landroid/view/View;
    :cond_7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400bc

    .line 70
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method private handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 136
    return-void
.end method

.method private handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 7
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 141
    if-eqz p1, :cond_1d

    array-length v0, p1

    .line 142
    .local v0, "itemCount":I
    :goto_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    if-nez v0, :cond_1f

    move v1, v2

    :goto_b
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    if-nez v0, :cond_21

    :goto_12
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/AutoSizingList;->setVisibility(I)V

    .line 144
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;->notifyDataSetChanged()V

    .line 140
    return-void

    .line 141
    .end local v0    # "itemCount":I
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "itemCount":I
    goto :goto_6

    :cond_1f
    move v1, v3

    .line 142
    goto :goto_b

    :cond_21
    move v3, v2

    .line 143
    goto :goto_12
.end method

.method private handleSetItemsVisible(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 149
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-ne v1, p1, :cond_5

    return-void

    .line 150
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 152
    :cond_21
    const/4 v1, 0x4

    goto :goto_1b

    .line 148
    :cond_23
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 111
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_f
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    const v4, 0x7f100197

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 89
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v3}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v0

    .line 90
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_2f

    .line 91
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "item":Landroid/view/View;
    const v3, 0x1020016

    .line 93
    const v4, 0x7f100195

    .line 92
    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 94
    const v3, 0x1020010

    .line 95
    const v4, 0x7f100196

    .line 94
    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 86
    .end local v2    # "item":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 117
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 115
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 76
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/AutoSizingList;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    .line 74
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    const/4 v1, 0x2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return-void
.end method

.method public setEmptyState(II)V
    .registers 4
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    return-void
.end method

.method public setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 4
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method

.method public setItemsVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 133
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void

    :cond_14
    move v0, v1

    .line 133
    goto :goto_c
.end method

.method public setTagSuffix(Ljava/lang/String;)V
    .registers 4
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QSDetailItems."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 99
    return-void
.end method
