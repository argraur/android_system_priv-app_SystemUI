.class public Lcom/android/systemui/statusbar/policy/PreviewInflater;
.super Ljava/lang/Object;
.source "PreviewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    return-void
.end method

.method public static getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "currentUserId"    # I
    .param p3, "onlyDirectBootAware"    # Z

    .prologue
    const/4 v5, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 159
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x10000

    .line 160
    .local v1, "flags":I
    if-nez p3, :cond_b

    .line 161
    const/high16 v1, 0xd0000

    .line 164
    :cond_b
    invoke-virtual {v2, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_16

    .line 167
    return-object v5

    .line 170
    :cond_16
    or-int/lit16 v4, v1, 0x80

    .line 169
    invoke-virtual {v2, p1, v4, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 171
    .local v3, "resolved":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_24

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 172
    :cond_24
    return-object v5

    .line 174
    :cond_25
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v4
.end method

.method private getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 122
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v1, 0xd0000

    .line 126
    .local v1, "flags":I
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 125
    invoke-virtual {v2, p1, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_18

    .line 128
    return-object v6

    .line 131
    :cond_18
    const v4, 0xd0080

    .line 132
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 130
    invoke-virtual {v2, p1, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 133
    .local v3, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 134
    return-object v6

    .line 136
    :cond_2a
    if-eqz v3, :cond_30

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_31

    .line 137
    :cond_30
    return-object v6

    .line 139
    :cond_31
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 140
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 139
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v4

    return-object v4
.end method

.method private getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .registers 7
    .param p1, "contextPackage"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 107
    if-nez p2, :cond_4

    .line 108
    return-object v3

    .line 110
    :cond_4
    const-string/jumbo v2, "com.android.keyguard.layout"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "layoutId":I
    if-nez v1, :cond_e

    .line 112
    return-object v3

    .line 114
    :cond_e
    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)V

    .line 115
    .local v0, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 116
    iput v1, v0, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    .line 117
    return-object v0
.end method

.method private getWidgetInfoFromService(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 96
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    .line 95
    :try_start_8
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 97
    .local v1, "metaData":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_17

    move-result-object v3

    return-object v3

    .line 98
    .end local v1    # "metaData":Landroid/os/Bundle;
    :catch_17
    move-exception v0

    .line 99
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "PreviewInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load preview; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    const-string/jumbo v5, " not found"

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v3, 0x0

    return-object v3
.end method

.method private inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
    .registers 6
    .param p1, "info"    # Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    .prologue
    const/4 v3, 0x0

    .line 64
    if-nez p1, :cond_4

    .line 65
    return-object v3

    .line 67
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_b

    .line 69
    return-object v3

    .line 71
    :cond_b
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    .local v0, "container":Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    .line 73
    return-object v0
.end method

.method private inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;
    .registers 9
    .param p1, "widgetInfo"    # Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    .prologue
    .line 77
    const/4 v3, 0x0

    .line 79
    .local v3, "widgetView":Landroid/view/View;
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    .line 80
    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "appContext":Landroid/content/Context;
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    check-cast v1, Landroid/view/LayoutInflater;

    .line 83
    .local v1, "appInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 84
    iget v4, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1e} :catch_20

    move-result-object v3

    .line 88
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "appInflater":Landroid/view/LayoutInflater;
    .end local v3    # "widgetView":Landroid/view/View;
    :goto_1f
    return-object v3

    .line 85
    .restart local v3    # "widgetView":Landroid/view/View;
    :catch_20
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PreviewInflater"

    const-string/jumbo v5, "Error creating widget view"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public static wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "currentUserId"    # I

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .registers 6
    .param p0, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 183
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 184
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 185
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 184
    if-eqz v2, :cond_2b

    .line 186
    const/4 v2, 0x0

    return v2

    .line 182
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_2e
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v0

    .line 55
    .local v0, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    move-result-object v1

    return-object v1
.end method

.method public inflatePreviewFromService(Landroid/content/ComponentName;)Landroid/view/View;
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromService(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v0

    .line 60
    .local v0, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    move-result-object v1

    return-object v1
.end method
