.class final Lcom/android/systemui/stackdivider/DividerHandleView$2;
.super Landroid/util/Property;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerHandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/systemui/stackdivider/DividerHandleView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 55
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/stackdivider/DividerHandleView;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"    # Lcom/android/systemui/stackdivider/DividerHandleView;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->-get0(Lcom/android/systemui/stackdivider/DividerHandleView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Lcom/android/systemui/stackdivider/DividerHandleView;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView$2;->get(Lcom/android/systemui/stackdivider/DividerHandleView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/systemui/stackdivider/DividerHandleView;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "object"    # Lcom/android/systemui/stackdivider/DividerHandleView;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 64
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->-set1(Lcom/android/systemui/stackdivider/DividerHandleView;I)I

    .line 65
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    .line 63
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Lcom/android/systemui/stackdivider/DividerHandleView;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerHandleView$2;->set(Lcom/android/systemui/stackdivider/DividerHandleView;Ljava/lang/Integer;)V

    return-void
.end method
