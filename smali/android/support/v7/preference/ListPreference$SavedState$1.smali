.class final Landroid/support/v7/preference/ListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/ListPreference$SavedState;
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
        "Landroid/support/v7/preference/ListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/preference/ListPreference$SavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 310
    new-instance v0, Landroid/support/v7/preference/ListPreference$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/ListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/preference/ListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v7/preference/ListPreference$SavedState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 315
    new-array v0, p1, [Landroid/support/v7/preference/ListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/ListPreference$SavedState$1;->newArray(I)[Landroid/support/v7/preference/ListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method