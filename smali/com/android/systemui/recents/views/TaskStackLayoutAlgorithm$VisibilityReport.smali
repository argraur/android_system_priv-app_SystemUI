.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibilityReport"
.end annotation


# instance fields
.field public numVisibleTasks:I

.field public numVisibleThumbnails:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .param p2, "tasks"    # I
    .param p3, "thumbnails"    # I

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->this$0:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    .line 231
    iput p3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    .line 229
    return-void
.end method
