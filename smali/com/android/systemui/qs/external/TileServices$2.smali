.class final Lcom/android/systemui/qs/external/TileServices$2;
.super Ljava/lang/Object;
.source "TileServices.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/TileServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/qs/external/TileServiceManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/qs/external/TileServiceManager;Lcom/android/systemui/qs/external/TileServiceManager;)I
    .registers 5
    .param p1, "left"    # Lcom/android/systemui/qs/external/TileServiceManager;
    .param p2, "right"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServiceManager;->getBindPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->getBindPriority()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .prologue
    .line 322
    check-cast p1, Lcom/android/systemui/qs/external/TileServiceManager;

    .end local p1    # "left":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/qs/external/TileServiceManager;

    .end local p2    # "right":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/external/TileServices$2;->compare(Lcom/android/systemui/qs/external/TileServiceManager;Lcom/android/systemui/qs/external/TileServiceManager;)I

    move-result v0

    return v0
.end method
