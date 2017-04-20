.class final Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;
.super Ljava/lang/Object;
.source "BatteryTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BatteryTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$1;
    }
.end annotation


# instance fields
.field private mCurrentView:Landroid/view/View;

.field private final mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BatteryTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;Lcom/android/settingslib/BatteryInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/android/settingslib/BatteryInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->bindBatteryInfo(Lcom/android/settingslib/BatteryInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->bindView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->postBindView()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/BatteryTile;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BatteryTile;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/android/systemui/BatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get4(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 167
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get4(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0074

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 166
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/BatteryMeterDrawable;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    .line 295
    new-instance v0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$1;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BatteryTile;Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BatteryTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile;)V

    return-void
.end method

.method private bindBatteryInfo(Lcom/android/settingslib/BatteryInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/android/settingslib/BatteryInfo;

    .prologue
    .line 242
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 243
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x40266666    # 2.6f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 244
    const/16 v3, 0x11

    .line 243
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 245
    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 246
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 247
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 251
    :goto_30
    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 253
    :cond_35
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v2, 0x7f1200ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v2, 0x7f1200ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/graph/UsageView;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    invoke-virtual {p1, v1, v2}, Lcom/android/settingslib/BatteryInfo;->bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    .line 241
    return-void

    .line 249
    :cond_55
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_30
.end method

.method private bindView()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const v7, 0x1020017

    const/4 v6, 0x0

    const v5, 0x7f1200af

    .line 203
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    if-nez v3, :cond_e

    .line 204
    return-void

    .line 206
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/systemui/BatteryMeterDrawable;->onBatteryLevelChanged(IZZ)V

    .line 207
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v3, v8}, Lcom/android/systemui/BatteryMeterDrawable;->onPowerSaveChanged(Z)V

    .line 208
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterDrawable;->disableShowPercent()V

    .line 209
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    .line 211
    .local v2, "checkbox":Landroid/widget/Checkable;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get7(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 212
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$3;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    invoke-static {v3, v4}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V

    .line 221
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 223
    .local v1, "batterySaverTitle":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    .local v0, "batterySaverSummary":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get1(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 225
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 226
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    const v3, 0x7f0f03a4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    .line 202
    :goto_97
    return-void

    .line 231
    :cond_98
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 232
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    const v3, 0x7f0f03a5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 234
    const v3, 0x7f0f03a6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 237
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_97
.end method

.method private postBindView()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$2;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    if-nez p2, :cond_14

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001c

    .line 184
    const/4 v2, 0x0

    .line 183
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 186
    :cond_14
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->bindView()V

    .line 189
    return-object p2
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 275
    const/16 v0, 0x112

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get5(Lcom/android/systemui/qs/tiles/BatteryTile;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f03a3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get0(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get7(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSaveMode(Z)V

    .line 259
    return-void

    .line 260
    :cond_13
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get3(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-set0(Lcom/android/systemui/qs/tiles/BatteryTile;Z)Z

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    :cond_1f
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get3(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-set0(Lcom/android/systemui/qs/tiles/BatteryTile;Z)Z

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    :cond_17
    return-void
.end method

.method public setToggleState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 269
    return-void
.end method
