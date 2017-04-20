.class Lcom/android/systemui/qs/PagedTileLayout$1;
.super Ljava/lang/Object;
.source "PagedTileLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/PagedTileLayout;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$1;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$1;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-wrap0(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 252
    return-void
.end method
