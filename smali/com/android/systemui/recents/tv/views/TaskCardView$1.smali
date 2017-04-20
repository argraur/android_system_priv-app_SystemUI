.class Lcom/android/systemui/recents/tv/views/TaskCardView$1;
.super Landroid/view/ViewOutlineProvider;
.source "TaskCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsScreenShotView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/views/TaskCardView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/views/TaskCardView;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView$1;->this$0:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView$1;->this$0:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->-get0(Lcom/android/systemui/recents/tv/views/TaskCardView;)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 304
    return-void
.end method
