.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackState"
.end annotation


# static fields
.field public static final FREEFORM_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field public static final SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field public static final STACK_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;


# instance fields
.field public final freeformBackgroundAlpha:I

.field public final freeformHeightPct:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xff

    .line 152
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;-><init>(FI)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->FREEFORM_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 153
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;-><init>(FI)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->STACK_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 154
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;-><init>(FI)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 150
    return-void
.end method

.method private constructor <init>(FI)V
    .registers 3
    .param p1, "freeformHeightPct"    # F
    .param p2, "freeformBackgroundAlpha"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformHeightPct:F

    .line 166
    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    .line 164
    return-void
.end method

.method public static getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
    .registers 6
    .param p0, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 173
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 174
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    .line 175
    .local v1, "hasFreeformWorkspaces":Z
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getFreeformTaskCount()I

    move-result v0

    .line 176
    .local v0, "freeformCount":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v3

    .line 177
    .local v3, "stackCount":I
    if-eqz v1, :cond_19

    if-lez v3, :cond_19

    if-lez v0, :cond_19

    .line 178
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v4

    .line 179
    :cond_19
    if-eqz v1, :cond_20

    if-lez v0, :cond_20

    .line 180
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->FREEFORM_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v4

    .line 182
    :cond_20
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->STACK_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v4
.end method


# virtual methods
.method public computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .registers 14
    .param p1, "freeformRectOut"    # Landroid/graphics/Rect;
    .param p2, "stackRectOut"    # Landroid/graphics/Rect;
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "topMargin"    # I
    .param p5, "freeformGap"    # I
    .param p6, "stackBottomOffset"    # I

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, p4

    sub-int v0, v3, p6

    .line 198
    .local v0, "availableHeight":I
    int-to-float v3, v0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformHeightPct:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 199
    .local v2, "ffPaddedHeight":I
    sub-int v3, v2, p5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 200
    .local v1, "ffHeight":I
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 201
    iget v4, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    .line 202
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 203
    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p4

    add-int/2addr v6, v1

    .line 200
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 205
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 206
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 207
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    .line 204
    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    if-lez v2, :cond_34

    .line 209
    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 194
    :goto_33
    return-void

    .line 211
    :cond_34
    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p4

    iput v3, p2, Landroid/graphics/Rect;->top:I

    goto :goto_33
.end method
