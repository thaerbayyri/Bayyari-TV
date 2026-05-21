.class public final Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;
.super Ljava/lang/Object;
.source "TvContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/TvContractCompat$Programs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres$Genre;
    }
.end annotation


# static fields
.field public static final ANIMAL_WILDLIFE:Ljava/lang/String; = "ANIMAL_WILDLIFE"

.field public static final ARTS:Ljava/lang/String; = "ARTS"

.field private static final CANONICAL_GENRES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMEDY:Ljava/lang/String; = "COMEDY"

.field private static final COMMA:C = ','

.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final DOUBLE_QUOTE:C = '\"'

.field public static final DRAMA:Ljava/lang/String; = "DRAMA"

.field public static final EDUCATION:Ljava/lang/String; = "EDUCATION"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ENTERTAINMENT:Ljava/lang/String; = "ENTERTAINMENT"

.field public static final FAMILY_KIDS:Ljava/lang/String; = "FAMILY_KIDS"

.field public static final GAMING:Ljava/lang/String; = "GAMING"

.field public static final LIFE_STYLE:Ljava/lang/String; = "LIFE_STYLE"

.field public static final MOVIES:Ljava/lang/String; = "MOVIES"

.field public static final MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final NEWS:Ljava/lang/String; = "NEWS"

.field public static final PREMIER:Ljava/lang/String; = "PREMIER"

.field public static final SHOPPING:Ljava/lang/String; = "SHOPPING"

.field public static final SPORTS:Ljava/lang/String; = "SPORTS"

.field public static final TECH_SCIENCE:Ljava/lang/String; = "TECH_SCIENCE"

.field public static final TRAVEL:Ljava/lang/String; = "TRAVEL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2551
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    .line 2553
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "FAMILY_KIDS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2554
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "SPORTS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2555
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "SHOPPING"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2556
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "MOVIES"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2557
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "COMEDY"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2558
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "TRAVEL"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2559
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "DRAMA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2560
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "EDUCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2561
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "ANIMAL_WILDLIFE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2562
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "NEWS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2563
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "GAMING"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2564
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "ARTS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2565
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "ENTERTAINMENT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2566
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "LIFE_STYLE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2567
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "MUSIC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2568
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "PREMIER"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2569
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    const-string v1, "TECH_SCIENCE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2576
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "genres"    # Ljava/lang/String;

    .line 2627
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2629
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2631
    :cond_0
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2632
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2634
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2635
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2636
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2637
    .local v2, "length":I
    const/4 v3, 0x0

    .line 2638
    .local v3, "escape":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 2639
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2640
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 2648
    :sswitch_0
    if-nez v3, :cond_3

    .line 2649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2650
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 2651
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2653
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2654
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .local v7, "sb":Ljava/lang/StringBuilder;
    move-object v0, v7

    goto :goto_2

    .line 2642
    .end local v6    # "string":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :sswitch_1
    if-nez v3, :cond_3

    .line 2643
    const/4 v3, 0x1

    .line 2644
    goto :goto_2

    .line 2658
    :cond_3
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2659
    const/4 v3, 0x0

    .line 2638
    .end local v5    # "c":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2661
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2662
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 2663
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2665
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static varargs encode([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "genres"    # [Ljava/lang/String;

    .line 2588
    if-nez p0, :cond_0

    .line 2590
    const/4 v0, 0x0

    return-object v0

    .line 2592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2593
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 2594
    .local v1, "separator":Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 2595
    .local v4, "genre":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->encodeToCsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    const-string v1, ","

    .line 2594
    .end local v4    # "genre":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2598
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static encodeToCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "genre"    # Ljava/lang/String;

    .line 2602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2603
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2604
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2605
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2606
    .local v3, "c":C
    const/16 v4, 0x22

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 2611
    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2608
    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2609
    nop

    .line 2614
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2604
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2616
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static isCanonical(Ljava/lang/String;)Z
    .locals 1
    .param p0, "genre"    # Ljava/lang/String;

    .line 2675
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;->CANONICAL_GENRES:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
