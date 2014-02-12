require 'spec_helper'

describe String, "#word_count" do
  it "should have a method called word_count" do
    should respond_to :word_count
  end

  it "should return 1 when the string is one word long" do
    a_string = "apple"
    the_word_count = a_string.word_count
    expect(the_word_count).to eq 1
  end

  it "should return 0 when the string is empty" do
    a_string = ""
    the_word_count = a_string.word_count
    expect(the_word_count).to eq 0
  end

  it "should return 3 when the string is three words long" do
    a_string = "I am happy"
    the_word_count = a_string.word_count
    expect(the_word_count).to eq 3
  end

  it "should return 2 when the string is two words long" do
    a_string = "You're cool"
    the_word_count = a_string.word_count
    expect(the_word_count).to eq 2
  end

  it "should return 3 when the string is three words repeated" do
    a_string = "buffalo buffalo buffalo"
    the_word_count = a_string.word_count
    expect(the_word_count).to eq 3
  end
end

describe String, "#unique_words" do
  it "should have a method called unique_words" do
    should respond_to :unique_words
  end

  it "should return an array of unique words" do
    a_string = "apple the apple brave cars daring a the question"
    unique_words = a_string.unique_words
    expect(unique_words).to eq ['apple', 'the', 'brave', 'cars', 'daring', 'a', 'question']
  end

  it "should return an empty array with a string length of zero" do
    a_string = ""
    unique_words = a_string.unique_words
    expect(unique_words).to eq []
  end
end


describe String, "#unique_word_count" do
  it "should have a method called unique_word_count" do
    should respond_to :unique_word_count
  end

  it "should return 1 when the string is one word long" do
    a_string = "apple"
    the_unique_word_count = a_string.unique_word_count
    expect(the_unique_word_count).to eq 1
  end

  it "should return 0 when the string is empty" do
    a_string = ""
    the_unique_word_count = a_string.unique_word_count
    expect(the_unique_word_count).to eq 0
  end
end
