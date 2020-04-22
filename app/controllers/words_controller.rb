class WordsController < ApplicationController
  def new
    @word = Word.new()
  end

  def create
    @word = Word.new(word_params)
    @word.pronunciation.attach(
      io: File.open('/app/assets/audio'),
      filename: "#{@word.english_word}.jpg",
      content_type: 'audio/x-m4a',
      identify: false
    )
    @word.image.attach(
      io: File.open('/app/assets/images'),
      filename: "#{@word.english_word}.jpg",
      content_type: 'image/jpeg',
      identify: false
    )
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
    @word = Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit(:english_word,
                                 :part_of_speech, 
                                 :transliteration,
                                 :translation,
                                 :pronunciation,                              
                                 :image)
  end
end
