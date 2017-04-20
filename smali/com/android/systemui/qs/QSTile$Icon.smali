.class public abstract Lcom/android/systemui/qs/QSTile$Icon;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Icon"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 461
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPadding()I
    .registers 2

    .prologue
    .line 474
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 470
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    const-class v0, Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method
