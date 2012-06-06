# encoding: utf-8
require 'email_validator'

describe EmailValidator, '.valid?' do

  it "should return true when given 1 valid email" do
    described_class.valid?('foo@exemplo.com').should be_true
  end
  it "should return true when given 1 valid email with extra spaces" do
    described_class.valid?(' foo@exemplo.com').should be_true
  end
  it "should return true when given 2 valid emails" do
    described_class.valid?('foo@exemplo.com, bar@exemplo2.com').should be_true
  end
  it "should return true when given 2 valid emails without spaces" do
    described_class.valid?('foo@exemplo.com,bar@exemplo2.com ').should be_true
  end
  it "should return true when given 2 valid emails with extrra spaces" do
    described_class.valid?(' foo@exemplo.com,   bar@exemplo2.com  ').should be_true
  end
  it "should return true when given 3 valid emails" do
    described_class.valid?('foo@exemplo.com, bar@exemplo2.com, lala.lulu@lalele.com.br').should be_true
  end

  it "should return false when given 1 invalid email" do
    described_class.valid?('barexemplo2.com').should be_false
    described_class.valid?('bar@exemplocom').should be_false
    described_class.valid?('@exemplo.com').should be_false
  end
  it "should return false when given 1 invalid email and 1 valid email" do
    described_class.valid?('foo@exemplo.com, barexemplo2.com').should be_false
    described_class.valid?('foo@exemplo.com, bar@exemplo2com').should be_false
    described_class.valid?('foo@exemplo.com, @exemplo2.com').should be_false
  end
  it "should return false if all emails are invalid" do
    described_class.valid?('foo@exemplocom @exemplo2.com').should be_false
    described_class.valid?(' foo @ bar ').should be_false
  end
  it "should return false when given nil or empty strings" do
    described_class.valid?('').should be_false
    described_class.valid?(nil).should be_false
    described_class.valid?('  ').should be_false
  end

end
