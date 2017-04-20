.class Lcom/android/systemui/qs/tiles/DndTile$4;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$4;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .registers 2
    .param p1, "expanded"    # Z

    .prologue
    .line 305
    return-void
.end method

.method public onInteraction()V
    .registers 1

    .prologue
    .line 300
    return-void
.end method

.method public onPrioritySettings()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$4;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get5(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->-get1()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 295
    return-void
.end method
