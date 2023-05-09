.class Lneedle/Needle$ExecutorObtainer;
.super Ljava/lang/Object;
.source "Needle.java"

# interfaces
.implements Lneedle/BackgroundThreadExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lneedle/Needle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExecutorObtainer"
.end annotation


# static fields
.field private static sCachedExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lneedle/Needle$ExecutorId;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDesiredTaskType:Ljava/lang/String;

.field private mDesiredThreadPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lneedle/Needle$ExecutorObtainer;->sCachedExecutors:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredThreadPoolSize:I

    .line 45
    const-string v0, "default"

    iput-object v0, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredTaskType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    invoke-virtual {p0}, Lneedle/Needle$ExecutorObtainer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method getExecutor()Ljava/util/concurrent/Executor;
    .locals 5

    .prologue
    .line 77
    new-instance v1, Lneedle/Needle$ExecutorId;

    iget v2, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredThreadPoolSize:I

    iget-object v3, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredTaskType:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lneedle/Needle$ExecutorId;-><init>(ILjava/lang/String;Lneedle/Needle$1;)V

    .line 78
    .local v1, "executorId":Lneedle/Needle$ExecutorId;
    const-class v3, Lneedle/Needle$ExecutorObtainer;

    monitor-enter v3

    .line 79
    :try_start_0
    sget-object v2, Lneedle/Needle$ExecutorObtainer;->sCachedExecutors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 80
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 81
    iget v2, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredThreadPoolSize:I

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 82
    sget-object v2, Lneedle/Needle$ExecutorObtainer;->sCachedExecutors:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    monitor-exit v3

    return-object v0

    .line 85
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public serially()Lneedle/BackgroundThreadExecutor;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lneedle/Needle$ExecutorObtainer;->withThreadPoolSize(I)Lneedle/BackgroundThreadExecutor;

    .line 50
    return-object p0
.end method

.method public withTaskType(Ljava/lang/String;)Lneedle/BackgroundThreadExecutor;
    .locals 2
    .param p1, "taskType"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Task type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredTaskType:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public withThreadPoolSize(I)Lneedle/BackgroundThreadExecutor;
    .locals 2
    .param p1, "poolSize"    # I

    .prologue
    .line 64
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Thread pool size cannot be less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput p1, p0, Lneedle/Needle$ExecutorObtainer;->mDesiredThreadPoolSize:I

    .line 68
    return-object p0
.end method
