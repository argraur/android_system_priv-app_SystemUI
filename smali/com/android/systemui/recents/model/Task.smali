.class public Lcom/android/systemui/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/Task$TaskCallbacks;,
        Lcom/android/systemui/recents/model/Task$TaskKey;
    }
.end annotation


# instance fields
.field public affiliationColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public affiliationTaskId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public appInfoDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public bounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public dismissDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public group:Lcom/android/systemui/recents/model/TaskGrouping;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "group_"
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLaunchTarget:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isStackTask:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isSystemApp:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public resizeMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public temporarySortIndexInStack:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public useLightOnPrimaryColor:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;)V
    .registers 25
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "affiliationTaskId"    # I
    .param p3, "affiliationColor"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "titleDescription"    # Ljava/lang/String;
    .param p8, "dismissDescription"    # Ljava/lang/String;
    .param p9, "appInfoDescription"    # Ljava/lang/String;
    .param p10, "colorPrimary"    # I
    .param p11, "colorBackground"    # I
    .param p12, "isLaunchTarget"    # Z
    .param p13, "isStackTask"    # Z
    .param p14, "isSystemApp"    # Z
    .param p15, "isDockable"    # Z
    .param p16, "bounds"    # Landroid/graphics/Rect;
    .param p17, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p18, "resizeMode"    # I
    .param p19, "topActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    .line 204
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq p2, v3, :cond_5f

    const/4 v2, 0x1

    .line 205
    .local v2, "isInAffiliationGroup":Z
    :goto_f
    if-eqz v2, :cond_61

    if-eqz p3, :cond_61

    const/4 v1, 0x1

    .line 206
    .local v1, "hasAffiliationGroupColor":Z
    :goto_14
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 207
    iput p2, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    .line 208
    iput p3, p0, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    .line 209
    iput-object p4, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 210
    iput-object p5, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 211
    iput-object p6, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    .line 212
    iput-object p7, p0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 213
    iput-object p8, p0, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    .line 214
    iput-object p9, p0, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    .line 215
    if-eqz v1, :cond_63

    .end local p3    # "affiliationColor":I
    :goto_28
    iput p3, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 216
    move/from16 v0, p11

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    .line 217
    iget v3, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 218
    const/4 v4, -0x1

    .line 217
    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v3

    .line 218
    const/high16 v4, 0x40400000    # 3.0f

    .line 217
    cmpl-float v3, v3, v4

    if-lez v3, :cond_65

    const/4 v3, 0x1

    :goto_3c
    iput-boolean v3, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 219
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    .line 220
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 221
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 222
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    .line 223
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    .line 224
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    .line 225
    move/from16 v0, p18

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    .line 226
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 203
    return-void

    .line 204
    .end local v1    # "hasAffiliationGroupColor":Z
    .end local v2    # "isInAffiliationGroup":Z
    .restart local p3    # "affiliationColor":I
    :cond_5f
    const/4 v2, 0x0

    goto :goto_f

    .line 205
    .restart local v2    # "isInAffiliationGroup":Z
    :cond_61
    const/4 v1, 0x0

    .restart local v1    # "hasAffiliationGroupColor":Z
    goto :goto_14

    :cond_63
    move p3, p10

    .line 215
    goto :goto_28

    .line 217
    .end local p3    # "affiliationColor":I
    :cond_65
    const/4 v3, 0x0

    goto :goto_3c
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .registers 3
    .param p1, "cb"    # Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 261
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_d
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/recents/model/Task;)V
    .registers 3
    .param p1, "o"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 233
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 234
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 235
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    .line 236
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    .line 237
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 239
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    .line 243
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 244
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    .line 245
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 246
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    .line 247
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 248
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 249
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    .line 250
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    .line 251
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    .line 252
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    .line 253
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 232
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 345
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/Task;->isAffiliatedTask()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 347
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "affTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    :cond_2d
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_37

    .line 350
    const-string/jumbo v0, " dockable=N"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    :cond_37
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_41

    .line 353
    const-string/jumbo v0, " launchTarget=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    :cond_41
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 356
    const-string/jumbo v0, " freeform=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    :cond_4d
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 344
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 335
    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 336
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 328
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 327
    :goto_6
    return-object v0

    .line 329
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_6
.end method

.method public isAffiliatedTask()Z
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v1, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFreeformTask()Z
    .registers 3

    .prologue
    .line 292
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 293
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .registers 7
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "applicationIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    .prologue
    .line 299
    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 300
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 301
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 302
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 303
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v2, p0, p3}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Landroid/app/ActivityManager$TaskThumbnailInfo;)V

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 298
    :cond_1b
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "defaultThumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "defaultApplicationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 309
    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 310
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 311
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1c

    .line 312
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    .line 311
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 308
    :cond_1c
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .registers 3
    .param p1, "cb"    # Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .registers 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 273
    return-void
.end method

.method public setStackId(I)V
    .registers 5
    .param p1, "stackId"    # I

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->setStackId(I)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 283
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1c

    .line 284
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskStackIdChanged()V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 280
    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
