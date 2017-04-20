.class public Lcom/android/systemui/qs/QSFooter;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooter$1;,
        Lcom/android/systemui/qs/QSFooter$2;,
        Lcom/android/systemui/qs/QSFooter$Callback;,
        Lcom/android/systemui/qs/QSFooter$H;,
        Lcom/android/systemui/qs/QSFooter$VpnSpan;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private final mFooterIcon2:Landroid/widget/ImageView;

.field private mFooterIcon2Id:I

.field private mFooterIconId:I

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextId:I

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsIcon2Visible:Z

.field private mIsIconVisible:Z

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFooter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFooter;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/QSFooter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/QSFooter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSFooter;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon2Id:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSFooter;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/QSFooter;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/QSFooter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsIcon2Visible:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSFooter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleClick()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSFooter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleRefreshState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "QSFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSFooter;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .registers 6
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/systemui/qs/QSFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSFooter$Callback;-><init>(Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/qs/QSFooter$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    .line 278
    new-instance v0, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateIcon:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Lcom/android/systemui/qs/QSFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$2;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 72
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    const v1, 0x7f0400c5

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f1201e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f1201e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f1201e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon2:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f020101

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    .line 79
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon2Id:I

    .line 80
    iput-object p2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method private createDialog()V
    .registers 18

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "deviceOwnerPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "profileOwnerPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v10

    .line 174
    .local v10, "isNetworkLoggingEnabled":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "primaryVpn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileVpnName()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "profileVpn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v6

    .line 177
    .local v6, "hasProfileOwner":Z
    if-nez v2, :cond_9e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v7

    .line 179
    :goto_3a
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    .line 180
    if-nez v7, :cond_56

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/QSFooter;->getTitle(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog;->setTitle(I)V

    :cond_56
    move-object/from16 v1, p0

    .line 183
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/qs/QSFooter;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object v12

    .line 185
    .local v12, "msg":Ljava/lang/CharSequence;
    if-nez v2, :cond_af

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v1

    if-eqz v1, :cond_79

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnRestricted()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 226
    :cond_79
    :goto_79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/qs/QSFooter;->getPositiveButton(Z)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v1, v15, v14, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v14, -0x1

    .line 229
    const/4 v15, -0x2

    .line 228
    invoke-virtual {v1, v14, v15}, Landroid/view/Window;->setLayout(II)V

    .line 170
    return-void

    .line 177
    .end local v12    # "msg":Ljava/lang/CharSequence;
    :cond_9e
    const/4 v7, 0x0

    .local v7, "isBranded":Z
    goto :goto_3a

    .line 188
    .end local v7    # "isBranded":Z
    .restart local v12    # "msg":Ljava/lang/CharSequence;
    :cond_a0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v1, v15, v14, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_79

    .line 191
    :cond_af
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 192
    const v14, 0x7f0400c6

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 191
    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 193
    .local v9, "dialogView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 195
    const v1, 0x7f1201ea

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 196
    .local v8, "deviceOwnerWarning":Landroid/widget/TextView;
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 199
    if-nez v4, :cond_12c

    .line 200
    const v1, 0x7f1201eb

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const v1, 0x7f1201ec

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const v1, 0x7f1201ed

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :goto_104
    if-nez v10, :cond_79

    .line 220
    const v1, 0x7f1201ee

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 221
    const v1, 0x7f1201ef

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const v1, 0x7f1201f0

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_79

    .line 204
    :cond_12c
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 205
    .local v11, "message":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 206
    const/4 v15, 0x0

    aput-object v4, v14, v15

    .line 205
    const v15, 0x7f0f032e

    invoke-virtual {v1, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnRestricted()Z

    move-result v1

    if-nez v1, :cond_173

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    .line 209
    const v14, 0x7f0f032f

    .line 208
    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v14, 0x7f0f0330

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v14, Lcom/android/systemui/qs/QSFooter$VpnSpan;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/qs/QSFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    const/4 v15, 0x0

    .line 210
    invoke-virtual {v11, v1, v14, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 214
    :cond_173
    const v1, 0x7f1201ed

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 215
    .local v13, "vpnWarning":Landroid/widget/TextView;
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_104
.end method

.method private getPositiveButton(Z)Ljava/lang/String;
    .registers 4
    .param p1, "isBranded"    # Z

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_c

    const v0, 0x104000a

    :goto_7
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const v0, 0x7f0f02c2

    goto :goto_7
.end method

.method private getSettingsButton()Ljava/lang/String;
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0f01c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitle(Ljava/lang/String;)I
    .registers 3
    .param p1, "deviceOwner"    # Ljava/lang/String;

    .prologue
    .line 271
    if-eqz p1, :cond_6

    .line 272
    const v0, 0x7f0f0326

    return v0

    .line 274
    :cond_6
    const v0, 0x7f0f0328

    return v0
.end method

.method private handleClick()V
    .registers 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->showDeviceMonitoringDialog()V

    .line 115
    return-void
.end method

.method private handleRefreshState()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 132
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v3

    .line 133
    .local v3, "isVpnEnabled":Z
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v2

    .line 134
    .local v2, "isNetworkLoggingEnabled":Z
    if-nez v3, :cond_3f

    move v4, v2

    :goto_10
    iput-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    .line 135
    if-eqz v3, :cond_41

    .end local v2    # "isNetworkLoggingEnabled":Z
    :goto_14
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsIcon2Visible:Z

    .line 136
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 137
    const v4, 0x7f0f0322

    iput v4, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    .line 138
    iput-boolean v5, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    .line 139
    if-eqz v3, :cond_43

    .line 140
    const v0, 0x7f020101

    .line 142
    .local v0, "footerIconId":I
    :goto_2a
    iget v4, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    if-eq v4, v0, :cond_37

    .line 143
    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    .line 144
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_37
    :goto_37
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void

    .end local v0    # "footerIconId":I
    .restart local v2    # "isNetworkLoggingEnabled":Z
    :cond_3f
    move v4, v5

    .line 134
    goto :goto_10

    .line 135
    :cond_41
    const/4 v2, 0x0

    goto :goto_14

    .line 141
    .end local v2    # "isNetworkLoggingEnabled":Z
    :cond_43
    const v0, 0x7f0200e0

    .restart local v0    # "footerIconId":I
    goto :goto_2a

    .line 147
    .end local v0    # "footerIconId":I
    :cond_47
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    .line 148
    .local v1, "isBranded":Z
    if-eqz v1, :cond_6d

    const v4, 0x7f0f0325

    :goto_52
    iput v4, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    .line 150
    if-eqz v3, :cond_75

    .line 151
    if-eqz v1, :cond_71

    const v0, 0x7f0200cf

    .line 153
    .restart local v0    # "footerIconId":I
    :goto_5b
    iget v4, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    if-eq v4, v0, :cond_68

    .line 154
    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    .line 155
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_68
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    goto :goto_37

    .line 148
    .end local v0    # "footerIconId":I
    :cond_6d
    const v4, 0x7f0f0324

    goto :goto_52

    .line 151
    :cond_71
    const v0, 0x7f020101

    .restart local v0    # "footerIconId":I
    goto :goto_5b

    .line 152
    .end local v0    # "footerIconId":I
    :cond_75
    const v0, 0x7f0200e0

    .restart local v0    # "footerIconId":I
    goto :goto_5b
.end method


# virtual methods
.method protected getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "deviceOwnerPackage"    # Ljava/lang/String;
    .param p2, "profileOwnerPackage"    # Ljava/lang/String;
    .param p3, "primaryVpn"    # Ljava/lang/String;
    .param p4, "profileVpn"    # Ljava/lang/String;
    .param p5, "hasProfileOwner"    # Z
    .param p6, "isBranded"    # Z

    .prologue
    const v5, 0x7f0f032d

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    if-eqz p1, :cond_14

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 244
    aput-object p1, v1, v2

    .line 243
    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_14
    if-eqz p3, :cond_49

    .line 246
    if-eqz p4, :cond_2b

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 248
    aput-object p2, v1, v2

    aput-object p4, v1, v3

    aput-object p3, v1, v4

    .line 247
    const v2, 0x7f0f033a

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_2b
    if-eqz p6, :cond_3b

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 252
    aput-object p3, v1, v2

    .line 251
    const v2, 0x7f0f0338

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_3b
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 255
    aput-object p3, v1, v2

    .line 254
    const v2, 0x7f0f0337

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_49
    if-eqz p4, :cond_5b

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    .line 260
    aput-object p2, v1, v2

    aput-object p4, v1, v3

    .line 259
    const v2, 0x7f0f0339

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :cond_5b
    if-eqz p2, :cond_6a

    if-eqz p5, :cond_6a

    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 263
    aput-object p2, v1, v2

    .line 262
    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :cond_6a
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 164
    const/4 v1, -0x2

    if-ne p2, v1, :cond_10

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.VPN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "settingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 163
    .end local v0    # "settingsIntent":Landroid/content/Intent;
    :cond_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f100185

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 98
    return-void
.end method

.method public refreshState()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 5
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 87
    new-instance v0, Lcom/android/systemui/qs/QSFooter$H;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSFooter$H;-><init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSFooter$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public setListening(Z)V
    .registers 4
    .param p1, "listening"    # Z

    .prologue
    .line 91
    if-eqz p1, :cond_a

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 90
    :goto_9
    return-void

    .line 94
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    goto :goto_9
.end method

.method public showDeviceMonitoringDialog()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->collapsePanels()V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createDialog()V

    .line 119
    return-void
.end method
