.class public Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;
.super Lcom/android/systemui/qs/QSTile$DrawableIcon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIconWithRes"
.end annotation


# instance fields
.field private final mId:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "id"    # I

    .prologue
    .line 495
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;, "Lcom/android/systemui/qs/QSTile<TTState;>.DrawableIconWithRes;"
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iput p2, p0, Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;->mId:I

    .line 494
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;, "Lcom/android/systemui/qs/QSTile<TTState;>.DrawableIconWithRes;"
    const/4 v0, 0x0

    .line 501
    instance-of v1, p1, Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;

    if-eqz v1, :cond_e

    check-cast p1, Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;->mId:I

    iget v2, p0, Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;->mId:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method
