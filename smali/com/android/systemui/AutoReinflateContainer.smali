.class public Lcom/android/systemui/AutoReinflateContainer;
.super Landroid/widget/FrameLayout;
.source "AutoReinflateContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/AutoReinflateContainer$InflateListener;
    }
.end annotation


# instance fields
.field private mDensity:I

.field private final mInflateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/AutoReinflateContainer$InflateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:I

.field private mLocaleList:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    .line 47
    sget-object v1, Lcom/android/systemui/R$styleable;->AutoReinflateContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AutoReinflateContainer must contain a layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_3a
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 41
    return-void
.end method

.method private inflateLayout()V
    .registers 5

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->removeAllViews()V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_2c

    .line 80
    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/AutoReinflateContainer$InflateListener;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/AutoReinflateContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/AutoReinflateContainer$InflateListener;->onInflated(Landroid/view/View;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 75
    :cond_2c
    return-void
.end method


# virtual methods
.method public addInflateListener(Lcom/android/systemui/AutoReinflateContainer$InflateListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/systemui/AutoReinflateContainer$InflateListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/AutoReinflateContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/AutoReinflateContainer$InflateListener;->onInflated(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "shouldInflateLayout":Z
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 60
    .local v0, "density":I
    iget v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    if-eq v0, v3, :cond_d

    .line 61
    iput v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    .line 62
    const/4 v2, 0x1

    .line 64
    :cond_d
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 65
    .local v1, "localeList":Landroid/os/LocaleList;
    iget-object v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    if-eq v1, v3, :cond_18

    .line 66
    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    .line 67
    const/4 v2, 0x1

    .line 70
    :cond_18
    if-eqz v2, :cond_1d

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 56
    :cond_1d
    return-void
.end method
