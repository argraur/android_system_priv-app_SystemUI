.class final Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3159
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3158
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 3164
    new-array v0, p1, [Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 3163
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState$1;->newArray(I)[Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    move-result-object v0

    return-object v0
.end method
