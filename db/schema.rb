# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_21_215016) do

  create_table "sentences", force: :cascade do |t|
    t.text "english_sentence"
    t.text "transliteration_sentence"
    t.text "translation_sentence"
    t.string "pronunciation_sentence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "word_id"
    t.index ["word_id"], name: "index_sentences_on_word_id"
  end

  create_table "sentences_words", id: false, force: :cascade do |t|
    t.integer "word_id", null: false
    t.integer "sentence_id", null: false
  end

  create_table "words", force: :cascade do |t|
    t.string "part_of_speech"
    t.string "transliteration"
    t.string "translation"
    t.string "pronunciation"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "english_word"
  end

  add_foreign_key "sentences", "words"
end
