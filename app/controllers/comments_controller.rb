class CommentsController < ApplicationController
    before_action :authenticate_user!
    def new
      @comment = Comment.new
    end

    def create
      @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.build(comment_params)
    @comment.user = current_user # Asocia el comentario al usuario actualmente autenticado

      if @comment.save
        redirect_to request.fullpath, notice: 'Comentario creado correctamente.'
      else
        redirect_to request.fullpath, alert: 'No se pudo crear el comentario.'
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  
    def commentable_path
      # Lógica para redirigir a la página de detalle de Photo o User, dependiendo del tipo de comentario
    end
  
    def find_commentable
      if params[:commentable_type] == 'Photo'
        Photo.find(params[:commentable_id])
      elsif params[:commentable_type] == 'User'
        User.find(params[:commentable_id])
      end
    end
  end