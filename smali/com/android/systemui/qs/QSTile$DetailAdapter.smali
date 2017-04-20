.class public interface abstract Lcom/android/systemui/qs/QSTile$DetailAdapter;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetailAdapter"
.end annotation


# virtual methods
.method public abstract createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public abstract getSettingsIntent()Landroid/content/Intent;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getToggleEnabled()Z
    .registers 2

    .prologue
    .line 152
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DetailAdapter;, "Lcom/android/systemui/qs/QSTile<TTState;>.DetailAdapter;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getToggleState()Ljava/lang/Boolean;
.end method

.method public abstract setToggleState(Z)V
.end method
