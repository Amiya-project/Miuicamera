.class public Lcom/android/camera/fragment/beauty/BeautyValues;
.super Ljava/lang/Object;


# instance fields
.field private mAmbientLightingType:I

.field public mBeautyBodySlim:I

.field public mBeautyButtSlim:I

.field public mBeautyCheekBone:I

.field public mBeautyChin:I

.field public mBeautyComparation:I

.field public mBeautyEnlargeEye:I

.field public mBeautyHairLine:I

.field public mBeautyHairPuffy:I

.field public mBeautyHeadNarrow:I

.field public mBeautyHeadSlim:I

.field public mBeautyJaw:I

.field public mBeautyLegSlim:I

.field public mBeautyLevel:Ljava/lang/String;

.field public mBeautyLips:I

.field public mBeautyMakeup:I

.field public mBeautyMakeup2Filter:I

.field public mBeautyMakeupLevel:I

.field public mBeautyMakeupType:I

.field public mBeautyModeType:I

.field public mBeautyNeck:I

.field public mBeautyNose:I

.field public mBeautyNoseTip:I

.field public mBeautyRisorius:I

.field public mBeautyShoulderSlim:I

.field public mBeautySkinColor:I

.field public mBeautySkinSmooth:I

.field public mBeautySlimFace:I

.field public mBeautySlimNose:I

.field public mBeautySmile:I

.field public mBeautySolid:I

.field public mBeautyTemple:I

.field public mBeautyWhiten:I

.field public mBeautyWholeBodySlim:I

.field public mMaleMakeupSwitch:I

.field public mNevusWipeSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fragment/beauty/BeautyValues;F)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFacePossEnable"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "ratio"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadNarrow:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadNarrow:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNoseTip:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNoseTip:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyTemple:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyTemple:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyCheekBone:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyCheekBone:I

    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyJaw:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyJaw:I

    iget p2, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairPuffy:I

    iput p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairPuffy:I

    iget p2, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    iput p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    iget p1, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mAmbientLightingType:I

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mAmbientLightingType:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getValueByType(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "pref_beauty_head_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "pref_beauty_shoulder_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "COMPARE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "pref_beautify_pupil_line_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "pref_beautify_makeup_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "pref_beautify_blusher_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "pref_beautify_nose_tip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "pref_beautify_skin_color_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "pref_beautify_nose_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "pref_beautify_makeups_type_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "pref_beautify_hair_puffy_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v0, "pref_beautify_jaw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v0, "pref_beautify_whiten_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v0, "pref_beautify_risorius_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v0, "pref_beautify_temple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "key_beauty_leg_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v0, "pref_beautify_chin_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v0, "pref_beautify_cheekbone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v0, "pref_beautify_lips_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v0, "pref_beautify_neck_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v0, "pref_beautify_makeup_male_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v0, "pref_beautify_makeups_level_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v0, "pref_beautify_slim_nose_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v0, "pref_beautify_nevus_wipe_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v0, "pref_ambient_lighting_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v0, "pref_beautify_down_head_narrow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1f
    const-string/jumbo v0, "pref_beautify_smile_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_20
    const-string/jumbo v0, "pref_beauty_whole_body_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_0

    :cond_20
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_21
    const-string/jumbo v0, "pref_beauty_butt_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_0

    :cond_21
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_22
    const-string/jumbo v0, "pref_beautify_jelly_lips_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_0

    :cond_22
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_23
    const-string/jumbo v0, "pref_beautify_solid_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_0

    :cond_23
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_24
    const-string/jumbo v0, "sub_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_0

    :cond_24
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_25
    const-string/jumbo v0, "pref_beauty_body_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_0

    :cond_25
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    return p0

    :pswitch_1
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    return p0

    :pswitch_2
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyComparation:I

    return p0

    :pswitch_3
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    return p0

    :pswitch_4
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNoseTip:I

    return p0

    :pswitch_5
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    return p0

    :pswitch_6
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    return p0

    :pswitch_7
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    return p0

    :pswitch_8
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    return p0

    :pswitch_9
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    return p0

    :pswitch_a
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    return p0

    :pswitch_b
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairPuffy:I

    return p0

    :pswitch_c
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyJaw:I

    return p0

    :pswitch_d
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    return p0

    :pswitch_e
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    return p0

    :pswitch_f
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    return p0

    :pswitch_10
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyTemple:I

    return p0

    :pswitch_11
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    return p0

    :pswitch_12
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    return p0

    :pswitch_13
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyCheekBone:I

    return p0

    :pswitch_14
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    return p0

    :pswitch_15
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    return p0

    :pswitch_16
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mMaleMakeupSwitch:I

    return p0

    :pswitch_17
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    return p0

    :pswitch_18
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    return p0

    :pswitch_19
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mNevusWipeSwitch:I

    return p0

    :pswitch_1a
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mAmbientLightingType:I

    return p0

    :pswitch_1b
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadNarrow:I

    return p0

    :pswitch_1c
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    return p0

    :pswitch_1d
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    return p0

    :pswitch_1e
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    return p0

    :pswitch_1f
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    return p0

    :pswitch_20
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    return p0

    :pswitch_21
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup2Filter:I

    return p0

    :pswitch_22
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x676e6ee1 -> :sswitch_25
        -0x660f7da9 -> :sswitch_24
        -0x5eed1fcd -> :sswitch_23
        -0x5e6b0daf -> :sswitch_22
        -0x5a8387f2 -> :sswitch_21
        -0x4b3d8c29 -> :sswitch_20
        -0x423823b0 -> :sswitch_1f
        -0x3bfb299f -> :sswitch_1e
        -0x3a9341f6 -> :sswitch_1d
        -0x39eeb0fa -> :sswitch_1c
        -0x3579d363 -> :sswitch_1b
        -0x32af50b5 -> :sswitch_1a
        -0x1ff8aeac -> :sswitch_19
        -0x1403c3d1 -> :sswitch_18
        -0x12884130 -> :sswitch_17
        -0x11b7155a -> :sswitch_16
        -0x102a61a6 -> :sswitch_15
        -0x8bc7263 -> :sswitch_14
        -0x307ebcf -> :sswitch_13
        -0x25d6108 -> :sswitch_12
        0x2431a3 -> :sswitch_11
        0x2b95f4b5 -> :sswitch_10
        0x2e85dcbc -> :sswitch_f
        0x330df2fb -> :sswitch_e
        0x341866d3 -> :sswitch_d
        0x35532ea7 -> :sswitch_c
        0x36aaa8f8 -> :sswitch_b
        0x3ad8a2a3 -> :sswitch_a
        0x3e8271ec -> :sswitch_9
        0x3f0b1471 -> :sswitch_8
        0x4a977d13 -> :sswitch_7
        0x5514d1b5 -> :sswitch_6
        0x55d54f59 -> :sswitch_5
        0x6202ad75 -> :sswitch_4
        0x62f067e6 -> :sswitch_3
        0x6372c8c5 -> :sswitch_2
        0x65e369e1 -> :sswitch_1
        0x73f08a21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getmAmbientLightingType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mAmbientLightingType:I

    return p0
.end method

.method public isAmbientLightingOn()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mAmbientLightingType:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBeautyBodyOn()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBeautyLevelOn()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    const-string v0, "i:0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isBeautyModelOn()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    if-eqz v0, :cond_0

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    if-eqz v0, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairPuffy:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    if-eqz v0, :cond_2

    if-nez v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    if-gtz v0, :cond_4

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFaceBeautyOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyLevelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyModelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFrontMakeUpsOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyBodyOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isAmbientLightingOn()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFrontMakeUpsOn()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSmoothLevelOn()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyLevel()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetSmoothLevel()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyModelLegacy()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyModel()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyBody()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyModeAndSwitch()V

    return-void
.end method

.method public resetBeautyBody()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    return-void
.end method

.method public resetBeautyLevel()V
    .locals 1

    const-string v0, "i:0"

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    return-void
.end method

.method public resetBeautyModeAndSwitch()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mMaleMakeupSwitch:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mNevusWipeSwitch:I

    return-void
.end method

.method public resetBeautyModel()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairPuffy:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadNarrow:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyCheekBone:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyJaw:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyTemple:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNoseTip:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mAmbientLightingType:I

    return-void
.end method

.method public resetBeautyModelLegacy()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    return-void
.end method

.method public resetSmoothLevel()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    return-void
.end method

.method public setmAmbientLightingType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAmbientLightingType"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mAmbientLightingType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000o()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    aput-object v7, v1, v6

    iget v6, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    iget v5, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget v4, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "beauty level: %s | sc: %d | sf: %d | ss: %d | ee: %d "

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v7, 0x1b

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    aput-object v8, v7, v6

    iget v6, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    iget v5, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    iget v4, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    iget v3, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x12

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x13

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairPuffy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x14

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x15

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x16

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x17

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x18

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x19

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup2Filter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x1a

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mAmbientLightingType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v1

    const-string p0, "3d beauty level: %s | ss: %d |sf: %d | ee: %d | ns: %d | rs: %d | lp: %d | cn: %d | nk: %d | se: %d | sn: %d | hl: %d | solid: %d | whiten: %d | makeup: %d| headSlim: %d | bodySlim: %d | shoulderSlim: %d | legSlim: %d | puffy: %d| wholeBodySlim: %d | buttSlim: %d | makeupType: %d | makeupLevel: %d | beautyMode: %d | makeupFilter: %d | ambientLight: %d"

    invoke-static {v0, p0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
