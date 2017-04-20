.class Lcom/android/systemui/qs/customize/TileAdapter$6;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field final synthetic val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

.field final synthetic val$position:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p2, "val$position"    # I
    .param p3, "val$info"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .param p4, "val$v"    # Landroid/view/View;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$position:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 317
    if-nez p2, :cond_a

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$position:I

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap3(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    .line 316
    :goto_9
    return-void

    .line 320
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$position:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v0

    :goto_1a
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$v:Landroid/view/View;

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap0(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z

    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get4(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemChanged(I)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 320
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->-get4(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v0

    goto :goto_1a
.end method
