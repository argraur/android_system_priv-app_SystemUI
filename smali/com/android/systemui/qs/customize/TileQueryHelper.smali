.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

.field private final mSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V
    .registers 6
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "appLabel"    # Ljava/lang/CharSequence;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V
    .registers 5
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/CharSequence;
    .param p3, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p4, "isSystem"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addSystemTiles(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 53
    return-void
.end method

.method private addSystemTiles(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 11
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 60
    iget-object v7, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f0f019f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "possible":Ljava/lang/String;
    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "possibleTiles":[Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    .local v4, "qsHandler":Landroid/os/Handler;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    .local v1, "mainHandler":Landroid/os/Handler;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    array-length v7, v3

    if-ge v0, v7, :cond_4d

    .line 65
    aget-object v5, v3, v0

    .line 66
    .local v5, "spec":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v6

    .line 67
    .local v6, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 70
    const/4 v7, 0x1

    invoke-virtual {v6, p0, v7}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 71
    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTile;->clearState()V

    .line 72
    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v6, p0, v7}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 74
    new-instance v7, Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    invoke-direct {v7, p0, v6, v1, v5}, Lcom/android/systemui/qs/customize/TileQueryHelper$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTile;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 91
    .end local v5    # "spec":Ljava/lang/String;
    .end local v6    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_4d
    new-instance v7, Lcom/android/systemui/qs/customize/TileQueryHelper$2;

    invoke-direct {v7, p0, v1, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$2;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method private addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V
    .registers 8
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "appLabel"    # Ljava/lang/CharSequence;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    .line 126
    .local v0, "state":Lcom/android/systemui/qs/QSTile$State;
    iput-object p3, v0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 127
    iput-object p3, v0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 128
    new-instance v1, Lcom/android/systemui/qs/QSTile$DrawableIcon;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/QSTile$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 129
    const/4 v1, 0x0

    invoke-direct {p0, p1, p4, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V

    .line 124
    return-void
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V
    .registers 9
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/CharSequence;
    .param p3, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p4, "isSystem"    # Z

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 110
    return-void

    .line 112
    :cond_9
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    .line 113
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 114
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 115
    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 114
    iget-object v3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v2, v3, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 116
    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 117
    iput-object p2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    .line 118
    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 119
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method


# virtual methods
.method public setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .line 104
    return-void
.end method
