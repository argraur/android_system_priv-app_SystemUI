.class public Lcom/android/systemui/qs/QSTile$BooleanState;
.super Lcom/android/systemui/qs/QSTile$State;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanState"
.end annotation


# instance fields
.field public value:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 628
    .local p0, "this":Lcom/android/systemui/qs/QSTile$BooleanState;, "Lcom/android/systemui/qs/QSTile<TTState;>.BooleanState;"
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .registers 6
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$BooleanState;, "Lcom/android/systemui/qs/QSTile<TTState;>.BooleanState;"
    move-object v1, p1

    .line 633
    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .line 634
    .local v1, "o":Lcom/android/systemui/qs/QSTile$BooleanState;
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eq v2, v3, :cond_15

    :cond_f
    const/4 v0, 0x1

    .line 635
    .local v0, "changed":Z
    :goto_10
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 636
    return v0

    .line 634
    .end local v0    # "changed":Z
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_10
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .registers 5

    .prologue
    .line 641
    .local p0, "this":Lcom/android/systemui/qs/QSTile$BooleanState;, "Lcom/android/systemui/qs/QSTile<TTState;>.BooleanState;"
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 642
    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    return-object v0
.end method
