class CommentsController < ApplicationController
  def create
    @tasks = Task.find(params[:task_id])
    @comment = @tasks.comments.create(comment_params)
    redirect_to tasks_path(@tasks)

  end
  def destroy
    @tasks = Task.find(params[:task_id])
    @comment = @tasks.comments.find(params[:id])
    @comment.destroy
    redirect_to tasks_path(@tasks)
  end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
