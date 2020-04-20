class WordsController < ApplicationController
  def new
    @word = Word.new({:english_word => 'test'})
    @word_count = Word.count + 1
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      flash[:notice] = "Word created successfully."
      redirect_to(word_path(@word))
    else
      @word_count = Word.count + 1
      render :new
    end
  end

  def update
    if @word.update_attributes(word_params)
      flash[:notice] = "Word updated successfully."
      redirect_to(word_path(@word))
    else
      @word_count = Word.count
      render :edit
    end
  end

  def edit
    @word_count = Word.count
  end

  def delete
    @word = Word.find(params[:id])
  end

  def destroy
    @word.destroy
    flash[:notice] = "Word '#{@word.name}' destroyed successfully."
    redirect_to(words_path)
  end

  def index
    @words = Word.sorted
  end

  def show
  end

  private
  def find_words
    @word = Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit(:english_word,
                                 :tense, 
                                 :transliteration,
                                 :translation,
                                 :pronunciation,
                                 :sentence_example_one,
                                 :sentence_example_one_pronunciation,
                                 :image)
  end
end
