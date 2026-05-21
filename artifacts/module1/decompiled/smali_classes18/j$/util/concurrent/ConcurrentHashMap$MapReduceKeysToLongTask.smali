.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysToLongTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:J

.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/LongBinaryOperator;

.field result:J

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongFunction<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # J
    .param p10, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToLongFunction<",
            "-TK;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 5963
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    .line 5964
    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    .line 5965
    iput-wide p8, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->basis:J

    iput-object p10, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    .line 5966
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 12

    .line 5971
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    if-eqz v0, :cond_3

    iget-object v11, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    move-object v0, v11

    .local v11, "reducer":Ljava/util/function/LongBinaryOperator;
    if-eqz v0, :cond_3

    .line 5973
    iget-wide v9, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->basis:J

    .line 5974
    .local v9, "r":J
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->batch:I

    if-lez v1, :cond_0

    iget v5, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_0

    .line 5976
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->addToPendingCount(I)V

    .line 5977
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    iget v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->batch:I

    iput v4, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    .line 5979
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5981
    .end local v0    # "i":I
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 5982
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v8, v0}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-interface {v11, v9, v10, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v9

    goto :goto_1

    .line 5983
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    iput-wide v9, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    .line 5985
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v0, :cond_3

    .line 5988
    move-object v1, v0

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    .line 5989
    .local v1, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    .line 5990
    .local v2, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_2

    .line 5991
    iget-wide v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    iget-wide v5, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    invoke-interface {v11, v3, v4, v5, v6}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    .line 5992
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    iput-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    move-object v2, v3

    goto :goto_3

    .line 5985
    .end local v1    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    .end local v2    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_2

    .line 5996
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v9    # "r":J
    .end local v11    # "reducer":Ljava/util/function/LongBinaryOperator;
    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Long;
    .locals 2

    .line 5967
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    iget-wide v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 5949
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
