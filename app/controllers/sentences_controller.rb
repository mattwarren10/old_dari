class SentencesController < ApplicationController
  def new
    @sentence = Sentence.new()
  end

  def create
    @sentence = Sentence.new(sentence_params)
    if @sentence.save
      flash[:notice] = "Sentence created successfully."
      redirect_to(word_path(@word))
    else
      @sentence_count = Sentence.count + 1
      render new
    end
  end

  def update
    if @sentence.update_attributes(sentence_params)
      flash[:notice] = "Word updated successfully."
      redirect_to(word_path(@word))
    else
      @sentence_count = Sentence.count
      render :edit
    end
  end

  def edit
    @sentence_count = find_sentences
  end

  def delete
    @sentence = find_sentences
  end

  def destroy
    @sentence.destroy
    flash[:notice] "Sentence '#{@sentence.english_sentence}' destroyed successfully."
  end

  def index
    @sentences = Sentence.all
  end

  def show
  end

  private
  def find_sentences
    @sentence = Sentence.find(params[:id])
  end

  def word_params
    params.require(:sentence).permit(
                                     :english_sentence,
                                     :transliteration_sentence,
                                     :translation_sentence,
                                     :pronunciation_sentence)
  end
end
