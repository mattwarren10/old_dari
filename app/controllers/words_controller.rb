class WordsController < ApplicationController
  helper FormatWordToSnakeCase
  def new
    @word = Word.new()
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      flash[:notice] = "Word created successfully."
      redirect_to @word
    else
      render :new
    end
  end

  def update
    @word = find_words
    @word.update_attributes(word_params)
    flash[:notice] = "Word updated successfully."
    redirect_to(word_path(@word))
  end

  def edit
    @word = find_words
  end

  def delete
    @word = find_words
  end

  def destroy
    @word.destroy
    flash[:notice] = "Word '#{@word.english_word}' destroyed successfully."
    redirect_to(words_path)
  end

  def index
    @words = Word.all
  end

  def show
    @word = find_words
  end

  private
  def find_words
    Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit(:part_of_speech, 
                                 :transliteration,
                                 :translation,
                                 :pronunciation,                              
                                 :image,
                                 :english_word
                                )
  end
end
