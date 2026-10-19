# The "Ask CoffeeBean AI" study assistant page: a chat with the AI chosen on Admin › AI provider (AiProvider).
# Anyone can see the page; signed-in learners can chat, and their chats are saved in the sidebar.
# Answers are streamed by AskMessagesController.
class AskController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_chat, only: %i[update destroy]

  # Popular questions on the right of the Ask AI page. Clicking one sends it straight away.
  TOPICS = [
    "How long does it take to learn AI?",
    "What is the difference between AI, Machine Learning, and Deep Learning?",
    "What are the types of AI?",
    "How can AI help doctors?",
    "What is RAG?",
    "What is a vector database?",
    "How can AI help software testers?",
    "How do I build an AI agent?",
    "How can AI help lawyers?",
    "What is an LLM and how does it work?",
    "How do I make AI images?",
    "How can AI help digital marketers?",
    "How can AI help HR managers?"
  ].freeze

  def index
    if user_signed_in?
      @chats = current_user.study_chats.recent.limit(50)
      @chat = current_user.study_chats.find(params[:id]) if params[:id]
    end
    @messages = @chat ? @chat.messages.to_a : []
    @guest_left = [AskMessagesController::GUEST_QUESTIONS - session[:ask_guest_questions].to_i, 0].max unless user_signed_in?
  end

  def update
    @chat.update!(title: StudyChat.title_from(params[:title]))
    render json: { id: @chat.id, title: @chat.title }
  end

  def destroy
    @chat.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.html { redirect_to ask_path }
    end
  end

  private

  def set_chat
    @chat = current_user.study_chats.find(params[:id])
  end
end
