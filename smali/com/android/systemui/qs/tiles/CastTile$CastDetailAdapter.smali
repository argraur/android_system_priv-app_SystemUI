.class final Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CastDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private final mVisibleOrder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)Ljava/util/LinkedHashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/Set;)V
    .registers 2
    .param p1, "devices"    # Ljava/util/Set;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CastTile;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CastTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    return-void
.end method

.method private updateItems(Ljava/util/Set;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/CastController$CastDevice;>;"
    const/4 v10, 0x1

    .line 235
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v8, :cond_6

    return-void

    .line 236
    :cond_6
    const/4 v7, 0x0

    .line 237
    .local v7, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 272
    .end local v7    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_f
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v8, v7}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 234
    return-void

    .line 239
    .restart local v7    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 240
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v8, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_19

    .line 241
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 242
    .local v6, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v8, 0x7f0200d7

    iput v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 243
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8, v0}, Lcom/android/systemui/qs/tiles/CastTile;->-wrap0(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 244
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f02c3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 245
    iput-object v0, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 246
    iput-boolean v10, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 247
    new-array v7, v10, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .end local v7    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v8, 0x0

    aput-object v6, v7, v8

    .line 252
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .end local v6    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_54
    if-nez v7, :cond_f

    .line 253
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 254
    .restart local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 256
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_6e
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    new-array v7, v8, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 257
    .local v7, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v2, 0x0

    .line 258
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "id$iterator":Ljava/util/Iterator;
    :cond_7f
    :goto_7f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 259
    .local v4, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 260
    .restart local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 261
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 262
    .restart local v6    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v8, 0x7f0200d6

    iput v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 263
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8, v0}, Lcom/android/systemui/qs/tiles/CastTile;->-wrap0(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 264
    iget v8, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v8, v10, :cond_be

    .line 265
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f02c4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 267
    :cond_be
    iput-object v0, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 268
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v6, v7, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_7f
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 209
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v1, "Cast"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 211
    if-nez p2, :cond_2c

    .line 212
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->-get1()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get2(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "addOnAttachStateChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v1, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 226
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v1, 0x7f0200d5

    .line 227
    const v2, 0x7f0f02bc

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/Set;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 204
    const/16 v0, 0x97

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 194
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f02b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 5
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 277
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_7

    :cond_6
    return-void

    .line 278
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x9d

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 279
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 280
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CastController;->startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    .line 276
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 5
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 285
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_7

    :cond_6
    return-void

    .line 286
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x9e

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 287
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 288
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CastController;->stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    .line 284
    return-void
.end method

.method public setToggleState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 198
    return-void
.end method
