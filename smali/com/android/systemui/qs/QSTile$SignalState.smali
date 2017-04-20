.class public final Lcom/android/systemui/qs/QSTile$SignalState;
.super Lcom/android/systemui/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignalState"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public connected:Z

.field public filter:Z

.field public isOverlayIconWide:Z

.field public overlayIconId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 659
    .local p0, "this":Lcom/android/systemui/qs/QSTile$SignalState;, "Lcom/android/systemui/qs/QSTile<TTState;>.SignalState;"
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .registers 6
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$SignalState;, "Lcom/android/systemui/qs/QSTile<TTState;>.SignalState;"
    move-object v1, p1

    .line 669
    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    .line 670
    .local v1, "o":Lcom/android/systemui/qs/QSTile$SignalState;
    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-ne v2, v3, :cond_f

    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    if-eq v2, v3, :cond_2f

    :cond_f
    const/4 v0, 0x1

    .line 674
    .local v0, "changed":Z
    :goto_10
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    .line 675
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    .line 676
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 677
    iget v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    iput v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    .line 678
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    .line 679
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 680
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_45

    .end local v0    # "changed":Z
    :goto_2e
    return v0

    .line 671
    :cond_2f
    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    if-ne v2, v3, :cond_f

    .line 672
    iget v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-ne v2, v3, :cond_f

    .line 673
    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-eq v2, v3, :cond_43

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_10

    .end local v0    # "changed":Z
    :cond_43
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_10

    .line 680
    :cond_45
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .registers 5

    .prologue
    .line 685
    .local p0, "this":Lcom/android/systemui/qs/QSTile$SignalState;, "Lcom/android/systemui/qs/QSTile<TTState;>.SignalState;"
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile$BooleanState;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 686
    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",activityIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",activityOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",overlayIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",wideOverlayIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    return-object v0
.end method
