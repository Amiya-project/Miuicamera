.class public final Lek;
.super Ljava/lang/Object;

# interfaces
.implements Les;


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Leh;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:[I

.field private final l:I

.field private final m:I

.field private final n:Ldv;

.field private final o:Lfh;

.field private final p:Lej;

.field private final q:Lfs;

.field private final r:Lff;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lek;->a:[I

    invoke-static {}, Lfr;->OooO0o0()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lek;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILeh;ZZ[IIILfs;Ldv;Lfh;Lej;Lff;[B)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lek;->c:[I

    move-object v2, p2

    iput-object v2, v0, Lek;->d:[Ljava/lang/Object;

    move v2, p3

    iput v2, v0, Lek;->e:I

    move v2, p4

    iput v2, v0, Lek;->f:I

    move v2, p6

    iput-boolean v2, v0, Lek;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p5}, Lej;->OooO0oo(Leh;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, v0, Lek;->h:Z

    iput-boolean v2, v0, Lek;->j:Z

    move-object v2, p8

    iput-object v2, v0, Lek;->k:[I

    move v2, p9

    iput v2, v0, Lek;->l:I

    move v2, p10

    iput v2, v0, Lek;->m:I

    move-object v2, p11

    iput-object v2, v0, Lek;->q:Lfs;

    move-object/from16 v2, p12

    iput-object v2, v0, Lek;->n:Ldv;

    move-object/from16 v2, p13

    iput-object v2, v0, Lek;->o:Lfh;

    iput-object v1, v0, Lek;->p:Lej;

    move-object v1, p5

    iput-object v1, v0, Lek;->g:Leh;

    move-object/from16 v1, p15

    iput-object v1, v0, Lek;->r:Lff;

    return-void
.end method

.method private static final OooO(Lfh;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lfh;->OooO0oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lfh;->OooOOO0(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final OooO0oo(II)I
    .locals 1

    iget v0, p0, Lek;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lek;->f:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lek;->OooOoo0(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final OooOO0(Ljava/lang/Object;[BIIIIIIIJILby;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lek;->b:Lsun/misc/Unsafe;

    iget-object v7, v0, Lek;->c:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_13

    invoke-direct {v0, v6}, Lek;->OooOOOo(I)Les;

    move-result-object v0

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Leb;->OooO0oo(Les;[BIIILby;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_1

    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    invoke-static {v15, v2}, Ldj;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-eqz v5, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-static {v3, v4, v11}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v2, v11, Lby;->b:J

    invoke-static {v2, v3}, Lcl;->OooO0O0(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_2
    if-eqz v5, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-static {v3, v4, v11}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v2, v11, Lby;->a:I

    invoke-static {v2}, Lcl;->OooO00o(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_3
    if-nez v5, :cond_13

    invoke-static {v3, v4, v11}, Leb;->OooOO0O([BILby;)I

    move-result v3

    iget v4, v11, Lby;->a:I

    invoke-direct {v0, v6}, Lek;->Oooo0O0(I)Ldh;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Ldh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lek;->Oooo0OO(Ljava/lang/Object;)Lfi;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lfi;->OooO0OO(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v0, v3

    goto/16 :goto_a

    :pswitch_4
    if-eq v5, v15, :cond_6

    goto/16 :goto_9

    :cond_6
    invoke-static {v3, v4, v11}, Leb;->OooOoOO([BILby;)I

    move-result v0

    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_5
    if-ne v5, v15, :cond_13

    invoke-direct {v0, v6}, Lek;->OooOOOo(I)Les;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v3, v4, v2, v11}, Leb;->OooO(Les;[BIILby;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_7

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_8

    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    invoke-static {v15, v2}, Ldj;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_8
    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_13

    invoke-static {v3, v4, v11}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v2, v11, Lby;->a:I

    if-nez v2, :cond_9

    const-string v2, ""

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_9
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    add-int v4, v0, v2

    invoke-static {v3, v0, v4}, Lfx;->OooO0o([BII)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :cond_b
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object v0

    throw v0

    :pswitch_7
    if-nez v5, :cond_13

    invoke-static {v3, v4, v11}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v2, v11, Lby;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_8
    if-eq v5, v7, :cond_d

    goto/16 :goto_9

    :cond_d
    invoke-static/range {p2 .. p3}, Leb;->OooOO0([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x1

    if-eq v5, v0, :cond_e

    goto :goto_9

    :cond_e
    invoke-static/range {p2 .. p3}, Leb;->OooOOoo([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :pswitch_a
    if-eqz v5, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v3, v4, v11}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v2, v11, Lby;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_b
    if-eqz v5, :cond_10

    goto :goto_9

    :cond_10
    invoke-static {v3, v4, v11}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v2, v11, Lby;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_c
    if-eq v5, v7, :cond_11

    goto :goto_9

    :cond_11
    invoke-static/range {p2 .. p3}, Leb;->OooOo([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_d
    const/4 v0, 0x1

    if-eq v5, v0, :cond_12

    goto :goto_9

    :cond_12
    invoke-static/range {p2 .. p3}, Leb;->OooOo00([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :cond_13
    :goto_9
    move v0, v4

    :goto_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final OooOO0O(Ljava/lang/Object;[BIIIIIIJIJLby;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lek;->b:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldi;

    invoke-interface {v12}, Ldi;->a()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_0

    add-int/2addr v13, v13

    goto :goto_0

    :cond_0
    const/16 v13, 0xa

    :goto_0
    invoke-interface {v12, v13}, Ldi;->a(I)Ldi;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_2e

    invoke-direct {p0, v8}, Lek;->OooOOOo(I)Les;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Leb;->OooO0oo(Les;[BIIILby;)I

    move-result v4

    iget-object v6, v7, Lby;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :pswitch_0
    if-ne v6, v14, :cond_2

    invoke-static {v3, v4, v12, v7}, Leb;->Oooo000([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_14

    :cond_2
    if-nez v6, :cond_2e

    check-cast v12, Ldw;

    invoke-static {v3, v4, v7}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    invoke-static {v8, v9}, Lcl;->OooO0O0(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldw;->OooO0OO(J)V

    :goto_1
    if-ge v0, v5, :cond_3

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_3

    invoke-static {v3, v1, v7}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    invoke-static {v8, v9}, Lcl;->OooO0O0(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldw;->OooO0OO(J)V

    goto :goto_1

    :cond_3
    return v0

    :pswitch_1
    if-ne v6, v14, :cond_4

    invoke-static {v3, v4, v12, v7}, Leb;->OooOooo([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_14

    :cond_4
    if-nez v6, :cond_2e

    check-cast v12, Ldf;

    invoke-static {v3, v4, v7}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v1, v7, Lby;->a:I

    invoke-static {v1}, Lcl;->OooO00o(I)I

    move-result v1

    invoke-virtual {v12, v1}, Ldf;->OooO0Oo(I)V

    :goto_2
    if-ge v0, v5, :cond_5

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_5

    invoke-static {v3, v1, v7}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v1, v7, Lby;->a:I

    invoke-static {v1}, Lcl;->OooO00o(I)I

    move-result v1

    invoke-virtual {v12, v1}, Ldf;->OooO0Oo(I)V

    goto :goto_2

    :cond_5
    return v0

    :pswitch_2
    if-ne v6, v14, :cond_6

    invoke-static {v3, v4, v12, v7}, Leb;->OooOO0o([BILdi;Lby;)I

    move-result v2

    goto :goto_3

    :cond_6
    if-nez v6, :cond_2e

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Leb;->OooO0OO(I[BIILdi;Lby;)I

    move-result v2

    :goto_3
    check-cast v1, Lde;

    iget-object v3, v1, Lde;->h:Lfi;

    sget-object v4, Lfi;->a:Lfi;

    if-eq v3, v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-direct {p0, v8}, Lek;->Oooo0O0(I)Ldh;

    move-result-object v4

    iget-object v0, v0, Lek;->o:Lfh;

    move/from16 v5, p6

    invoke-static {v5, v12, v4, v3, v0}, Leu;->OooO0oO(ILjava/util/List;Ldh;Ljava/lang/Object;Lfh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi;

    if-nez v0, :cond_8

    move v0, v2

    goto/16 :goto_14

    :cond_8
    iput-object v0, v1, Lde;->h:Lfi;

    return v2

    :pswitch_3
    if-ne v6, v14, :cond_2e

    invoke-static {v3, v4, v7}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v1, v7, Lby;->a:I

    if-ltz v1, :cond_f

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_e

    if-eqz v1, :cond_9

    invoke-static {v3, v0, v1}, Lck;->OooO0oO([BII)Lck;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v0, v1

    goto :goto_6

    :cond_9
    sget-object v1, Lck;->b:Lck;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    if-ge v0, v5, :cond_d

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_d

    invoke-static {v3, v1, v7}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v1, v7, Lby;->a:I

    if-ltz v1, :cond_c

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_b

    if-eqz v1, :cond_a

    invoke-static {v3, v0, v1}, Lck;->OooO0oO([BII)Lck;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    sget-object v1, Lck;->b:Lck;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object v0

    throw v0

    :cond_c
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v0

    throw v0

    :cond_d
    return v0

    :cond_e
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object v0

    throw v0

    :cond_f
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v0

    throw v0

    :pswitch_4
    if-eq v6, v14, :cond_10

    goto/16 :goto_13

    :cond_10
    invoke-direct {p0, v8}, Lek;->OooOOOo(I)Les;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Leb;->OooO0oO(Les;I[BIILdi;Lby;)I

    move-result v0

    return v0

    :pswitch_5
    if-ne v6, v14, :cond_2e

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v10

    const-string v1, ""

    if-eqz v0, :cond_18

    invoke-static {v3, v4, v7}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_17

    if-nez v4, :cond_11

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_7

    :cond_11
    add-int v6, v0, v4

    invoke-static {v3, v0, v6}, Lfx;->OooO0o([BII)Z

    move-result v8

    if-eqz v8, :cond_16

    new-instance v8, Ljava/lang/String;

    sget-object v9, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    if-ge v6, v5, :cond_15

    invoke-static {v3, v6, v7}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_15

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v6

    iget v0, v7, Lby;->a:I

    if-ltz v0, :cond_14

    if-nez v0, :cond_12

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    add-int v4, v6, v0

    invoke-static {v3, v6, v4}, Lfx;->OooO0o([BII)Z

    move-result v8

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/String;

    sget-object v9, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_7

    :cond_13
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v0

    throw v0

    :cond_15
    move v0, v6

    goto/16 :goto_14

    :cond_16
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object v0

    throw v0

    :cond_17
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {v3, v4, v7}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_1c

    if-eqz v4, :cond_19

    new-instance v6, Ljava/lang/String;

    sget-object v8, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v0, v4

    goto :goto_9

    :cond_19
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge v0, v5, :cond_2f

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_2f

    invoke-static {v3, v4, v7}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_1b

    if-eqz v4, :cond_1a

    new-instance v6, Ljava/lang/String;

    sget-object v8, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1a
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v0

    throw v0

    :pswitch_6
    if-ne v6, v14, :cond_1d

    invoke-static {v3, v4, v12, v7}, Leb;->OooOooO([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_14

    :cond_1d
    if-nez v6, :cond_2e

    check-cast v12, Lca;

    invoke-static {v3, v4, v7}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    cmp-long v1, v8, v10

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    move v1, v13

    goto :goto_a

    :cond_1e
    move v1, v4

    :goto_a
    invoke-virtual {v12, v1}, Lca;->OooO0OO(Z)V

    :goto_b
    if-ge v0, v5, :cond_20

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_20

    invoke-static {v3, v1, v7}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1f

    move v1, v13

    goto :goto_c

    :cond_1f
    move v1, v4

    :goto_c
    invoke-virtual {v12, v1}, Lca;->OooO0OO(Z)V

    goto :goto_b

    :cond_20
    return v0

    :pswitch_7
    if-ne v6, v14, :cond_21

    invoke-static {v3, v4, v12, v7}, Leb;->OooOo0O([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_14

    :cond_21
    if-ne v6, v9, :cond_2e

    check-cast v12, Ldf;

    invoke-static/range {p2 .. p3}, Leb;->OooOO0([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Ldf;->OooO0Oo(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_d
    if-ge v0, v5, :cond_22

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_22

    invoke-static {v3, v1}, Leb;->OooOO0([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Ldf;->OooO0Oo(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_d

    :cond_22
    return v0

    :pswitch_8
    if-ne v6, v14, :cond_23

    invoke-static {v3, v4, v12, v7}, Leb;->OooOoO([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_14

    :cond_23
    if-ne v6, v13, :cond_2e

    check-cast v12, Ldw;

    invoke-static/range {p2 .. p3}, Leb;->OooOOoo([BI)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Ldw;->OooO0OO(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_e
    if-ge v0, v5, :cond_24

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_24

    invoke-static {v3, v1}, Leb;->OooOOoo([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldw;->OooO0OO(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_e

    :cond_24
    return v0

    :pswitch_9
    if-ne v6, v14, :cond_25

    invoke-static {v3, v4, v12, v7}, Leb;->OooOO0o([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_14

    :cond_25
    if-eqz v6, :cond_26

    goto/16 :goto_13

    :cond_26
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Leb;->OooO0OO(I[BIILdi;Lby;)I

    move-result v0

    return v0

    :pswitch_a
    if-ne v6, v14, :cond_27

    invoke-static {v3, v4, v12, v7}, Leb;->OooOOo([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_14

    :cond_27
    if-nez v6, :cond_2e

    check-cast v12, Ldw;

    invoke-static {v3, v4, v7}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    invoke-virtual {v12, v8, v9}, Ldw;->OooO0OO(J)V

    :goto_f
    if-ge v0, v5, :cond_28

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_28

    invoke-static {v3, v1, v7}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    invoke-virtual {v12, v8, v9}, Ldw;->OooO0OO(J)V

    goto :goto_f

    :cond_28
    return v0

    :pswitch_b
    if-ne v6, v14, :cond_29

    invoke-static {v3, v4, v12, v7}, Leb;->OooOoo0([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_14

    :cond_29
    if-ne v6, v9, :cond_2e

    check-cast v12, Lcx;

    invoke-static/range {p2 .. p3}, Leb;->OooOo([BI)F

    move-result v0

    invoke-virtual {v12, v0}, Lcx;->OooO0OO(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_10
    if-ge v0, v5, :cond_2a

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_2a

    invoke-static {v3, v1}, Leb;->OooOo([BI)F

    move-result v0

    invoke-virtual {v12, v0}, Lcx;->OooO0OO(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_10

    :cond_2a
    return v0

    :pswitch_c
    if-ne v6, v14, :cond_2b

    invoke-static {v3, v4, v12, v7}, Leb;->OooOoo([BILdi;Lby;)I

    move-result v0

    goto :goto_14

    :cond_2b
    if-ne v6, v13, :cond_2e

    check-cast v12, Lcp;

    invoke-static/range {p2 .. p3}, Leb;->OooOo00([BI)D

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcp;->OooO0OO(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_11
    if-ge v0, v5, :cond_2c

    invoke-static {v3, v0, v7}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_2c

    invoke-static {v3, v1}, Leb;->OooOo00([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcp;->OooO0OO(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_11

    :cond_2c
    return v0

    :goto_12
    if-ge v4, v5, :cond_2d

    invoke-static {v3, v4, v7}, Leb;->OooOO0O([BILby;)I

    move-result v6

    iget v8, v7, Lby;->a:I

    if-ne v2, v8, :cond_2d

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Leb;->OooO0oo(Les;[BIIILby;)I

    move-result v4

    iget-object v6, v7, Lby;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2d
    return v4

    :cond_2e
    :goto_13
    move v0, v4

    :cond_2f
    :goto_14
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final OooOO0o(Ljava/lang/Object;[BIIIJLby;)I
    .locals 2

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lek;->OooOoo(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Lff;->OooO0oo(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lff;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p5}, Lff;->OooO0o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p5, v1

    :cond_0
    invoke-static {p0}, Lff;->OooO0o0(Ljava/lang/Object;)Lea;

    move-result-object p0

    invoke-static {p5}, Lff;->OooO0oO(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p3, p8}, Leb;->OooOO0O([BILby;)I

    move-result p3

    iget p5, p8, Lby;->a:I

    if-ltz p5, :cond_6

    sub-int p6, p4, p3

    if-gt p5, p6, :cond_6

    add-int/2addr p5, p3

    iget-object p0, p0, Lea;->b:Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    if-ge p3, p5, :cond_4

    add-int/lit8 p6, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    invoke-static {p3, p2, p6, p8}, Leb;->OooO0o0(I[BILby;)I

    move-result p6

    iget p3, p8, Lby;->a:I

    :cond_1
    ushr-int/lit8 p7, p3, 0x3

    const/4 v0, 0x1

    if-eq p7, v0, :cond_3

    const/4 v0, 0x2

    if-eq p7, v0, :cond_2

    invoke-static {p3, p2, p6, p4, p8}, Leb;->OooO00o(I[BIILby;)I

    move-result p3

    goto :goto_0

    :cond_2
    throw p0

    :cond_3
    throw p0

    :cond_4
    if-ne p3, p5, :cond_5

    invoke-interface {p1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p5

    :cond_5
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooOOO(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;
    .locals 7

    instance-of v0, p0, Ler;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ler;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lek;->OooOOOO(Ler;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lfd;

    const/4 p0, 0x0

    throw p0
.end method

.method public static OooOOOO(Ler;Lfs;Ldv;Lfh;Lej;Lff;)Lek;
    .locals 35

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ler;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v2

    :goto_0
    iget-object v1, v0, Ler;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-ge v5, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v6, :cond_35

    :goto_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3

    :cond_2
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lek;->a:[I

    move v9, v2

    move v10, v9

    move v12, v10

    move v13, v12

    move v15, v13

    move-object v14, v7

    move v7, v15

    goto/16 :goto_c

    :cond_4
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_5

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_6

    :cond_9
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_a
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_b
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_c
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_e
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_f
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_10
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_11

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_11
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_12
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v18, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_13

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_b

    :cond_13
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v18

    :cond_14
    add-int v2, v15, v13

    add-int/2addr v2, v14

    new-array v2, v2, [I

    add-int v14, v5, v5

    add-int/2addr v14, v7

    move v7, v13

    move v13, v10

    move v10, v14

    move-object v14, v2

    move v2, v5

    move/from16 v5, v16

    :goto_c
    sget-object v8, Lek;->b:Lsun/misc/Unsafe;

    iget-object v3, v0, Ler;->c:[Ljava/lang/Object;

    iget-object v6, v0, Ler;->a:Leh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v20, v5

    mul-int/lit8 v5, v12, 0x3

    new-array v5, v5, [I

    add-int/2addr v12, v12

    new-array v12, v12, [Ljava/lang/Object;

    add-int v22, v15, v7

    move/from16 v23, v15

    move/from16 v7, v20

    move/from16 v24, v22

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_d
    if-ge v7, v4, :cond_34

    add-int/lit8 v25, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v26, v4

    const v4, 0xd800

    if-lt v7, v4, :cond_16

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v25

    const/16 v25, 0xd

    :goto_e
    add-int/lit8 v27, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_15

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v25

    or-int/2addr v7, v4

    add-int/lit8 v25, v25, 0xd

    move/from16 v4, v27

    move/from16 v15, v28

    goto :goto_e

    :cond_15
    shl-int v4, v4, v25

    or-int/2addr v7, v4

    move/from16 v4, v27

    goto :goto_f

    :cond_16
    move/from16 v28, v15

    move/from16 v4, v25

    :goto_f
    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v25, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_18

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v15, v25

    const/16 v25, 0xd

    :goto_10
    add-int/lit8 v27, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v29, v13

    const v13, 0xd800

    if-lt v15, v13, :cond_17

    and-int/lit16 v13, v15, 0x1fff

    shl-int v13, v13, v25

    or-int/2addr v4, v13

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v27

    move/from16 v13, v29

    goto :goto_10

    :cond_17
    shl-int v13, v15, v25

    or-int/2addr v4, v13

    move/from16 v15, v27

    goto :goto_11

    :cond_18
    move/from16 v29, v13

    move/from16 v15, v25

    :goto_11
    and-int/lit16 v13, v4, 0xff

    move/from16 v25, v9

    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_19

    add-int/lit8 v9, v21, 0x1

    aput v20, v14, v21

    move/from16 v21, v9

    :cond_19
    const/16 v9, 0x33

    if-ge v13, v9, :cond_29

    add-int/lit8 v9, v10, 0x1

    aget-object v10, v3, v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lek;->OooOOo0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v0, 0x9

    if-ne v13, v0, :cond_1b

    :cond_1a
    const/16 v18, 0x1

    goto :goto_14

    :cond_1b
    const/16 v0, 0x11

    if-eq v13, v0, :cond_1a

    const/16 v0, 0x1b

    if-ne v13, v0, :cond_1d

    :cond_1c
    const/16 v18, 0x1

    goto :goto_12

    :cond_1d
    const/16 v0, 0x31

    if-eq v13, v0, :cond_1c

    const/16 v0, 0xc

    if-eq v13, v0, :cond_1f

    const/16 v0, 0x1e

    if-eq v13, v0, :cond_1f

    const/16 v0, 0x2c

    if-eq v13, v0, :cond_1f

    const/16 v0, 0x32

    if-ne v13, v0, :cond_21

    add-int/lit8 v0, v23, 0x1

    aput v20, v14, v23

    div-int/lit8 v23, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int v23, v23, v23

    aget-object v9, v3, v9

    aput-object v9, v12, v23

    and-int/lit16 v9, v4, 0x800

    if-eqz v9, :cond_1e

    add-int/lit8 v9, v30, 0x1

    add-int/lit8 v23, v23, 0x1

    aget-object v30, v3, v30

    aput-object v30, v12, v23

    move/from16 v23, v0

    goto :goto_15

    :cond_1e
    move/from16 v23, v0

    goto :goto_13

    :cond_1f
    if-nez v11, :cond_20

    div-int/lit8 v0, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int/2addr v0, v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v9, v3, v9

    aput-object v9, v12, v0

    goto :goto_13

    :cond_20
    const/16 v18, 0x1

    goto :goto_15

    :goto_12
    div-int/lit8 v0, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    aget-object v9, v3, v9

    aput-object v9, v12, v0

    :goto_13
    move/from16 v0, v30

    goto :goto_16

    :goto_14
    div-int/lit8 v0, v20, 0x3

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v30

    aput-object v30, v12, v0

    :cond_21
    :goto_15
    move v0, v9

    :goto_16
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    and-int/lit16 v10, v4, 0x1000

    const v30, 0xfffff

    move/from16 v31, v0

    const/16 v0, 0x1000

    if-eq v10, v0, :cond_23

    :cond_22
    move/from16 v33, v2

    move/from16 v34, v4

    move-object v0, v5

    const/4 v10, 0x0

    goto :goto_1a

    :cond_23
    const/16 v0, 0x11

    if-gt v13, v0, :cond_22

    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v15, 0xd800

    if-lt v10, v15, :cond_25

    and-int/lit16 v10, v10, 0x1fff

    const/16 v30, 0xd

    :goto_17
    add-int/lit8 v32, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v15, :cond_24

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v30

    or-int/2addr v10, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v0, v32

    const v15, 0xd800

    goto :goto_17

    :cond_24
    shl-int v0, v0, v30

    or-int/2addr v10, v0

    move/from16 v15, v32

    goto :goto_18

    :cond_25
    move v15, v0

    :goto_18
    add-int v0, v2, v2

    div-int/lit8 v30, v10, 0x20

    add-int v0, v0, v30

    move/from16 v33, v2

    aget-object v2, v3, v0

    move/from16 v30, v15

    instance-of v15, v2, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_26

    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_19

    :cond_26
    check-cast v2, Ljava/lang/String;

    invoke-static {v6, v2}, Lek;->OooOOo0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v3, v0

    :goto_19
    move/from16 v34, v4

    move-object v0, v5

    invoke-virtual {v8, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v2, v4

    rem-int/lit8 v10, v10, 0x20

    move/from16 v15, v30

    move/from16 v30, v2

    :goto_1a
    const/16 v2, 0x12

    if-ge v13, v2, :cond_27

    goto :goto_1b

    :cond_27
    const/16 v2, 0x31

    if-gt v13, v2, :cond_28

    add-int/lit8 v2, v24, 0x1

    aput v9, v14, v24

    move/from16 v24, v2

    :cond_28
    :goto_1b
    const/16 v18, 0x1

    goto/16 :goto_22

    :cond_29
    move/from16 v33, v2

    move/from16 v34, v4

    move-object v0, v5

    add-int/lit8 v2, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_2b

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_1c
    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_2a

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v9

    or-int/2addr v4, v2

    add-int/lit8 v9, v9, 0xd

    move v2, v15

    goto :goto_1c

    :cond_2a
    shl-int/2addr v2, v9

    or-int/2addr v4, v2

    move v2, v15

    :cond_2b
    add-int/lit8 v9, v13, -0x33

    const/16 v15, 0x9

    if-ne v9, v15, :cond_2c

    goto :goto_1e

    :cond_2c
    const/16 v15, 0x11

    if-eq v9, v15, :cond_2f

    const/16 v15, 0xc

    if-eq v9, v15, :cond_2d

    goto :goto_1d

    :cond_2d
    if-nez v11, :cond_2e

    div-int/lit8 v9, v20, 0x3

    add-int/lit8 v15, v10, 0x1

    add-int/2addr v9, v9

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v10, v3, v10

    aput-object v10, v12, v9

    move v10, v15

    :cond_2e
    :goto_1d
    const/16 v18, 0x1

    goto :goto_1f

    :cond_2f
    :goto_1e
    div-int/lit8 v9, v20, 0x3

    add-int/lit8 v15, v10, 0x1

    add-int/2addr v9, v9

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v10, v3, v10

    aput-object v10, v12, v9

    move v10, v15

    :goto_1f
    add-int/2addr v4, v4

    aget-object v9, v3, v4

    instance-of v15, v9, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_30

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_20

    :cond_30
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lek;->OooOOo0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v3, v4

    :goto_20
    move-object v15, v6

    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v9, v5

    add-int/lit8 v4, v4, 0x1

    aget-object v5, v3, v4

    instance-of v6, v5, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_31

    check-cast v5, Ljava/lang/reflect/Field;

    move-object v6, v15

    goto :goto_21

    :cond_31
    check-cast v5, Ljava/lang/String;

    move-object v6, v15

    invoke-static {v6, v5}, Lek;->OooOOo0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_21
    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move v15, v2

    move/from16 v30, v4

    move/from16 v31, v10

    const/4 v10, 0x0

    :goto_22
    add-int/lit8 v2, v20, 0x1

    aput v7, v0, v20

    add-int/lit8 v4, v2, 0x1

    move/from16 v5, v34

    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_32

    const/high16 v7, 0x20000000

    goto :goto_23

    :cond_32
    const/4 v7, 0x0

    :goto_23
    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_33

    const/high16 v5, 0x10000000

    goto :goto_24

    :cond_33
    const/4 v5, 0x0

    :goto_24
    or-int/2addr v5, v7

    shl-int/lit8 v7, v13, 0x14

    or-int/2addr v5, v7

    or-int/2addr v5, v9

    aput v5, v0, v2

    add-int/lit8 v20, v4, 0x1

    shl-int/lit8 v2, v10, 0x14

    or-int v2, v2, v30

    aput v2, v0, v4

    move-object v5, v0

    move v7, v15

    move/from16 v9, v25

    move/from16 v4, v26

    move/from16 v15, v28

    move/from16 v13, v29

    move/from16 v10, v31

    move/from16 v2, v33

    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_34
    move-object v0, v5

    move/from16 v25, v9

    move/from16 v29, v13

    move/from16 v28, v15

    new-instance v1, Lek;

    move-object v5, v1

    move-object/from16 v2, p0

    iget-object v10, v2, Ler;->a:Leh;

    const/4 v2, 0x0

    move-object v3, v12

    move v12, v2

    const/16 v21, 0x0

    move-object v6, v0

    move-object v7, v3

    move/from16 v8, v25

    move/from16 v9, v29

    move-object v13, v14

    move/from16 v14, v28

    move/from16 v15, v22

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-direct/range {v5 .. v21}, Lek;-><init>([I[Ljava/lang/Object;IILeh;ZZ[IIILfs;Ldv;Lfh;Lej;Lff;[B)V

    return-object v1

    :cond_35
    move v5, v7

    goto/16 :goto_1
.end method

.method private final OooOOOo(I)Les;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lek;->d:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Les;

    if-nez v1, :cond_0

    sget-object v1, Lep;->a:Lep;

    add-int/lit8 v2, p1, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object v0

    iget-object p0, p0, Lek;->d:[Ljava/lang/Object;

    aput-object v0, p0, p1

    return-object v0

    :cond_0
    return-object v1
.end method

.method private static OooOOo(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static OooOOo0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final OooOOoo(ILjava/lang/Object;Lgb;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lgb;->OooOO0o(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lck;

    invoke-interface {p2, p0, p1}, Lgb;->OooOO0O(ILck;)V

    return-void
.end method

.method private final OooOo(Ljava/lang/Object;II)Z
    .locals 2

    invoke-direct {p0, p3}, Lek;->OoooO00(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final OooOo0(Lgb;ILjava/lang/Object;I)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-direct {p0, p4}, Lek;->OooOoo(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lff;->OooO0o0(Ljava/lang/Object;)Lea;

    move-result-object p0

    invoke-static {p3}, Lff;->OooO0Oo(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    move-object v0, p1

    check-cast v0, Lco;

    iget-object v1, v0, Lco;->a:Lcn;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcn;->o000000(II)V

    iget-object v1, v0, Lco;->a:Lcn;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Leb;->OooO0o(Lea;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn;->o00000O0(I)V

    iget-object v0, v0, Lco;->a:Lcn;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {v0, p0, v1, p4}, Leb;->OooOOO0(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final OooOo00(Lfh;Ljava/lang/Object;Lgb;)V
    .locals 0

    invoke-virtual {p0, p1}, Lfh;->OooO0oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lfh;->OooO(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method private final OooOo0O(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    invoke-direct {p0, p3}, Lek;->Oooo0oo(I)I

    move-result v0

    invoke-static {v0}, Lek;->o000oOoO(I)J

    move-result-wide v0

    invoke-direct {p0, p2, p3}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, p2}, Ldj;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lek;->OooOooO(Ljava/lang/Object;I)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lek;->OooOooO(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final OooOo0o(Ljava/lang/Object;I)Z
    .locals 6

    invoke-direct {p0, p2}, Lek;->OoooO00(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/32 v3, 0xfffff

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_14

    invoke-direct {p0, p2}, Lek;->Oooo0oo(I)I

    move-result p0

    invoke-static {p0}, Lek;->o000oOoO(I)J

    move-result-wide v0

    invoke-static {p0}, Lek;->OoooO(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p1, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v5

    :cond_0
    return v4

    :pswitch_1
    invoke-static {p1, v0, v1}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v5

    :cond_1
    return v4

    :pswitch_2
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v5

    :cond_2
    return v4

    :pswitch_3
    invoke-static {p1, v0, v1}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v5

    :cond_3
    return v4

    :pswitch_4
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v5

    :cond_4
    return v4

    :pswitch_5
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v5

    :cond_5
    return v4

    :pswitch_6
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v5

    :cond_6
    return v4

    :pswitch_7
    sget-object p0, Lck;->b:Lck;

    invoke-static {p1, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v5

    :cond_7
    return v4

    :pswitch_8
    invoke-static {p1, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v5

    :cond_8
    return v4

    :pswitch_9
    invoke-static {p1, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v5

    :cond_9
    return v4

    :cond_a
    instance-of p1, p0, Lck;

    if-eqz p1, :cond_c

    sget-object p1, Lck;->b:Lck;

    invoke-virtual {p1, p0}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v5

    :cond_b
    return v4

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    invoke-static {p1, v0, v1}, Lfr;->OooOo0(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v5

    :cond_d
    return v4

    :pswitch_c
    invoke-static {p1, v0, v1}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v5

    :cond_e
    return v4

    :pswitch_d
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v5

    :cond_f
    return v4

    :pswitch_e
    invoke-static {p1, v0, v1}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v5

    :cond_10
    return v4

    :pswitch_f
    invoke-static {p1, v0, v1}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v5

    :cond_11
    return v4

    :pswitch_10
    invoke-static {p1, v0, v1}, Lfr;->OooOo0O(Ljava/lang/Object;J)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_12

    return v5

    :cond_12
    return v4

    :pswitch_11
    invoke-static {p1, v0, v1}, Lfr;->OooOo(Ljava/lang/Object;J)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_13

    return v5

    :cond_13
    return v4

    :cond_14
    invoke-static {p1, v1, v2}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v5, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v5

    :cond_15
    return v4

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static OooOoO(Ljava/lang/Object;ILes;)Z
    .locals 2

    invoke-static {p1}, Lek;->o000oOoO(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Les;->OooO0OO(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final OooOoO0(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-eq p3, v0, :cond_1

    and-int p0, p4, p5

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0, p1, p2}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method private static OooOoOO(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final OooOoo(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lek;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final OooOoo0(II)I
    .locals 5

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    invoke-direct {p0, v3}, Lek;->Oooo0o(I)I

    move-result v4

    if-eq p1, v4, :cond_1

    if-lt p1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method private final OooOooO(Ljava/lang/Object;I)V
    .locals 4

    invoke-direct {p0, p2}, Lek;->OoooO00(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p2

    const/4 v2, 0x1

    ushr-int/lit8 p0, p0, 0x14

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    invoke-static {p1, v0, v1, p0}, Lfr;->OooO(Ljava/lang/Object;JI)V

    :cond_0
    return-void
.end method

.method private final OooOooo(Ljava/lang/Object;II)V
    .locals 2

    invoke-direct {p0, p3}, Lek;->OoooO00(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lfr;->OooO(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static Oooo(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static Oooo0(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final Oooo000(Ljava/lang/Object;Lgb;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lek;->h:Z

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lej;->OooO(Ljava/lang/Object;)Lcu;

    move-result-object v3

    invoke-virtual {v3}, Lcu;->OooO0oo()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcu;->OooOOOO()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lek;->c:[I

    array-length v6, v6

    sget-object v7, Lek;->b:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move v11, v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_9

    invoke-direct {v0, v10}, Lek;->Oooo0oo(I)I

    move-result v13

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v14

    invoke-static {v13}, Lek;->OoooO(I)I

    move-result v15

    iget-boolean v4, v0, Lek;->i:Z

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x11

    if-gt v15, v4, :cond_1

    iget-object v4, v0, Lek;->c:[I

    add-int/lit8 v16, v10, 0x2

    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_3

    int-to-long v11, v9

    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    :cond_3
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v5}, Lej;->OooO00o(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_6

    invoke-static {v2, v5}, Lej;->OooO0o0(Lgb;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {v13}, Lek;->o000oOoO(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_0

    :cond_7
    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_5

    :pswitch_0
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lgb;->OooO(ILjava/lang/Object;Les;)V

    goto :goto_4

    :pswitch_1
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0o(IJ)V

    goto :goto_4

    :pswitch_2
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0oO(II)V

    goto :goto_4

    :pswitch_3
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooOo00(IJ)V

    goto :goto_4

    :pswitch_4
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooOOOo(II)V

    goto :goto_4

    :pswitch_5
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooOOoo(II)V

    goto :goto_4

    :pswitch_6
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0o0(II)V

    goto :goto_4

    :pswitch_7
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lck;

    invoke-interface {v2, v14, v4}, Lgb;->OooOO0O(ILck;)V

    goto :goto_4

    :pswitch_8
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lgb;->OooOO0(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lek;->OooOOoo(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->OoooO0O(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooOOo(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0OO(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0Oo(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0O0(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooOOo0(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->Oooo0(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooOOOO(IF)V

    goto/16 :goto_4

    :pswitch_11
    invoke-direct {v0, v1, v14, v10}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v8, v9}, Lek;->OooOoOO(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooOOO(ID)V

    goto/16 :goto_4

    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v10}, Lek;->OooOo0(Lgb;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v10}, Lek;->OooOOOo(I)Les;

    move-result-object v9

    invoke-static {v4, v8, v2, v9}, Leu;->OooOo00(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_4

    :pswitch_14
    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v4, v8, v2, v13}, Leu;->OooOooO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_15
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooO0O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_16
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->Oooo0O0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_17
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooOOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_18
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooOOo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_19
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->Oooo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1a
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooOo0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1b
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1c
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->Oooo00O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->Oooo0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1e
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OooOoOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1f
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OooOo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_20
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OooOo0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_21
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_22
    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Leu;->OooOooO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_23
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooO0O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_24
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->Oooo0O0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_25
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooOOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_26
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooOOo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_27
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->Oooo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_28
    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Leu;->OooOOoo(ILjava/util/List;Lgb;)V

    goto/16 :goto_4

    :pswitch_29
    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v10}, Lek;->OooOOOo(I)Les;

    move-result-object v9

    invoke-static {v4, v8, v2, v9}, Leu;->OooO(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_4

    :pswitch_2a
    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Leu;->OooO0oo(ILjava/util/List;Lgb;)V

    goto/16 :goto_4

    :pswitch_2b
    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Leu;->OoooOo0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OoooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->Oooo00O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->Oooo0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OooOoOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OooOo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OooOo0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Leu;->OooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lgb;->OooO(ILjava/lang/Object;Les;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0o(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0oO(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooOo00(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooOOOo(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooOOoo(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0o0(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lck;

    invoke-interface {v2, v14, v4}, Lgb;->OooOO0O(ILck;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lgb;->OooOO0(ILjava/lang/Object;Les;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lek;->OooOOoo(ILjava/lang/Object;Lgb;)V

    goto :goto_5

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-static {v1, v8, v9}, Lfr;->OooOo0(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooOOo(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0OO(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0Oo(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(II)V

    goto :goto_5

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0O0(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooOOo0(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-static {v1, v8, v9}, Lfr;->OooOo0O(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooOOOO(IF)V

    goto :goto_5

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    invoke-static {v1, v8, v9}, Lfr;->OooOo(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooOOO(ID)V

    :cond_8
    :goto_5
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_1

    :cond_9
    :goto_6
    if-eqz v5, :cond_b

    invoke-static {v2, v5}, Lej;->OooO0o0(Lgb;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    iget-object v0, v0, Lek;->o:Lfh;

    invoke-static {v0, v1, v2}, Lek;->OooOo00(Lfh;Ljava/lang/Object;Lgb;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final Oooo00O(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    invoke-direct {p0, p3}, Lek;->Oooo0oo(I)I

    move-result v0

    invoke-direct {p0, p3}, Lek;->Oooo0o(I)I

    move-result v1

    invoke-static {v0}, Lek;->o000oOoO(I)J

    move-result-wide v2

    invoke-direct {p0, p2, v1, p3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, v2, v3}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v3}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Ldj;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lek;->OooOooo(Ljava/lang/Object;II)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p1, v2, v3, p2}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lek;->OooOooo(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private final Oooo00o(Ljava/lang/Object;[BIILby;)V
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lek;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    move v1, v10

    move/from16 v2, v16

    move v6, v2

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_17

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Leb;->OooO0o0(I[BILby;)I

    move-result v0

    iget v3, v11, Lby;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lek;->OooO0oo(II)I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-direct {v15, v5}, Lek;->OoooOOO(I)I

    move-result v0

    :goto_2
    move v2, v0

    if-eq v2, v10, :cond_16

    iget-object v0, v15, Lek;->c:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Lek;->OoooO(I)I

    move-result v0

    move-object/from16 v18, v9

    invoke-static {v1}, Lek;->o000oOoO(I)J

    move-result-wide v8

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_d

    iget-object v10, v15, Lek;->c:[I

    add-int/lit8 v21, v2, 0x2

    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-ne v10, v7, :cond_2

    move/from16 v23, v1

    move/from16 v19, v2

    move v10, v7

    move-object/from16 v7, v18

    goto :goto_4

    :cond_2
    move/from16 v23, v1

    move/from16 v19, v2

    if-eq v7, v13, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v18

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, v18

    :goto_3
    if-eq v10, v13, :cond_4

    int-to-long v1, v10

    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_4
    :goto_4
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    goto/16 :goto_c

    :pswitch_0
    if-nez v3, :cond_5

    invoke-static {v12, v4, v11}, Leb;->OooOOo0([BILby;)I

    move-result v17

    iget-wide v0, v11, Lby;->b:J

    invoke-static {v0, v1}, Lcl;->OooO0O0(J)J

    move-result-wide v4

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v13, v19

    move-wide v2, v8

    move/from16 v19, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_9

    :cond_5
    move/from16 v13, v19

    move/from16 v19, p3

    goto :goto_5

    :pswitch_1
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_8

    invoke-static {v12, v4, v11}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    invoke-static {v1}, Lcl;->OooO00o(I)I

    move-result v1

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_2
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_8

    invoke-static {v12, v4, v11}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_3
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_8

    invoke-static {v12, v4, v11}, Leb;->OooOoOO([BILby;)I

    move-result v0

    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_4
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_7

    invoke-direct {v15, v13}, Lek;->OooOOOo(I)Les;

    move-result-object v0

    move/from16 v2, p4

    const v18, 0xfffff

    invoke-static {v0, v12, v4, v2, v11}, Leb;->OooO(Les;[BIILby;)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_6
    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    invoke-static {v1, v3}, Ldj;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_7
    move/from16 v2, p4

    :cond_8
    :goto_5
    const v18, 0xfffff

    goto/16 :goto_c

    :pswitch_5
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-eq v3, v0, :cond_9

    goto/16 :goto_c

    :cond_9
    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-eqz v0, :cond_a

    invoke-static {v12, v4, v11}, Leb;->OooOoO0([BILby;)I

    move-result v0

    goto :goto_6

    :cond_a
    invoke-static {v12, v4, v11}, Leb;->OooOo0([BILby;)I

    move-result v0

    :goto_6
    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_6
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_c

    invoke-static {v12, v4, v11}, Leb;->OooOOo0([BILby;)I

    move-result v0

    iget-wide v3, v11, Lby;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v5, v16

    :goto_7
    invoke-static {v14, v8, v9, v5}, Lfr;->OooOO0o(Ljava/lang/Object;JZ)V

    goto :goto_8

    :pswitch_7
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_c

    invoke-static {v12, v4}, Leb;->OooOO0([BI)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_8
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :pswitch_8
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_c

    invoke-static {v12, v4}, Leb;->OooOOoo([BI)J

    move-result-wide v22

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_a

    :pswitch_9
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_c

    invoke-static {v12, v4, v11}, Leb;->OooOO0O([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_c

    invoke-static {v12, v4, v11}, Leb;->OooOOo0([BILby;)I

    move-result v17

    iget-wide v4, v11, Lby;->b:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_9
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v0, v17

    goto :goto_b

    :pswitch_b
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_c

    invoke-static {v12, v4}, Leb;->OooOo([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lfr;->OooO0oo(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_a

    :pswitch_c
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_c

    invoke-static {v12, v4}, Leb;->OooOo00([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lfr;->OooO0oO(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_a
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    :goto_b
    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_c
    :goto_c
    move v2, v4

    move-object v8, v7

    move/from16 v25, v10

    move/from16 v20, v13

    move-object v7, v14

    move-object v9, v15

    const/16 v18, -0x1

    goto/16 :goto_10

    :cond_d
    move/from16 v19, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v18

    const v18, 0xfffff

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_12

    const/16 v1, 0x31

    if-gt v0, v1, :cond_f

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v19

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    move/from16 v9, v18

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v20, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lek;->OooOO0O(Ljava/lang/Object;[BIIIIIIJIJLby;)I

    move-result v0

    if-eq v0, v15, :cond_e

    :goto_d
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    goto/16 :goto_0

    :cond_e
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move v2, v0

    move/from16 v6, v24

    move-object/from16 v8, v28

    goto/16 :goto_10

    :cond_f
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-eq v9, v0, :cond_10

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move/from16 v7, p3

    move-wide/from16 v10, v26

    move/from16 v12, v20

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lek;->OooOO0(Ljava/lang/Object;[BIIIIIIIJILby;)I

    move-result v0

    if-eq v0, v15, :cond_e

    goto :goto_d

    :cond_10
    move/from16 v0, p3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    goto/16 :goto_f

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lek;->OooOO0o(Ljava/lang/Object;[BIIIJLby;)I

    move-result v0

    if-eq v0, v15, :cond_e

    goto :goto_d

    :cond_12
    move v0, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/4 v1, 0x2

    const/16 v18, -0x1

    if-ne v0, v1, :cond_15

    move-object/from16 v7, p1

    move-wide/from16 v0, v26

    move-object/from16 v8, v28

    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldi;

    invoke-interface {v2}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_13

    add-int/2addr v3, v3

    goto :goto_e

    :cond_13
    const/16 v3, 0xa

    :goto_e
    invoke-interface {v2, v3}, Ldi;->a(I)Ldi;

    move-result-object v2

    invoke-virtual {v8, v7, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object/from16 v9, p0

    move-object v5, v2

    move v3, v15

    move/from16 v10, v20

    invoke-direct {v9, v10}, Lek;->OooOOOo(I)Les;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Leb;->OooO0oO(Les;I[BIILdi;Lby;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v7

    move-object v15, v9

    move v2, v10

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v6, v24

    goto :goto_11

    :cond_15
    :goto_f
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move v3, v15

    move/from16 v10, v20

    move-object/from16 v8, v28

    move v2, v3

    move/from16 v20, v10

    move/from16 v6, v24

    goto :goto_10

    :cond_16
    move v3, v4

    move/from16 v19, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object v8, v9

    move/from16 v18, v10

    move-object v7, v14

    move-object v9, v15

    move v2, v3

    move/from16 v20, v16

    :goto_10
    invoke-static/range {p1 .. p1}, Lek;->Oooo0OO(Ljava/lang/Object;)Lfi;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Leb;->OooO0Oo(I[BIILfi;Lby;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v7

    move-object v15, v9

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    :goto_11
    move/from16 v7, v25

    move-object v9, v8

    goto/16 :goto_0

    :cond_17
    move/from16 v24, v6

    move v10, v7

    move-object v8, v9

    move-object v7, v14

    const v1, 0xfffff

    if-eq v10, v1, :cond_18

    int-to-long v1, v10

    move/from16 v6, v24

    invoke-virtual {v8, v7, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_18
    move/from16 v1, p4

    if-ne v0, v1, :cond_19

    return-void

    :cond_19
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final Oooo0O0(I)Ldh;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lek;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Ldh;

    return-object p0
.end method

.method public static Oooo0OO(Ljava/lang/Object;)Lfi;
    .locals 2

    check-cast p0, Lde;

    iget-object v0, p0, Lde;->h:Lfi;

    sget-object v1, Lfi;->a:Lfi;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lfi;->OooO00o()Lfi;

    move-result-object v0

    iput-object v0, p0, Lde;->h:Lfi;

    :cond_0
    return-object v0
.end method

.method private final Oooo0o(I)I
    .locals 0

    iget-object p0, p0, Lek;->c:[I

    aget p0, p0, p1

    return p0
.end method

.method private final Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static Oooo0oO(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final Oooo0oo(I)I
    .locals 0

    iget-object p0, p0, Lek;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private static OoooO(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final OoooO0(Ljava/lang/Object;)I
    .locals 13

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    move v6, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v7, p0, Lek;->c:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    invoke-direct {p0, v3}, Lek;->Oooo0oo(I)I

    move-result v7

    invoke-direct {p0, v3}, Lek;->Oooo0o(I)I

    move-result v8

    invoke-static {v7}, Lek;->OoooO(I)I

    move-result v9

    const/16 v10, 0x11

    if-gt v9, v10, :cond_0

    iget-object v10, p0, Lek;->c:[I

    add-int/lit8 v11, v3, 0x2

    aget v10, v10, v11

    and-int v11, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    const/4 v12, 0x1

    shl-int v10, v12, v10

    if-eq v11, v6, :cond_1

    int-to-long v5, v11

    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v11

    goto :goto_1

    :cond_0
    move v10, v2

    :cond_1
    :goto_1
    invoke-static {v7}, Lek;->o000oOoO(I)J

    move-result-wide v11

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh;

    invoke-direct {p0, v3}, Lek;->OooOOOo(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcn;->Oooo0O0(ILeh;Les;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, v11, v12}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->o0ooOoO(IJ)I

    move-result v7

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, v11, v12}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->o0ooOOo(II)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o0000oo(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o0000O00(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, v11, v12}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->o0OO00O(II)I

    move-result v7

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, v11, v12}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->o00o0O(II)I

    move-result v7

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->Oooo00o(ILck;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lek;->OooOOOo(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->OooO00o(ILjava/lang/Object;Les;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lck;

    if-eqz v9, :cond_2

    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->Oooo00o(ILck;)I

    move-result v7

    goto/16 :goto_3

    :cond_2
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcn;->Oooo0OO(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o00000o0(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o00000oO(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o00000oo(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, v11, v12}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooooOO(II)I

    move-result v7

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, v11, v12}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->o00ooo(IJ)I

    move-result v7

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, v11, v12}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->OooooOo(IJ)I

    move-result v7

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o0000(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, p1, v8, v3}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o0000Ooo(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lek;->OooOoo(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lff;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_4

    :pswitch_13
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lek;->OooOOOo(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->OooOOo0(ILjava/util/List;Les;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->OooOo0o(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->Oooo0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->Oooo0oo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->Oooo0o0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->OooOoO(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->Oooo000(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->OoooO0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->Oooo0o0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->Oooo0oo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto :goto_2

    :pswitch_1d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->OooOoo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto :goto_2

    :pswitch_1e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->OooOOo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto :goto_2

    :pswitch_1f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->OooO0Oo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto :goto_2

    :pswitch_20
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->Oooo0o0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    goto :goto_2

    :pswitch_21
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Leu;->Oooo0oo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v8}, Lcn;->Oooo00O(I)I

    move-result v8

    invoke-static {v7}, Lcn;->o00Ooo(I)I

    move-result v9

    :goto_2
    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    :pswitch_22
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OoooO00(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_23
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->Oooo0oO(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_24
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOooo(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOoo0(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOoO0(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_27
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OoooO(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_28
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOOOo(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_29
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lek;->OooOOOo(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->OooO0OO(ILjava/util/List;Les;)I

    move-result v7

    goto :goto_3

    :pswitch_2a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooO0O0(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    :pswitch_2b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOo0O(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    :pswitch_2c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOoo0(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    :pswitch_2d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOooo(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    :pswitch_2e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->Oooo00o(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    :pswitch_2f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->o000oOoO(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    :pswitch_30
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->Oooo0OO(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    :pswitch_31
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOoo0(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    :pswitch_32
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooOooo(ILjava/util/List;)I

    move-result v7

    :goto_3
    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_33
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh;

    invoke-direct {p0, v3}, Lek;->OooOOOo(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcn;->Oooo0O0(ILeh;Les;)I

    move-result v7

    goto :goto_3

    :pswitch_34
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->o0ooOoO(IJ)I

    move-result v7

    goto :goto_3

    :pswitch_35
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->o0ooOOo(II)I

    move-result v7

    goto :goto_3

    :pswitch_36
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o0000oo(I)I

    move-result v7

    goto :goto_3

    :pswitch_37
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o0000O00(I)I

    move-result v7

    goto :goto_3

    :pswitch_38
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->o0OO00O(II)I

    move-result v7

    goto :goto_3

    :pswitch_39
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->o00o0O(II)I

    move-result v7

    goto :goto_3

    :pswitch_3a
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->Oooo00o(ILck;)I

    move-result v7

    goto :goto_3

    :pswitch_3b
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lek;->OooOOOo(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->OooO00o(ILjava/lang/Object;Les;)I

    move-result v7

    goto :goto_3

    :pswitch_3c
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lck;

    if-eqz v9, :cond_3

    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->Oooo00o(ILck;)I

    move-result v7

    goto/16 :goto_3

    :cond_3
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcn;->Oooo0OO(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3d
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o00000o0(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3e
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o00000oO(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3f
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o00000oo(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_40
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooooOO(II)I

    move-result v7

    goto/16 :goto_3

    :pswitch_41
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->o00ooo(IJ)I

    move-result v7

    goto/16 :goto_3

    :pswitch_42
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->OooooOo(IJ)I

    move-result v7

    goto/16 :goto_3

    :pswitch_43
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o0000(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_44
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    invoke-static {v8}, Lcn;->o0000Ooo(I)I

    move-result v7

    goto/16 :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lek;->o:Lfh;

    invoke-static {v0, p1}, Lek;->OooO(Lfh;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean p0, p0, Lek;->h:Z

    if-eqz p0, :cond_8

    invoke-static {p1}, Lej;->OooO(Ljava/lang/Object;)Lcu;

    move-result-object p0

    move p1, v2

    :goto_5
    iget-object v0, p0, Lcu;->a:Lfc;

    invoke-virtual {v0}, Lfc;->OooO0Oo()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcu;->a:Lfc;

    invoke-virtual {v0, v2}, Lfc;->OooO(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcu;->OooO(Ldd;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object p0, p0, Lcu;->a:Lfc;

    invoke-virtual {p0}, Lfc;->OooO0oo()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcu;->OooO(Ldd;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_6

    :cond_7
    add-int/2addr v4, p1

    :cond_8
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final OoooO00(I)I
    .locals 0

    iget-object p0, p0, Lek;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private static OoooO0O(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final OoooOO0(Ljava/lang/Object;)I
    .locals 9

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lek;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    invoke-direct {p0, v1}, Lek;->Oooo0oo(I)I

    move-result v3

    invoke-static {v3}, Lek;->OoooO(I)I

    move-result v4

    invoke-direct {p0, v1}, Lek;->Oooo0o(I)I

    move-result v5

    invoke-static {v3}, Lek;->o000oOoO(I)J

    move-result-wide v6

    sget-object v3, Lcw;->J:Lcw;

    iget v3, v3, Lcw;->Z:I

    if-lt v4, v3, :cond_0

    sget-object v3, Lcw;->W:Lcw;

    iget v3, v3, Lcw;->Z:I

    if-gt v4, v3, :cond_0

    iget-object v3, p0, Lek;->c:[I

    add-int/lit8 v8, v1, 0x2

    aget v3, v3, v8

    :cond_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh;

    invoke-direct {p0, v1}, Lek;->OooOOOo(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcn;->Oooo0O0(ILeh;Les;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->o0ooOoO(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->o0ooOOo(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o0000oo(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o0000O00(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->o0OO00O(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->o00o0O(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->Oooo00o(ILck;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->OooOOOo(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->OooO00o(ILjava/lang/Object;Les;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lck;

    if-eqz v4, :cond_1

    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->Oooo00o(ILck;)I

    move-result v3

    goto/16 :goto_2

    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcn;->Oooo0OO(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o00000o0(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o00000oO(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o00000oo(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooooOO(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->o00ooo(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->OooooOo(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o0000(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p1, v5, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o0000Ooo(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->OooOoo(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lff;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_3

    :pswitch_13
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->OooOOOo(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->OooOOo0(ILjava/util/List;Les;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->OooOo0o(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->Oooo0(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->Oooo0oo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->Oooo0o0(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->OooOoO(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->Oooo000(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->OoooO0(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->Oooo0o0(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->Oooo0oo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto :goto_1

    :pswitch_1d
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->OooOoo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto :goto_1

    :pswitch_1e
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->OooOOo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto :goto_1

    :pswitch_1f
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->OooO0Oo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto :goto_1

    :pswitch_20
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->Oooo0o0(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    goto :goto_1

    :pswitch_21
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Leu;->Oooo0oo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v5}, Lcn;->Oooo00O(I)I

    move-result v4

    invoke-static {v3}, Lcn;->o00Ooo(I)I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_3

    :pswitch_22
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OoooO00(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_23
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->Oooo0oO(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_24
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOooo(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_25
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOoo0(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_26
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOoO0(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_27
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OoooO(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_28
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOOOo(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_29
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->OooOOOo(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->OooO0OO(ILjava/util/List;Les;)I

    move-result v3

    goto :goto_2

    :pswitch_2a
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0O0(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_2b
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOo0O(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_2c
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOoo0(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_2d
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOooo(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_2e
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->Oooo00o(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_2f
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->o000oOoO(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_30
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->Oooo0OO(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_31
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOoo0(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_32
    invoke-static {p1, v6, v7}, Lek;->OooOOo(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOooo(ILjava/util/List;)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_33
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh;

    invoke-direct {p0, v1}, Lek;->OooOOOo(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcn;->Oooo0O0(ILeh;Les;)I

    move-result v3

    goto :goto_2

    :pswitch_34
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->o0ooOoO(IJ)I

    move-result v3

    goto :goto_2

    :pswitch_35
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->o0ooOOo(II)I

    move-result v3

    goto :goto_2

    :pswitch_36
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o0000oo(I)I

    move-result v3

    goto :goto_2

    :pswitch_37
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o0000O00(I)I

    move-result v3

    goto :goto_2

    :pswitch_38
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->o0OO00O(II)I

    move-result v3

    goto :goto_2

    :pswitch_39
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->o00o0O(II)I

    move-result v3

    goto :goto_2

    :pswitch_3a
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->Oooo00o(ILck;)I

    move-result v3

    goto :goto_2

    :pswitch_3b
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->OooOOOo(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->OooO00o(ILjava/lang/Object;Les;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3c
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lck;

    if-eqz v4, :cond_2

    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->Oooo00o(ILck;)I

    move-result v3

    goto/16 :goto_2

    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcn;->Oooo0OO(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3d
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o00000o0(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3e
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o00000oO(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3f
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o00000oo(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_40
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooooOO(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_41
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->o00ooo(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_42
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v6, v7}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->OooooOo(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_43
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o0000(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_44
    invoke-direct {p0, p1, v1}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcn;->o0000Ooo(I)I

    move-result v3

    goto/16 :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lek;->o:Lfh;

    invoke-static {p0, p1}, Lek;->OooO(Lfh;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v2, p0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final OoooOOO(I)I
    .locals 1

    iget v0, p0, Lek;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lek;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lek;->OooOoo0(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static o000oOoO(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-direct {p0, v2}, Lek;->Oooo0oo(I)I

    move-result v3

    invoke-static {v3}, Lek;->o000oOoO(I)J

    move-result-wide v4

    invoke-static {v3}, Lek;->OoooO(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, v2}, Lek;->OoooO00(I)I

    move-result v3

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v6, v3

    invoke-static {p1, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Leu;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Leu;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Leu;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Leu;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Leu;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Leu;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Leu;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOo0(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooOo0(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto :goto_3

    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto :goto_3

    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOo0O(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooOo0O(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lek;->Oooo0o0(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v4, v5}, Lfr;->OooOo(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooOo(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lek;->o:Lfh;

    invoke-virtual {v0, p1}, Lfh;->OooO0oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lek;->o:Lfh;

    invoke-virtual {v2, p2}, Lfh;->OooO0oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lek;->h:Z

    if-eqz p0, :cond_3

    invoke-static {p1}, Lej;->OooO(Ljava/lang/Object;)Lcu;

    move-result-object p0

    invoke-static {p2}, Lej;->OooO(Ljava/lang/Object;)Lcu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcu;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO0O0(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lek;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lek;->OoooO0(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lek;->OoooOO0(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final OooO0OO(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_0
    iget v2, v6, Lek;->l:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lek;->k:[I

    aget v11, v2, v10

    invoke-direct {v6, v11}, Lek;->Oooo0o(I)I

    move-result v12

    invoke-direct {v6, v11}, Lek;->Oooo0oo(I)I

    move-result v13

    iget-object v2, v6, Lek;->c:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-ne v4, v0, :cond_0

    move v15, v0

    move/from16 v16, v1

    goto :goto_1

    :cond_0
    if-eq v4, v8, :cond_1

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    int-to-long v1, v4

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_1
    move/from16 v16, v1

    move v15, v4

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lek;->OooOoO0(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    :cond_3
    :goto_2
    invoke-static {v13}, Lek;->OoooO(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-static {v13}, Lek;->o000oOoO(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lff;->OooO0Oo(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {v6, v11}, Lek;->OooOoo(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lff;->OooO0o0(Ljava/lang/Object;)Lea;

    move-result-object v0

    iget-object v0, v0, Lea;->c:Lfy;

    const/4 v0, 0x0

    throw v0

    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v11}, Lek;->OooOOOo(I)Les;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lek;->OooOoO(Ljava/lang/Object;ILes;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_7
    invoke-static {v13}, Lek;->o000oOoO(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {v6, v11}, Lek;->OooOOOo(I)Les;

    move-result-object v1

    move v2, v9

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Les;->OooO0OO(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return v9

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lek;->OooOoO0(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v11}, Lek;->OooOOOo(I)Les;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lek;->OooOoO(Ljava/lang/Object;ILes;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lek;->h:Z

    if-eqz v0, :cond_c

    invoke-static/range {p1 .. p1}, Lej;->OooO(Ljava/lang/Object;)Lcu;

    move-result-object v0

    invoke-virtual {v0}, Lcu;->OooOOOo()Z

    move-result v0

    if-nez v0, :cond_c

    return v9

    :cond_c
    return v3
.end method

.method public final OooO0Oo(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lek;->l:I

    :goto_0
    iget v1, p0, Lek;->m:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lek;->k:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lek;->Oooo0oo(I)I

    move-result v1

    invoke-static {v1}, Lek;->o000oOoO(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lff;->OooO(Ljava/lang/Object;)V

    invoke-static {p1, v1, v2, v3}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lek;->k:[I

    array-length v0, v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lek;->n:Ldv;

    iget-object v3, p0, Lek;->k:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Ldv;->OooO00o(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lek;->o:Lfh;

    invoke-virtual {v0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lek;->p:Lej;

    invoke-virtual {p0, p1}, Lej;->OooO0o(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final OooO0o(Ljava/lang/Object;Lgb;)V
    .locals 12

    iget-boolean v0, p0, Lek;->i:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lek;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lej;->OooO(Ljava/lang/Object;)Lcu;

    move-result-object v0

    invoke-virtual {v0}, Lcu;->OooO0oo()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcu;->OooOOOO()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lek;->c:[I

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    invoke-direct {p0, v5}, Lek;->Oooo0oo(I)I

    move-result v6

    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    :goto_2
    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v2}, Lej;->OooO00o(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_3

    invoke-static {p2, v2}, Lej;->OooO0o0(Lgb;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-static {v6}, Lek;->OoooO(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->OooO(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0o(IJ)V

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0oO(II)V

    goto/16 :goto_4

    :pswitch_3
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooOo00(IJ)V

    goto/16 :goto_4

    :pswitch_4
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooOOOo(II)V

    goto/16 :goto_4

    :pswitch_5
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooOOoo(II)V

    goto/16 :goto_4

    :pswitch_6
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0o0(II)V

    goto/16 :goto_4

    :pswitch_7
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    invoke-interface {p2, v7, v6}, Lgb;->OooOO0O(ILck;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->OooOO0(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lek;->OooOOoo(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OoooO0O(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooOOo(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0OO(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0Oo(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0O0(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooOOo0(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->Oooo0(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooOOOO(IF)V

    goto/16 :goto_4

    :pswitch_11
    invoke-direct {p0, p1, v7, v5}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooOoOO(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooOOO(ID)V

    goto/16 :goto_4

    :pswitch_12
    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Lek;->OooOo0(Lgb;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v5}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Leu;->OooOo00(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_4

    :pswitch_14
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OooOooO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_15
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OoooO0O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_16
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->Oooo0O0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_17
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OoooOOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_18
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OoooOOo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_19
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->Oooo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1a
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OoooOo0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1b
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OoooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1c
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->Oooo00O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1d
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->Oooo0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1e
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OooOoOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1f
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OooOo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_20
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OooOo0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_21
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Leu;->OooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_22
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OooOooO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_23
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OoooO0O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_24
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->Oooo0O0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_25
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OoooOOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_26
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OoooOOo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_27
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->Oooo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_28
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Leu;->OooOOoo(ILjava/util/List;Lgb;)V

    goto/16 :goto_4

    :pswitch_29
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v5}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Leu;->OooO(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_4

    :pswitch_2a
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Leu;->OooO0oo(ILjava/util/List;Lgb;)V

    goto/16 :goto_4

    :pswitch_2b
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OoooOo0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_2c
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OoooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_2d
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->Oooo00O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_2e
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->Oooo0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_2f
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OooOoOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_30
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OooOo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_31
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OooOo0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_32
    invoke-direct {p0, v5}, Lek;->Oooo0o(I)I

    move-result v7

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Leu;->OooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_33
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->OooO(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    :pswitch_34
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0o(IJ)V

    goto/16 :goto_4

    :pswitch_35
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0oO(II)V

    goto/16 :goto_4

    :pswitch_36
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooOo00(IJ)V

    goto/16 :goto_4

    :pswitch_37
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooOOOo(II)V

    goto/16 :goto_4

    :pswitch_38
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooOOoo(II)V

    goto/16 :goto_4

    :pswitch_39
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0o0(II)V

    goto/16 :goto_4

    :pswitch_3a
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    invoke-interface {p2, v7, v6}, Lgb;->OooOO0O(ILck;)V

    goto/16 :goto_4

    :pswitch_3b
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lek;->OooOOOo(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->OooOO0(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    :pswitch_3c
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lek;->OooOOoo(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_4

    :pswitch_3d
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOo0(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooOOo(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0OO(II)V

    goto :goto_4

    :pswitch_3f
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0Oo(IJ)V

    goto :goto_4

    :pswitch_40
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(II)V

    goto :goto_4

    :pswitch_41
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0O0(IJ)V

    goto :goto_4

    :pswitch_42
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooOOo0(IJ)V

    goto :goto_4

    :pswitch_43
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOo0O(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooOOOO(IF)V

    goto :goto_4

    :pswitch_44
    invoke-direct {p0, p1, v5}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lek;->o000oOoO(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooOo(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooOOO(ID)V

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_5
    :goto_5
    if-eqz v2, :cond_7

    invoke-static {p2, v2}, Lej;->OooO0o0(Lgb;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_6
    move-object v2, v1

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lek;->o:Lfh;

    invoke-static {p0, p1, p2}, Lek;->OooOo00(Lfh;Ljava/lang/Object;Lgb;)V

    return-void

    :cond_8
    invoke-direct {p0, p1, p2}, Lek;->Oooo000(Ljava/lang/Object;Lgb;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO0o0(Ljava/lang/Object;[BIILby;)V
    .locals 8

    iget-boolean v0, p0, Lek;->i:Z

    if-nez v0, :cond_0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lek;->OooOOO0(Ljava/lang/Object;[BIIILby;)I

    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lek;->Oooo00o(Ljava/lang/Object;[BIILby;)V

    return-void
.end method

.method public final OooO0oO(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lek;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lek;->Oooo0oo(I)I

    move-result v1

    invoke-static {v1}, Lek;->o000oOoO(I)J

    move-result-wide v2

    invoke-direct {p0, v0}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-static {v1}, Lek;->OoooO(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lek;->Oooo00O(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lek;->OooOooo(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lek;->Oooo00O(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lek;->OooOooo(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lek;->r:Lff;

    invoke-static {v1, p1, p2, v2, v3}, Leu;->OooOO0o(Lff;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lek;->n:Ldv;

    invoke-virtual {v1, p1, p2, v2, v3}, Ldv;->OooO0O0(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lek;->OooOo0O(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooOO0(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooOO0(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lek;->OooOo0O(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOo0(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooOO0o(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooOO0(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooOO0(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooOO0(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOo0O(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO0oo(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lek;->OooOo0o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lfr;->OooOo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooO0oO(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lek;->OooOooO(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lek;->o:Lfh;

    invoke-static {v0, p1, p2}, Leu;->OooOOO0(Lfh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lek;->p:Lej;

    invoke-static {p0, p1, p2}, Leu;->OooOO0O(Lej;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooOOO0(Ljava/lang/Object;[BIIILby;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move-object/from16 v10, p6

    sget-object v11, Lek;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v1, p3

    move/from16 v2, v16

    move v4, v2

    move v6, v4

    const/4 v3, -0x1

    const v7, 0xfffff

    :goto_0
    if-ge v1, v14, :cond_1d

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v13, v1

    if-gez v1, :cond_0

    invoke-static {v1, v13, v2, v10}, Leb;->OooO0o0(I[BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    move v5, v2

    move v2, v1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    ushr-int/lit8 v1, v5, 0x3

    and-int/lit8 v8, v5, 0x7

    const/4 v9, 0x3

    if-le v1, v3, :cond_1

    div-int/2addr v4, v9

    invoke-direct {v0, v1, v4}, Lek;->OooO0oo(II)I

    move-result v3

    goto :goto_2

    :cond_1
    invoke-direct {v0, v1}, Lek;->OoooOOO(I)I

    move-result v3

    :goto_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    iget-object v4, v0, Lek;->c:[I

    add-int/lit8 v19, v3, 0x1

    aget v4, v4, v19

    invoke-static {v4}, Lek;->OoooO(I)I

    move-result v9

    move/from16 v20, v1

    move/from16 v19, v2

    invoke-static {v4}, Lek;->o000oOoO(I)J

    move-result-wide v1

    move-wide/from16 v21, v1

    const/16 v1, 0x11

    if-gt v9, v1, :cond_e

    iget-object v1, v0, Lek;->c:[I

    add-int/lit8 v23, v3, 0x2

    aget v1, v1, v23

    ushr-int/lit8 v23, v1, 0x14

    const/4 v2, 0x1

    shl-int v23, v2, v23

    const v12, 0xfffff

    and-int/2addr v1, v12

    if-ne v1, v7, :cond_2

    move/from16 v17, v3

    move/from16 v26, v7

    :goto_3
    move v7, v6

    goto :goto_5

    :cond_2
    if-ne v7, v12, :cond_3

    move/from16 v17, v3

    goto :goto_4

    :cond_3
    move/from16 v17, v3

    int-to-long v2, v7

    invoke-virtual {v11, v15, v2, v3, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4
    int-to-long v2, v1

    invoke-virtual {v11, v15, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v26, v1

    goto :goto_3

    :goto_5
    const/4 v1, 0x5

    packed-switch v9, :pswitch_data_0

    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x3

    const/16 v17, -0x1

    if-ne v8, v1, :cond_d

    invoke-direct {v0, v9}, Lek;->OooOOOo(I)Les;

    move-result-object v1

    shl-int/lit8 v2, v20, 0x3

    or-int/lit8 v8, v2, 0x4

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-wide v13, v5

    move v5, v8

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Leb;->OooO0oo(Les;[BIIILby;)I

    move-result v1

    and-int v2, v7, v23

    if-nez v2, :cond_c

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v11, v15, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_0
    if-nez v8, :cond_4

    move/from16 v2, v19

    invoke-static {v13, v2, v10}, Leb;->OooOOo0([BILby;)I

    move-result v8

    iget-wide v1, v10, Lby;->b:J

    invoke-static {v1, v2}, Lcl;->OooO0O0(J)J

    move-result-wide v24

    move/from16 v9, v20

    move-wide/from16 v3, v21

    move-object v1, v11

    move-object/from16 v2, p1

    move/from16 v6, v17

    const/16 v17, -0x1

    move v12, v5

    move v9, v6

    move-wide/from16 v5, v24

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_a

    :cond_4
    move v12, v5

    move/from16 v9, v17

    const/16 v17, -0x1

    move/from16 v3, v19

    goto/16 :goto_e

    :pswitch_1
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/16 v17, -0x1

    if-nez v8, :cond_b

    invoke-static {v13, v2, v10}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    invoke-static {v2}, Lcl;->OooO00o(I)I

    move-result v2

    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_2
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/16 v17, -0x1

    if-nez v8, :cond_b

    invoke-static {v13, v2, v10}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    invoke-direct {v0, v9}, Lek;->Oooo0O0(I)Ldh;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5, v2}, Ldh;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_6

    :cond_5
    invoke-static/range {p1 .. p1}, Lek;->Oooo0OO(Ljava/lang/Object;)Lfi;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Lfi;->OooO0OO(ILjava/lang/Object;)V

    move v6, v7

    goto/16 :goto_c

    :cond_6
    :goto_6
    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_3
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-ne v8, v1, :cond_b

    invoke-static {v13, v2, v10}, Leb;->OooOoOO([BILby;)I

    move-result v1

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_4
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-ne v8, v1, :cond_b

    invoke-direct {v0, v9}, Lek;->OooOOOo(I)Les;

    move-result-object v1

    invoke-static {v1, v13, v2, v14, v10}, Leb;->OooO(Les;[BIILby;)I

    move-result v1

    and-int v2, v7, v23

    if-nez v2, :cond_7

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :cond_7
    invoke-virtual {v11, v15, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, v10, Lby;->c:Ljava/lang/Object;

    invoke-static {v2, v5}, Ldj;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_5
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-eq v8, v1, :cond_8

    goto/16 :goto_9

    :cond_8
    const/high16 v1, 0x20000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_9

    invoke-static {v13, v2, v10}, Leb;->OooOoO0([BILby;)I

    move-result v1

    goto :goto_7

    :cond_9
    invoke-static {v13, v2, v10}, Leb;->OooOo0([BILby;)I

    move-result v1

    :goto_7
    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    invoke-virtual {v11, v15, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_6
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_b

    invoke-static {v13, v2, v10}, Leb;->OooOOo0([BILby;)I

    move-result v1

    iget-wide v2, v10, Lby;->b:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    move/from16 v2, v16

    :goto_8
    invoke-static {v15, v5, v6, v2}, Lfr;->OooOO0o(Ljava/lang/Object;JZ)V

    goto/16 :goto_b

    :pswitch_7
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-ne v8, v1, :cond_b

    invoke-static {v13, v2}, Leb;->OooOO0([BI)I

    move-result v1

    invoke-virtual {v11, v15, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v2, 0x4

    goto/16 :goto_b

    :pswitch_8
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    if-ne v8, v1, :cond_b

    invoke-static {v13, v2}, Leb;->OooOOoo([BI)J

    move-result-wide v18

    move-object v1, v11

    move v8, v2

    move-object/from16 v2, p1

    move-wide v3, v5

    move-wide/from16 v5, v18

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v8, 0x8

    goto/16 :goto_b

    :cond_b
    :goto_9
    move v3, v2

    goto/16 :goto_e

    :pswitch_9
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_d

    invoke-static {v13, v3, v10}, Leb;->OooOO0O([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    invoke-virtual {v11, v15, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_a
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_d

    invoke-static {v13, v3, v10}, Leb;->OooOOo0([BILby;)I

    move-result v8

    iget-wide v3, v10, Lby;->b:J

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide/from16 v18, v3

    move-wide v3, v5

    move-wide/from16 v5, v18

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_a
    or-int v6, v7, v23

    move v1, v8

    goto :goto_c

    :pswitch_b
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-ne v8, v1, :cond_d

    invoke-static {v13, v3}, Leb;->OooOo([BI)F

    move-result v1

    invoke-static {v15, v5, v6, v1}, Lfr;->OooO0oo(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v3, 0x4

    goto :goto_b

    :pswitch_c
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    if-ne v8, v1, :cond_d

    invoke-static {v13, v3}, Leb;->OooOo00([BI)D

    move-result-wide v1

    invoke-static {v15, v5, v6, v1, v2}, Lfr;->OooO0oO(Ljava/lang/Object;JD)V

    add-int/lit8 v1, v3, 0x8

    :goto_b
    or-int v6, v7, v23

    :goto_c
    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v11, v15, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v10, Lby;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Ldj;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v15, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d
    or-int v6, v7, v23

    move-object/from16 v13, p2

    move/from16 v14, p4

    goto :goto_c

    :cond_d
    :goto_e
    move-object v8, v0

    move/from16 v22, v7

    move v10, v9

    move-object v9, v11

    move-object v0, v15

    move/from16 v21, v20

    move/from16 v11, p5

    goto/16 :goto_12

    :cond_e
    move v12, v5

    move v2, v9

    move/from16 v5, v20

    move-wide/from16 v13, v21

    const/16 v17, -0x1

    move v9, v3

    move/from16 v3, v19

    const/16 v1, 0x1b

    if-eq v2, v1, :cond_13

    const/16 v1, 0x31

    if-gt v2, v1, :cond_10

    move-object/from16 v18, v11

    int-to-long v10, v4

    move-object/from16 v1, p0

    move/from16 v19, v2

    move-object/from16 v2, p1

    move v4, v3

    move-object/from16 v3, p2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v5, p4

    move/from16 v22, v6

    move v6, v12

    move/from16 v26, v7

    move/from16 v7, v21

    move/from16 p3, v9

    move-object/from16 v0, v18

    move/from16 v18, v12

    move/from16 v12, v19

    move-object/from16 v23, v0

    move-object v0, v15

    move-object/from16 v15, p6

    invoke-direct/range {v1 .. v15}, Lek;->OooOO0O(Ljava/lang/Object;[BIIIIIIJIJLby;)I

    move-result v1

    move/from16 v15, v20

    if-eq v1, v15, :cond_f

    :goto_f
    move-object/from16 v13, p2

    move/from16 v4, p3

    move/from16 v14, p4

    move/from16 v12, p5

    move-object/from16 v10, p6

    move-object v15, v0

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v6, v22

    move-object/from16 v11, v23

    move/from16 v7, v26

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v8, p0

    move/from16 v10, p3

    move/from16 v11, p5

    move v3, v1

    move/from16 v12, v18

    move-object/from16 v9, v23

    goto/16 :goto_12

    :cond_10
    move/from16 v19, v2

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move/from16 p3, v9

    move-object/from16 v23, v11

    move/from16 v18, v12

    move-object v0, v15

    move v15, v3

    const/16 v1, 0x32

    move/from16 v10, v19

    if-eq v10, v1, :cond_11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v9, v4

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, v18

    move/from16 v7, v21

    move-wide v11, v13

    move/from16 v13, p3

    move-object/from16 v14, p6

    invoke-direct/range {v1 .. v14}, Lek;->OooOO0(Ljava/lang/Object;[BIIIIIIIJILby;)I

    move-result v1

    if-eq v1, v15, :cond_f

    goto :goto_f

    :cond_11
    const/4 v1, 0x2

    if-eq v8, v1, :cond_12

    goto/16 :goto_11

    :cond_12
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, p3

    move-wide v7, v13

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lek;->OooOO0o(Ljava/lang/Object;[BIIIJLby;)I

    move-result v1

    if-eq v1, v15, :cond_f

    goto :goto_f

    :cond_13
    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move/from16 p3, v9

    move-object/from16 v23, v11

    move/from16 v18, v12

    move-object v0, v15

    const/4 v1, 0x2

    move v15, v3

    if-ne v8, v1, :cond_16

    move-object/from16 v1, v23

    invoke-virtual {v1, v0, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldi;

    invoke-interface {v2}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_14

    add-int/2addr v3, v3

    goto :goto_10

    :cond_14
    const/16 v3, 0xa

    :goto_10
    invoke-interface {v2, v3}, Ldi;->a(I)Ldi;

    move-result-object v2

    invoke-virtual {v1, v0, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_15
    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object v9, v1

    move-object v6, v2

    invoke-direct {v8, v10}, Lek;->OooOOOo(I)Les;

    move-result-object v1

    move/from16 v2, v18

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Leb;->OooO0oO(Les;I[BIILdi;Lby;)I

    move-result v1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move-object v15, v0

    move-object v0, v8

    move-object v11, v9

    move v4, v10

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v7, v26

    move-object/from16 v10, p6

    goto/16 :goto_0

    :cond_16
    :goto_11
    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v9, v23

    move/from16 v11, p5

    move v3, v15

    move/from16 v12, v18

    goto :goto_12

    :cond_17
    move-object v8, v0

    move/from16 v21, v1

    move/from16 v17, v4

    move/from16 v22, v6

    move/from16 v26, v7

    move-object v9, v11

    move-object v0, v15

    move v15, v2

    move/from16 v11, p5

    move v12, v5

    move v3, v15

    move/from16 v10, v16

    :goto_12
    if-eq v12, v11, :cond_18

    goto :goto_13

    :cond_18
    if-eqz v11, :cond_19

    move v1, v3

    move v2, v12

    move/from16 v6, v22

    move/from16 v7, v26

    goto/16 :goto_16

    :cond_19
    :goto_13
    iget-boolean v1, v8, Lek;->h:Z

    if-nez v1, :cond_1b

    move-object/from16 v13, p6

    :cond_1a
    move/from16 v14, v21

    goto :goto_14

    :cond_1b
    move-object/from16 v13, p6

    iget-object v1, v13, Lby;->d:Lcs;

    invoke-static {}, Lcs;->OooO0O0()Lcs;

    move-result-object v2

    if-eq v1, v2, :cond_1a

    iget-object v1, v8, Lek;->g:Leh;

    iget-object v2, v13, Lby;->d:Lcs;

    move/from16 v14, v21

    invoke-virtual {v2, v1, v14}, Lcs;->OooO00o(Leh;I)Lcq;

    move-result-object v6

    if-nez v6, :cond_1c

    invoke-static/range {p1 .. p1}, Lek;->Oooo0OO(Ljava/lang/Object;)Lfi;

    move-result-object v5

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Leb;->OooO0Oo(I[BIILfi;Lby;)I

    move-result v1

    goto :goto_15

    :cond_1c
    move-object v5, v0

    check-cast v5, Ldc;

    invoke-virtual {v5}, Ldc;->OooOo00()Lcu;

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Leb;->OooO0O0(I[BIILdc;Lcq;Lby;)I

    move-result v1

    goto :goto_15

    :goto_14
    invoke-static/range {p1 .. p1}, Lek;->Oooo0OO(Ljava/lang/Object;)Lfi;

    move-result-object v5

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Leb;->OooO0Oo(I[BIILfi;Lby;)I

    move-result v1

    :goto_15
    move-object v15, v0

    move-object v0, v8

    move v4, v10

    move v2, v12

    move-object v10, v13

    move v3, v14

    move/from16 v6, v22

    move/from16 v7, v26

    move-object/from16 v13, p2

    move/from16 v14, p4

    move v12, v11

    move-object v11, v9

    goto/16 :goto_0

    :cond_1d
    move-object v8, v0

    move/from16 v22, v6

    move/from16 v26, v7

    move-object v9, v11

    move v11, v12

    move-object v0, v15

    :goto_16
    const v3, 0xfffff

    if-ne v7, v3, :cond_1e

    goto :goto_17

    :cond_1e
    int-to-long v3, v7

    invoke-virtual {v9, v0, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_17
    iget v3, v8, Lek;->l:I

    const/4 v4, 0x0

    :goto_18
    iget v5, v8, Lek;->m:I

    if-ge v3, v5, :cond_23

    iget-object v5, v8, Lek;->k:[I

    aget v5, v5, v3

    invoke-direct {v8, v5}, Lek;->Oooo0o(I)I

    move-result v6

    invoke-direct {v8, v5}, Lek;->Oooo0oo(I)I

    move-result v7

    invoke-static {v7}, Lek;->o000oOoO(I)J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1f

    goto :goto_1b

    :cond_1f
    invoke-direct {v8, v5}, Lek;->Oooo0O0(I)Ldh;

    move-result-object v9

    if-eqz v9, :cond_22

    invoke-static {v7}, Lff;->OooO0oO(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {v8, v5}, Lek;->OooOoo(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lff;->OooO0o0(Ljava/lang/Object;)Lea;

    move-result-object v5

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, v12}, Ldh;->a(I)Z

    move-result v12

    if-nez v12, :cond_20

    if-eqz v4, :cond_21

    goto :goto_1a

    :cond_21
    invoke-static {}, Lfh;->OooO00o()Ljava/lang/Object;

    move-result-object v4

    :goto_1a
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5, v12, v13}, Leb;->OooO0o(Lea;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Lck;->OooOOOO(I)Lcg;

    move-result-object v12

    iget-object v13, v12, Lcg;->a:Lcn;

    :try_start_0
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v13, v5, v14, v10}, Leb;->OooOOO0(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v12}, Lcg;->OooO00o()Lck;

    move-result-object v10

    invoke-static {v4, v6, v10}, Lfh;->OooO0Oo(Ljava/lang/Object;ILck;)V

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_22
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    :cond_23
    if-eqz v4, :cond_24

    iget-object v3, v8, Lek;->o:Lfh;

    invoke-virtual {v3, v0, v4}, Lfh;->OooO0oO(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    if-eqz v11, :cond_26

    move/from16 v0, p4

    if-gt v1, v0, :cond_25

    if-ne v2, v11, :cond_25

    goto :goto_1c

    :cond_25
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object v0

    throw v0

    :cond_26
    move/from16 v0, p4

    if-ne v1, v0, :cond_27

    :goto_1c
    return v1

    :cond_27
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lek;->Oooo0oo(I)I

    move-result v3

    invoke-direct {p0, v1}, Lek;->Oooo0o(I)I

    move-result v4

    invoke-static {v3}, Lek;->o000oOoO(I)J

    move-result-wide v5

    invoke-static {v3}, Lek;->OoooO(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->OoooO0O(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldj;->OooO0OO(Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo0oO(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->Oooo0(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lek;->OooOo(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lek;->OooOoOO(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_1c
    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOo0(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldj;->OooO0OO(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOOOO(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOo0O(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lfr;->OooOo(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO0O0(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lek;->o:Lfh;

    invoke-virtual {v0, p1}, Lfh;->OooO0oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean p0, p0, Lek;->h:Z

    if-eqz p0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1}, Lej;->OooO(Ljava/lang/Object;)Lcu;

    move-result-object p0

    invoke-virtual {p0}, Lcu;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lek;->g:Leh;

    invoke-static {p0}, Lfs;->OooO00o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
