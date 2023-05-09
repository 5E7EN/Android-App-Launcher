.class public abstract Lneedle/UiRelatedProgressTask;
.super Lneedle/UiRelatedTask;
.source "UiRelatedProgressTask.java"

# interfaces
.implements Lneedle/CancelableRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        ">",
        "Lneedle/UiRelatedTask",
        "<TResult;>;",
        "Lneedle/CancelableRunnable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lneedle/UiRelatedProgressTask;, "Lneedle/UiRelatedProgressTask<TResult;TProgress;>;"
    invoke-direct {p0}, Lneedle/UiRelatedTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onProgressUpdate(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)V"
        }
    .end annotation
.end method

.method protected publishProgress(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lneedle/UiRelatedProgressTask;, "Lneedle/UiRelatedProgressTask<TResult;TProgress;>;"
    .local p1, "progress":Ljava/lang/Object;, "TProgress;"
    invoke-virtual {p0}, Lneedle/UiRelatedProgressTask;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lneedle/UiRelatedProgressTask;->sUiHandler:Landroid/os/Handler;

    new-instance v1, Lneedle/UiRelatedProgressTask$1;

    invoke-direct {v1, p0, p1}, Lneedle/UiRelatedProgressTask$1;-><init>(Lneedle/UiRelatedProgressTask;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_0
    return-void
.end method
