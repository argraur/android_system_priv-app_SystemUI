.class public Lcom/android/systemui/qs/QSDetailItems$Item;
.super Ljava/lang/Object;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public canDisconnect:Z

.field public icon:I

.field public line1:Ljava/lang/CharSequence;

.field public line2:Ljava/lang/CharSequence;

.field public overlay:Landroid/graphics/drawable/Drawable;

.field public tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method