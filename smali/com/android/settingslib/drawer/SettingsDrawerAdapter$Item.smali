.class Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;
.super Ljava/lang/Object;
.source "SettingsDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/SettingsDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Icon;

.field public label:Ljava/lang/CharSequence;

.field public tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;-><init>()V

    return-void
.end method
