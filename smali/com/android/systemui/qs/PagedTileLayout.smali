.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroid/support/v4/view/ViewPager;
.source "PagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PagedTileLayout$1;,
        Lcom/android/systemui/qs/PagedTileLayout$2;,
        Lcom/android/systemui/qs/PagedTileLayout$PageListener;,
        Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mDecorGroup:Landroid/view/View;

.field private final mDistribute:Ljava/lang/Runnable;

.field private mListening:Z

.field private mNumPages:I

.field private mOffPage:Z

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/PagedTileLayout$TilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/PagedTileLayout;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/PagedTileLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/PagedTileLayout;IZ)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "offPage"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentPage(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    .line 300
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 42
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(I)V

    .line 39
    return-void
.end method

.method private distributeTiles()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 187
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 188
    .local v0, "NP":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_18

    .line 189
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->removeAllViews()V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 191
    :cond_18
    const/4 v3, 0x0

    .line 192
    .local v3, "index":I
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 193
    .local v1, "NT":I
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_64

    .line 194
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 195
    .local v4, "tile":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->isFull()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 196
    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v3, v5, :cond_56

    .line 199
    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 200
    const v8, 0x7f0400bd

    .line 199
    invoke-virtual {v5, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_56
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 207
    .end local v4    # "tile":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_64
    iget v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    add-int/lit8 v7, v3, 0x1

    if-eq v5, v7, :cond_a5

    .line 208
    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    .line 209
    :goto_6e
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    if-le v5, v7, :cond_86

    .line 210
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6e

    .line 213
    :cond_86
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 214
    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_a6

    move v5, v6

    :goto_95
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 216
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 217
    invoke-virtual {p0, v6, v6}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 185
    :cond_a5
    return-void

    .line 214
    :cond_a6
    const/16 v5, 0x8

    goto :goto_95
.end method

.method private postDistributeTiles()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method private setCurrentPage(IZ)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "offPage"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-ne v0, p2, :cond_b

    return-void

    .line 110
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-eqz v0, :cond_2d

    .line 111
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    if-eq v0, p1, :cond_32

    .line 113
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eqz v0, :cond_23

    .line 115
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 118
    :cond_23
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 119
    if-eqz p2, :cond_2d

    .line 120
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 128
    :cond_2d
    :goto_2d
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    .line 129
    iput-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    .line 108
    return-void

    .line 122
    :cond_32
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eq v0, p2, :cond_2d

    .line 124
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    goto :goto_2d
.end method

.method private setPageListening(IZ)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "listening"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_9

    return-void

    .line 134
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 137
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    .line 132
    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postDistributeTiles()V

    .line 164
    return-void
.end method

.method public getColumnCount()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 259
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    iget v0, v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    return v0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .registers 5
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 158
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileBaseView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    .local v0, "parent":Landroid/view/ViewGroup;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    .line 160
    :cond_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onFinishInflate()V

    .line 148
    const v0, 0x7f12015b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 149
    const v0, 0x7f1201de

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 153
    const v2, 0x7f0400bd

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getChildCount()I

    move-result v0

    .line 240
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_19

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 242
    .local v1, "height":I
    if-le v1, v3, :cond_16

    .line 243
    move v3, v1

    .line 240
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 246
    .end local v1    # "height":I
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getMeasuredWidth()I

    move-result v5

    .line 247
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_32

    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 246
    :goto_2d
    add-int/2addr v4, v3

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/qs/PagedTileLayout;->setMeasuredDimension(II)V

    .line 234
    return-void

    .line 247
    :cond_32
    const/4 v4, 0x0

    goto :goto_2d
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRtlPropertiesChanged(I)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 75
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 72
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postDistributeTiles()V

    .line 170
    :cond_b
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 83
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 79
    return-void
.end method

.method public setListening(Z)V
    .registers 5
    .param p1, "listening"    # Z

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-ne v1, p1, :cond_6

    return-void

    .line 89
    :cond_6
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 90
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-eqz v1, :cond_1d

    .line 91
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 92
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eqz v1, :cond_1c

    .line 93
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 87
    :cond_1c
    return-void

    .line 97
    :cond_1d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 98
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    .line 176
    return-void
.end method

.method public updateResources()Z
    .registers 4

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "changed":Z
    const/4 v1, 0x0

    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 225
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    move-result v2

    or-int/2addr v0, v2

    .line 224
    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 227
    .end local v0    # "changed":Z
    :cond_1a
    if-eqz v0, :cond_1f

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    .line 230
    :cond_1f
    return v0
.end method
