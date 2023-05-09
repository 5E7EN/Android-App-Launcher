.class public abstract Lneedle/UiRelatedTask;
.super Lneedle/AbstractCancelableRunnable;
.source "UiRelatedTask.java"

# interfaces
.implements Lneedle/CancelableRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lneedle/AbstractCancelableRunnable;",
        "Lneedle/CancelableRunnable;"
    }
.end annotation


# static fields
.field protected static sUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lneedle/UiRelatedTask;->sUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lneedle/UiRelatedTask;, "Lneedle/UiRelatedTask<TResult;>;"
    invoke-direct {p0}, Lneedle/AbstractCancelableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lneedle/UiRelatedTask;, "Lneedle/UiRelatedTask<TResult;>;"
    invoke-super {p0}, Lneedle/AbstractCancelableRunnable;->cancel()V

    return-void
.end method

.method protected abstract doWork()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public bridge synthetic isCanceled()Z
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lneedle/UiRelatedTask;, "Lneedle/UiRelatedTask<TResult;>;"
    invoke-super {p0}, Lneedle/AbstractCancelableRunnable;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 18
    .local p0, "this":Lneedle/UiRelatedTask;, "Lneedle/UiRelatedTask<TResult;>;"
    invoke-virtual {p0}, Lneedle/UiRelatedTask;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 20
    invoke-virtual {p0}, Lneedle/UiRelatedTask;->doWork()Ljava/lang/Object;

    move-result-object v0

    .line 21
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lneedle/UiRelatedTask;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    sget-object v1, Lneedle/UiRelatedTask;->sUiHandler:Landroid/os/Handler;

    new-instance v2, Lneedle/UiRelatedTask$1;

    invoke-direct {v2, p0, v0}, Lneedle/UiRelatedTask$1;-><init>(Lneedle/UiRelatedTask;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    :cond_0
    return-void
.end method

.method protected abstract thenDoUiRelatedWork(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method
