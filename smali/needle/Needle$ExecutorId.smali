.class Lneedle/Needle$ExecutorId;
.super Ljava/lang/Object;
.source "Needle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lneedle/Needle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutorId"
.end annotation


# instance fields
.field private final mTaskType:Ljava/lang/String;

.field private final mThreadPoolSize:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "threadPoolSize"    # I
    .param p2, "taskType"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lneedle/Needle$ExecutorId;->mThreadPoolSize:I

    .line 95
    iput-object p2, p0, Lneedle/Needle$ExecutorId;->mTaskType:Ljava/lang/String;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lneedle/Needle$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lneedle/Needle$1;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lneedle/Needle$ExecutorId;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 102
    check-cast v0, Lneedle/Needle$ExecutorId;

    .line 103
    .local v0, "executorId":Lneedle/Needle$ExecutorId;
    iget v3, p0, Lneedle/Needle$ExecutorId;->mThreadPoolSize:I

    iget v4, v0, Lneedle/Needle$ExecutorId;->mThreadPoolSize:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 104
    :cond_4
    iget-object v3, p0, Lneedle/Needle$ExecutorId;->mTaskType:Ljava/lang/String;

    iget-object v4, v0, Lneedle/Needle$ExecutorId;->mTaskType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lneedle/Needle$ExecutorId;->mThreadPoolSize:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lneedle/Needle$ExecutorId;->mTaskType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
