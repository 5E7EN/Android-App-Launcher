.class Lneedle/UiRelatedTask$1;
.super Ljava/lang/Object;
.source "UiRelatedTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lneedle/UiRelatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lneedle/UiRelatedTask;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lneedle/UiRelatedTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Lneedle/UiRelatedTask$1;, "Lneedle/UiRelatedTask.1;"
    iput-object p1, p0, Lneedle/UiRelatedTask$1;->this$0:Lneedle/UiRelatedTask;

    iput-object p2, p0, Lneedle/UiRelatedTask$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    .local p0, "this":Lneedle/UiRelatedTask$1;, "Lneedle/UiRelatedTask.1;"
    iget-object v0, p0, Lneedle/UiRelatedTask$1;->this$0:Lneedle/UiRelatedTask;

    invoke-virtual {v0}, Lneedle/UiRelatedTask;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lneedle/UiRelatedTask$1;->this$0:Lneedle/UiRelatedTask;

    iget-object v1, p0, Lneedle/UiRelatedTask$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lneedle/UiRelatedTask;->thenDoUiRelatedWork(Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method
