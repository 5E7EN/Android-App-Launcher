.class public abstract Lneedle/CancelableTask;
.super Lneedle/AbstractCancelableRunnable;
.source "CancelableTask.java"

# interfaces
.implements Lneedle/CancelableRunnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lneedle/AbstractCancelableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0}, Lneedle/AbstractCancelableRunnable;->cancel()V

    return-void
.end method

.method protected abstract doWork()V
.end method

.method public bridge synthetic isCanceled()Z
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lneedle/AbstractCancelableRunnable;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lneedle/CancelableTask;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lneedle/CancelableTask;->doWork()V

    .line 16
    :cond_0
    return-void
.end method
