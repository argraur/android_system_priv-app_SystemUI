.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_PLUS:[[I

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_LTE:[[I

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 31
    const v1, 0x7f020305

    .line 32
    const v2, 0x7f020307

    .line 33
    const v3, 0x7f020309

    .line 34
    const v4, 0x7f02030b

    .line 35
    const v5, 0x7f02030d

    .line 31
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    const v1, 0x7f020306

    .line 37
    const v2, 0x7f020308

    .line 38
    const v3, 0x7f02030a

    .line 39
    const v4, 0x7f02030c

    .line 40
    const v5, 0x7f02030e

    .line 36
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 30
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 46
    const v1, 0x7f0200e8

    .line 47
    const v2, 0x7f0200e9

    .line 48
    const v3, 0x7f0200eb

    .line 49
    const v4, 0x7f0200ec

    .line 50
    const v5, 0x7f0200ee

    .line 46
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 51
    const v1, 0x7f0200f5

    .line 52
    const v2, 0x7f0200f6

    .line 53
    const v3, 0x7f0200f7

    .line 54
    const v4, 0x7f0200f8

    .line 55
    const v5, 0x7f0200f9

    .line 51
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 45
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 59
    const v1, 0x7f020305

    .line 60
    const v2, 0x7f020307

    .line 61
    const v3, 0x7f020309

    .line 62
    const v4, 0x7f02030b

    .line 63
    const v5, 0x7f02030d

    .line 59
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 64
    const v1, 0x7f020306

    .line 65
    const v2, 0x7f020308

    .line 66
    const v3, 0x7f02030a

    .line 67
    const v4, 0x7f02030c

    .line 68
    const v5, 0x7f02030e

    .line 64
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 73
    const v1, 0x7f020310

    .line 74
    const v2, 0x7f020310

    .line 75
    const v3, 0x7f020310

    .line 76
    const v4, 0x7f020310

    .line 77
    const v5, 0x7f020310

    .line 73
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 78
    const v1, 0x7f020310

    .line 79
    const v2, 0x7f020310

    .line 80
    const v3, 0x7f020310

    .line 81
    const v4, 0x7f020310

    .line 82
    const v5, 0x7f020310

    .line 78
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 86
    const v1, 0x7f0200f2

    .line 87
    const v2, 0x7f0200f2

    .line 88
    const v3, 0x7f0200f2

    .line 89
    const v4, 0x7f0200f2

    .line 90
    const v5, 0x7f0200f2

    .line 86
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 91
    const v1, 0x7f0200f2

    .line 92
    const v2, 0x7f0200f2

    .line 93
    const v3, 0x7f0200f2

    .line 94
    const v4, 0x7f0200f2

    .line 95
    const v5, 0x7f0200f2

    .line 91
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 85
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 102
    const v1, 0x7f0202f0

    .line 103
    const v2, 0x7f0202f0

    .line 104
    const v3, 0x7f0202f0

    .line 105
    const v4, 0x7f0202f0

    .line 102
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 106
    const v1, 0x7f0202f0

    .line 107
    const v2, 0x7f0202f0

    .line 108
    const v3, 0x7f0202f0

    .line 109
    const v4, 0x7f0202f0

    .line 106
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 101
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 115
    const v1, 0x7f0202ec

    .line 116
    const v2, 0x7f0202ec

    .line 117
    const v3, 0x7f0202ec

    .line 118
    const v4, 0x7f0202ec

    .line 115
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 119
    const v1, 0x7f0202ec

    .line 120
    const v2, 0x7f0202ec

    .line 121
    const v3, 0x7f0202ec

    .line 122
    const v4, 0x7f0202ec

    .line 119
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 114
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 128
    const v1, 0x7f0202ef

    .line 129
    const v2, 0x7f0202ef

    .line 130
    const v3, 0x7f0202ef

    .line 131
    const v4, 0x7f0202ef

    .line 128
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 132
    const v1, 0x7f0202ef

    .line 133
    const v2, 0x7f0202ef

    .line 134
    const v3, 0x7f0202ef

    .line 135
    const v4, 0x7f0202ef

    .line 132
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 127
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 142
    const v1, 0x7f0202f1

    .line 143
    const v2, 0x7f0202f1

    .line 144
    const v3, 0x7f0202f1

    .line 145
    const v4, 0x7f0202f1

    .line 142
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 146
    const v1, 0x7f0202f1

    .line 147
    const v2, 0x7f0202f1

    .line 148
    const v3, 0x7f0202f1

    .line 149
    const v4, 0x7f0202f1

    .line 146
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 141
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 157
    const v1, 0x7f0202eb

    .line 158
    const v2, 0x7f0202eb

    .line 159
    const v3, 0x7f0202eb

    .line 160
    const v4, 0x7f0202eb

    .line 157
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 161
    const v1, 0x7f0202eb

    .line 162
    const v2, 0x7f0202eb

    .line 163
    const v3, 0x7f0202eb

    .line 164
    const v4, 0x7f0202eb

    .line 161
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 156
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 171
    const v1, 0x7f0202ed

    .line 172
    const v2, 0x7f0202ed

    .line 173
    const v3, 0x7f0202ed

    .line 174
    const v4, 0x7f0202ed

    .line 171
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 175
    const v1, 0x7f0202ed

    .line 176
    const v2, 0x7f0202ed

    .line 177
    const v3, 0x7f0202ed

    .line 178
    const v4, 0x7f0202ed

    .line 175
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 170
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 184
    const v1, 0x7f0202ee

    .line 185
    const v2, 0x7f0202ee

    .line 186
    const v3, 0x7f0202ee

    .line 187
    const v4, 0x7f0202ee

    .line 184
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 188
    const v1, 0x7f0202ee

    .line 189
    const v2, 0x7f0202ee

    .line 190
    const v3, 0x7f0202ee

    .line 191
    const v4, 0x7f0202ee

    .line 188
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 183
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 198
    const v1, 0x7f0202f2

    .line 199
    const v2, 0x7f0202f2

    .line 200
    const v3, 0x7f0202f2

    .line 201
    const v4, 0x7f0202f2

    .line 198
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 202
    const v1, 0x7f0202f2

    .line 203
    const v2, 0x7f0202f2

    .line 204
    const v3, 0x7f0202f2

    .line 205
    const v4, 0x7f0202f2

    .line 202
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 197
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 237
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 238
    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    .line 239
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    .line 240
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    .line 241
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 245
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 242
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 243
    const v7, 0x7f020310

    .line 244
    const v8, 0x7f0200f2

    .line 246
    const v10, 0x7f0f0234

    .line 247
    const/4 v11, 0x0

    .line 248
    const/4 v12, 0x0

    .line 249
    const/4 v13, 0x0

    .line 237
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 252
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 253
    const-string/jumbo v1, "3G"

    .line 254
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 255
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 256
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 260
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 257
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 258
    const v7, 0x7f020311

    .line 259
    const v8, 0x7f0200ff

    .line 261
    const v10, 0x7f0f0223

    .line 262
    const v11, 0x7f0202ec

    .line 263
    const/4 v12, 0x1

    .line 264
    const v13, 0x7f0200ed

    .line 252
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 267
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 268
    const-string/jumbo v1, "WFC"

    .line 269
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 270
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 271
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 275
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 272
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 273
    const v7, 0x7f020311

    .line 274
    const v8, 0x7f0200ff

    .line 276
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 267
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 279
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 280
    const-string/jumbo v1, "Unknown"

    .line 281
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 282
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 283
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 287
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 284
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 285
    const v7, 0x7f020311

    .line 286
    const v8, 0x7f0200ff

    .line 288
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 279
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 291
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 292
    const-string/jumbo v1, "E"

    .line 293
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 294
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 295
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 299
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 296
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 297
    const v7, 0x7f020311

    .line 298
    const v8, 0x7f0200ff

    .line 300
    const v10, 0x7f0f022b

    .line 301
    const v11, 0x7f0202ef

    .line 302
    const/4 v12, 0x0

    .line 303
    const v13, 0x7f0200f4

    .line 291
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 306
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 307
    const-string/jumbo v1, "1X"

    .line 308
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 309
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 310
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 314
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 311
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 312
    const v7, 0x7f020311

    .line 313
    const v8, 0x7f0200ff

    .line 315
    const v10, 0x7f0f0229

    .line 316
    const v11, 0x7f0202eb

    .line 317
    const/4 v12, 0x1

    .line 318
    const v13, 0x7f0200ea

    .line 306
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 321
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 322
    const-string/jumbo v1, "G"

    .line 323
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 324
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 325
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 329
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 326
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 327
    const v7, 0x7f020311

    .line 328
    const v8, 0x7f0200ff

    .line 330
    const v10, 0x7f0f0220

    .line 331
    const v11, 0x7f0202f0

    .line 332
    const/4 v12, 0x0

    .line 333
    const v13, 0x7f0200fa

    .line 321
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 336
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 337
    const-string/jumbo v1, "H"

    .line 338
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 339
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 340
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 344
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 341
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 342
    const v7, 0x7f020311

    .line 343
    const v8, 0x7f0200ff

    .line 345
    const v10, 0x7f0f0224

    .line 346
    const v11, 0x7f0202f1

    .line 347
    const/4 v12, 0x0

    .line 348
    const v13, 0x7f0200fb

    .line 336
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 351
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 352
    const-string/jumbo v1, "4G"

    .line 353
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 354
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 355
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 359
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 356
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 357
    const v7, 0x7f020311

    .line 358
    const v8, 0x7f0200ff

    .line 360
    const v10, 0x7f0f0225

    .line 361
    const v11, 0x7f0202ed

    .line 362
    const/4 v12, 0x1

    .line 363
    const v13, 0x7f0200ef

    .line 351
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 366
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 367
    const-string/jumbo v1, "4G+"

    .line 368
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 369
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 370
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 374
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 371
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 372
    const v7, 0x7f020311

    .line 373
    const v8, 0x7f0200ff

    .line 375
    const v10, 0x7f0f0226

    .line 376
    const v11, 0x7f0202ee

    .line 377
    const/4 v12, 0x1

    .line 378
    const v13, 0x7f0200f0

    .line 366
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 381
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 382
    const-string/jumbo v1, "LTE"

    .line 383
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 384
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 385
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 389
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 386
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 387
    const v7, 0x7f020311

    .line 388
    const v8, 0x7f0200ff

    .line 390
    const v10, 0x7f0f0227

    .line 391
    const v11, 0x7f0202f2

    .line 392
    const/4 v12, 0x1

    .line 393
    const v13, 0x7f0200fd

    .line 381
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 396
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 397
    const-string/jumbo v1, "LTE+"

    .line 398
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 399
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 400
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 404
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 401
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 402
    const v7, 0x7f020311

    .line 403
    const v8, 0x7f0200ff

    .line 405
    const v10, 0x7f0f0228

    .line 406
    const v11, 0x7f0202f3

    .line 407
    const/4 v12, 0x1

    .line 408
    const v13, 0x7f0200fe

    .line 396
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 411
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 412
    const-string/jumbo v1, "DataDisabled"

    .line 413
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 414
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 415
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 419
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 416
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 417
    const v7, 0x7f020311

    .line 418
    const v8, 0x7f0200ff

    .line 420
    const v10, 0x7f0f0230

    .line 421
    const v11, 0x7f0202ea

    .line 422
    const/4 v12, 0x0

    .line 423
    const v13, 0x7f0200d9

    .line 411
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 22
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
