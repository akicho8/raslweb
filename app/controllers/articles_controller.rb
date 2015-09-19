# -*- coding: utf-8 -*-

class ArticlesController < ApplicationController
  before_action :load_object
  before_action :code_run, :only => [:show, :new, :edit]
  before_action :create_or_update, :only => [:create, :update]

  def index
    @articles = Article.page(params[:page]).per(params[:per] || 50)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
    @article.destroy!
    redirect_to :articles
  end

  private

  def load_object
    if params[:id]
      @article = Article.find_by!(:unique_key => params[:id])
    else
      @article = Article.new
      if template = TemplateList.first
        @article.body = template[:body]
      end
      @article.body ||= <<-EOT
MAIN    START
        ; LEA     GR1, 1
        RET
        END
EOT
    end
    @article.assign_attributes(article_params || {})
  end

  def create_or_update
    if @article.save
      redirect_to @article
    else
      render :edit
    end
  end

  def article_params
    if params.has_key?(:article)
      params.require(:article).permit(:body)
    end
  end

  def code_run
    begin
      if @article.body.present?
        @processor = @article.processor
        @disasm = @processor.disassemble
        @stream = capture(:stdout) { @processor.go }
        @memory_dump = capture(:stdout) { @processor.send(:mem_dump, @processor.memory, :columns => 16, :range => 0...128) }
      end
    rescue Rasl::RaslError => @error
    end
    render :edit
  end
end
