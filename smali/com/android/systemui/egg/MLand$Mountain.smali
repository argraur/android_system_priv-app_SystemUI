.class Lcom/android/systemui/egg/MLand$Mountain;
.super Lcom/android/systemui/egg/MLand$Building;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mountain"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/egg/MLand;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Mountain;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1414
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Building;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 1416
    sget-object v0, Lcom/android/systemui/egg/MLand;->MOUNTAINS:[I

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->pick([I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Mountain;->setBackgroundResource(I)V

    .line 1417
    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Mountain;->h:I

    iput v0, p0, Lcom/android/systemui/egg/MLand$Mountain;->w:I

    .line 1418
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Mountain;->z:F

    .line 1413
    return-void
.end method
