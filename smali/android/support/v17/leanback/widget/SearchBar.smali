.class public Landroid/support/v17/leanback/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SearchBar$1;,
        Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;,
        Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mAutoStartRecognition:Z

.field private mBackgroundAlpha:I

.field private mBackgroundSpeechAlpha:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeView:Landroid/widget/ImageView;

.field private mBarBackground:Landroid/graphics/drawable/Drawable;

.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mHint:Ljava/lang/String;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListening:Z

.field private mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

.field mRecognizing:Z

.field mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

.field mSearchQuery:Ljava/lang/String;

.field mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

.field mSoundMap:Landroid/util/SparseIntArray;

.field mSoundPool:Landroid/media/SoundPool;

.field mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

.field private mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private final mTextColor:I

.field private final mTextColorSpeechMode:I

.field private final mTextHintColor:I

.field private final mTextHintColorSpeechMode:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$1;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$1;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 120
    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 136
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 138
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 152
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    .line 153
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 168
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 172
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 173
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Landroid/support/v17/leanback/R$layout;->lb_search_bar:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 175
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_search_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarHeight:I

    .line 176
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    iget v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarHeight:I

    .line 176
    invoke-direct {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 179
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/SearchBar;->setBackgroundColor(I)V

    .line 181
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/SearchBar;->setClipChildren(Z)V

    .line 183
    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 185
    const-string/jumbo v3, "input_method"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 187
    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_text_speech_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    .line 188
    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColor:I

    .line 190
    sget v3, Landroid/support/v17/leanback/R$integer;->lb_search_bar_speech_mode_background_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    .line 191
    sget v3, Landroid/support/v17/leanback/R$integer;->lb_search_bar_text_mode_background_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundAlpha:I

    .line 193
    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_hint_speech_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    .line 194
    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColor:I

    .line 196
    const-string/jumbo v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    .line 166
    return-void
.end method

.method private isVoiceMode()Z
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->isFocused()Z

    move-result v0

    return v0
.end method

.method private loadSounds(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 774
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 775
    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_failure:I

    aput v3, v1, v2

    .line 776
    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_open:I

    aput v3, v1, v6

    .line 777
    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_no_input:I

    const/4 v4, 0x2

    aput v3, v1, v4

    .line 778
    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_success:I

    const/4 v4, 0x3

    aput v3, v1, v4

    .line 780
    .local v1, "sounds":[I
    array-length v3, v1

    :goto_18
    if-ge v2, v3, :cond_2a

    aget v0, v1, v2

    .line 781
    .local v0, "sound":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, p1, v0, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 773
    .end local v0    # "sound":I
    :cond_2a
    return-void
.end method

.method private play(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 786
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$11;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/SearchBar$11;-><init>(Landroid/support/v17/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 785
    return-void
.end method

.method private updateHint()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 507
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 509
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 510
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_with_title_speech:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 517
    :cond_2a
    :goto_2a
    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    .line 518
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    if-eqz v1, :cond_37

    .line 519
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 506
    :cond_37
    return-void

    .line 512
    :cond_38
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_with_title:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 514
    :cond_49
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 515
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_speech:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method


# virtual methods
.method hideNativeKeyboard()V
    .registers 4

    .prologue
    .line 484
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 485
    const/4 v2, 0x0

    .line 484
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 483
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 337
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 339
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    .line 340
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->loadSounds(Landroid/content/Context;)V

    .line 336
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 347
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 348
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 344
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 203
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_items:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 204
    .local v0, "items":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    .line 206
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_text_editor:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SearchEditText;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    .line 207
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_badge:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    .line 208
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_30

    .line 209
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_30
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$2;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$2;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/SearchBar$3;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 228
    .local v1, "mOnTextChangedRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$4;

    invoke-direct {v3, p0, v1}, Landroid/support/v17/leanback/widget/SearchBar$4;-><init>(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 249
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    .line 250
    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$5;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$5;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 249
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnKeyboardDismissListener(Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V

    .line 259
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$6;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$6;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 305
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v3, "EscapeNorth=1;VoiceDismiss=1;"

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 307
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_speech_orb:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SpeechOrbView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    .line 308
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$7;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$7;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$8;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$8;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 331
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hasFocus()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->updateUi(Z)V

    .line 332
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->updateHint()V

    .line 200
    return-void
.end method

.method playSearchFailure()V
    .registers 2

    .prologue
    .line 801
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_failure:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 800
    return-void
.end method

.method playSearchOpen()V
    .registers 2

    .prologue
    .line 797
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_open:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 796
    return-void
.end method

.method playSearchSuccess()V
    .registers 2

    .prologue
    .line 809
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_success:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 808
    return-void
.end method

.method public setNextFocusDownId(I)V
    .registers 3
    .param p1, "viewId"    # I

    .prologue
    .line 814
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setNextFocusDownId(I)V

    .line 815
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchEditText;->setNextFocusDownId(I)V

    .line 813
    return-void
.end method

.method setSearchQueryInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 372
    return-void

    .line 374
    :cond_9
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_16

    .line 377
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onSearchQueryChange(Ljava/lang/String;)V

    .line 369
    :cond_16
    return-void
.end method

.method showNativeKeyboard()V
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/SearchBar$9;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 488
    return-void
.end method

.method public startRecognition()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 580
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v3, :cond_7

    return-void

    .line 581
    :cond_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_10

    .line 582
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    .line 584
    :cond_10
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-eqz v3, :cond_2c

    .line 585
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-interface {v3}, Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;->recognizeSpeech()V

    .line 588
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 589
    return-void

    .line 591
    :cond_2c
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v3, :cond_31

    return-void

    .line 592
    :cond_31
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 593
    .local v1, "res":I
    if-eqz v1, :cond_57

    .line 594
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4e

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    if-eqz v3, :cond_4e

    .line 595
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-interface {v3}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;->requestAudioPermission()V

    .line 596
    return-void

    .line 598
    :cond_4e
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "android.permission.RECORD_AUDIO required for search"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 603
    :cond_57
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 605
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v4, v6, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 612
    .local v2, "result":I
    if-eq v2, v5, :cond_6b

    .line 613
    sget-object v3, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Could not get audio focus"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_6b
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "recognizerIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.speech.extra.LANGUAGE_MODEL"

    .line 621
    const-string/jumbo v4, "free_form"

    .line 620
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string/jumbo v3, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v4, Landroid/support/v17/leanback/widget/SearchBar$10;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/SearchBar$10;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v3, v4}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 740
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    .line 741
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v3, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 576
    return-void
.end method

.method public stopRecognition()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 546
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-nez v0, :cond_7

    return-void

    .line 550
    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 553
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 555
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_20

    :cond_1f
    return-void

    .line 557
    :cond_20
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showNotListening()V

    .line 559
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    if-eqz v0, :cond_37

    .line 560
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 561
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    .line 562
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 565
    :cond_37
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 542
    return-void
.end method

.method submitQuery()V
    .registers 3

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_13

    .line 769
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onSearchQuerySubmit(Ljava/lang/String;)V

    .line 767
    :cond_13
    return-void
.end method

.method toggleRecognition()V
    .registers 2

    .prologue
    .line 524
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_8

    .line 525
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 523
    :goto_7
    return-void

    .line 527
    :cond_8
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_7
.end method

.method updateUi(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 745
    if-eqz p1, :cond_30

    .line 746
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 747
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 748
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 749
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    .line 760
    :goto_1d
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->updateHint()V

    .line 744
    return-void

    .line 751
    :cond_21
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 752
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    goto :goto_1d

    .line 755
    :cond_30
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 756
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 757
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    goto :goto_1d
.end method
