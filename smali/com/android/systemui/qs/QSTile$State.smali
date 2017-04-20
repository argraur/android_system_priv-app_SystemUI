.class public Lcom/android/systemui/qs/QSTile$State;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public autoMirrorDrawable:Z

.field public contentDescription:Ljava/lang/CharSequence;

.field public disabledByPolicy:Z

.field public dualLabelContentDescription:Ljava/lang/CharSequence;

.field public enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public expandedAccessibilityClassName:Ljava/lang/String;

.field public icon:Lcom/android/systemui/qs/QSTile$Icon;

.field public label:Ljava/lang/CharSequence;

.field public minimalAccessibilityClassName:Ljava/lang/String;

.field public minimalContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 559
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 559
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .registers 6
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    const/4 v3, 0x0

    .line 572
    if-nez p1, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 573
    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 574
    :cond_1d
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 575
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 576
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 577
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 578
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 579
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 578
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 580
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    .line 581
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    .line 580
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 582
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 583
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 582
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 584
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 585
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 584
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 586
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 587
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    const/4 v0, 0x0

    .line 588
    .local v0, "changed":Z
    :goto_92
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 589
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 590
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 591
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 592
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    .line 593
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 594
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 595
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 596
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    .line 597
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_c1

    .line 598
    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 604
    :goto_bc
    return v0

    .line 574
    .end local v0    # "changed":Z
    :cond_bd
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_92

    .line 587
    .end local v0    # "changed":Z
    :cond_bf
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_92

    .line 599
    :cond_c1
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_cf

    .line 600
    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_bc

    .line 602
    :cond_cf
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->copyTo(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_bc
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 609
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 613
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 614
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ",icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    const-string/jumbo v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 616
    const-string/jumbo v1, ",contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 617
    const-string/jumbo v1, ",dualLabelContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v1, ",minimalContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 619
    const-string/jumbo v1, ",minimalAccessibilityClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string/jumbo v1, ",expandedAccessibilityClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string/jumbo v1, ",autoMirrorDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo v1, ",disabledByPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 623
    const-string/jumbo v1, ",enforcedAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method
