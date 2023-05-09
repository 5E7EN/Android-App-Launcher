.class public Lneedle/Needle;
.super Ljava/lang/Object;
.source "Needle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lneedle/Needle$1;,
        Lneedle/Needle$ExecutorId;,
        Lneedle/Needle$ExecutorObtainer;
    }
.end annotation


# static fields
.field public static final DEFAULT_POOL_SIZE:I = 0x3

.field public static final DEFAULT_TASK_TYPE:Ljava/lang/String; = "default"

.field private static sMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lneedle/MainThreadExecutor;

    invoke-direct {v0}, Lneedle/MainThreadExecutor;-><init>()V

    sput-object v0, Lneedle/Needle;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static onBackgroundThread()Lneedle/BackgroundThreadExecutor;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lneedle/Needle$ExecutorObtainer;

    invoke-direct {v0}, Lneedle/Needle$ExecutorObtainer;-><init>()V

    return-object v0
.end method

.method public static onMainThread()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lneedle/Needle;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
