.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;
.super Landroid/os/AsyncTask;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field final synthetic val$addUsersWhenLocked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p2, "val$addUsersWhenLocked"    # Z

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, [Landroid/util/SparseArray;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "params":[Landroid/util/SparseArray;, "[Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    aget-object v28, p1, v4

    .line 190
    .local v28, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v36

    .line 191
    .local v36, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v36, :cond_14

    .line 192
    const/4 v4, 0x0

    return-object v4

    .line 194
    :cond_14
    new-instance v37, Ljava/util/ArrayList;

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v37, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v31

    .line 196
    .local v31, "currentId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v9

    .line 197
    .local v9, "canSwitchUsers":Z
    const/16 v33, 0x0

    .line 198
    .local v33, "currentUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    .line 200
    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v33    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .local v35, "info$iterator":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 201
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v31

    if-ne v0, v4, :cond_67

    const/4 v6, 0x1

    .line 202
    .local v6, "isCurrent":Z
    :goto_49
    if-eqz v6, :cond_4d

    .line 203
    move-object/from16 v33, v3

    .line 205
    :cond_4d
    if-nez v9, :cond_69

    move/from16 v17, v6

    .line 206
    :goto_51
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 207
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 210
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v4, 0x0

    .line 211
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 212
    const/4 v8, 0x0

    .line 210
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    goto :goto_36

    .line 201
    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v6    # "isCurrent":Z
    :cond_67
    const/4 v6, 0x0

    goto :goto_49

    .line 205
    .restart local v6    # "isCurrent":Z
    :cond_69
    const/16 v17, 0x1

    .local v17, "switchToEnabled":Z
    goto :goto_51

    .line 213
    .end local v17    # "switchToEnabled":Z
    :cond_6c
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 214
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 215
    .local v12, "picture":Landroid/graphics/Bitmap;
    if-nez v12, :cond_aa

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 218
    if-eqz v12, :cond_aa

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 220
    const v5, 0x7f1001dc

    .line 219
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 222
    .local v27, "avatarSize":I
    const/4 v4, 0x1

    .line 221
    move/from16 v0, v27

    move/from16 v1, v27

    invoke-static {v12, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 225
    .end local v27    # "avatarSize":I
    :cond_aa
    if-eqz v6, :cond_c2

    const/16 v34, 0x0

    .line 226
    .local v34, "index":I
    :goto_ae
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v13, 0x0

    .line 227
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    move v14, v6

    .line 226
    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_36

    .line 225
    .end local v34    # "index":I
    :cond_c2
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v34

    .restart local v34    # "index":I
    goto :goto_ae

    .line 233
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "isCurrent":Z
    .end local v12    # "picture":Landroid/graphics/Bitmap;
    .end local v34    # "index":I
    :cond_c7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    .line 234
    const-string/jumbo v5, "no_add_user"

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 233
    invoke-virtual {v4, v5, v7}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_16f

    const/16 v38, 0x0

    .line 235
    .local v38, "systemCanCreateUsers":Z
    :goto_dc
    if-eqz v33, :cond_173

    .line 236
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    if-nez v4, :cond_ea

    .line 237
    move-object/from16 v0, v33

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_173

    .line 238
    :cond_ea
    move/from16 v32, v38

    .line 239
    :goto_ec
    if-eqz v38, :cond_177

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    move/from16 v26, v0

    .line 240
    :goto_f4
    if-nez v32, :cond_f8

    if-eqz v26, :cond_17f

    .line 241
    :cond_f8
    if-nez v2, :cond_17b

    const/16 v29, 0x1

    .line 242
    .local v29, "canCreateGuest":Z
    :goto_fc
    if-nez v32, :cond_100

    if-eqz v26, :cond_183

    .line 243
    :cond_100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v30

    .line 244
    :goto_10c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    if-eqz v4, :cond_186

    const/16 v24, 0x0

    .line 246
    .local v24, "createIsRestricted":Z
    :goto_114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get7(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_141

    .line 247
    if-nez v2, :cond_189

    .line 248
    if-eqz v29, :cond_141

    .line 249
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 250
    const/16 v21, 0x1

    const/16 v22, 0x0

    .line 251
    const/16 v23, 0x0

    move-object/from16 v18, v2

    move/from16 v25, v9

    .line 249
    invoke-direct/range {v18 .. v25}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 252
    .restart local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 253
    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_141
    :goto_141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get7(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_16e

    if-eqz v30, :cond_16e

    .line 262
    new-instance v18, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 263
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v25, v9

    .line 262
    invoke-direct/range {v18 .. v25}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 265
    .local v18, "addUserRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 266
    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v18    # "addUserRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_16e
    return-object v37

    .line 233
    .end local v24    # "createIsRestricted":Z
    .end local v29    # "canCreateGuest":Z
    .end local v38    # "systemCanCreateUsers":Z
    :cond_16f
    const/16 v38, 0x1

    .restart local v38    # "systemCanCreateUsers":Z
    goto/16 :goto_dc

    .line 235
    :cond_173
    const/16 v32, 0x0

    .local v32, "currentUserCanCreateUsers":Z
    goto/16 :goto_ec

    .line 239
    .end local v32    # "currentUserCanCreateUsers":Z
    :cond_177
    const/16 v26, 0x0

    .local v26, "anyoneCanCreateUsers":Z
    goto/16 :goto_f4

    .line 241
    .end local v26    # "anyoneCanCreateUsers":Z
    :cond_17b
    const/16 v29, 0x0

    .restart local v29    # "canCreateGuest":Z
    goto/16 :goto_fc

    .line 240
    .end local v29    # "canCreateGuest":Z
    :cond_17f
    const/16 v29, 0x0

    .restart local v29    # "canCreateGuest":Z
    goto/16 :goto_fc

    .line 242
    :cond_183
    const/16 v30, 0x0

    .local v30, "canCreateUser":Z
    goto :goto_10c

    .line 244
    .end local v30    # "canCreateUser":Z
    :cond_186
    const/16 v24, 0x1

    .restart local v24    # "createIsRestricted":Z
    goto :goto_114

    .line 256
    :cond_189
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v4, :cond_197

    const/16 v34, 0x0

    .line 257
    .restart local v34    # "index":I
    :goto_18f
    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_141

    .line 256
    .end local v34    # "index":I
    :cond_197
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v34

    goto :goto_18f
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "userRecords"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "userRecords":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "userRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    if-eqz p1, :cond_c

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 273
    :cond_c
    return-void
.end method
