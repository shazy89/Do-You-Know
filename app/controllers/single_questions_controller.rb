class SingleQuestionsController < ApplicationController
  before_action :set_single_question, only: [:show, :update, :destroy]

  # GET /single_questions
  def index
    @single_questions = SingleQuestion.all

    render json: @single_questions
  end

  # GET /single_questions/1
  def show
    render json: @single_question
  end

  # POST /single_questions
  def create
    @single_question = SingleQuestion.new(single_question_params)

    if @single_question.save
      render json: @single_question, status: :created, location: @single_question
    else
      render json: @single_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /single_questions/1
  def update
    if @single_question.update(single_question_params)
      render json: @single_question
    else
      render json: @single_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /single_questions/1
  def destroy
    @single_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single_question
      @single_question = SingleQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def single_question_params
      params.require(:single_question).permit(:question, :status, :correctAnswer, :link, :info, :questionType)
    end
end
