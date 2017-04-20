.class public Lcom/android/systemui/qs/QSTile$DrawableIcon;
.super Lcom/android/systemui/qs/QSTile$Icon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIcon"
.end annotation


# instance fields
.field protected final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 481
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DrawableIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.DrawableIcon;"
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$Icon;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 481
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 487
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DrawableIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.DrawableIcon;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
