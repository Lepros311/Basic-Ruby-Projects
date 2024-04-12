require './caesar_cipher'

describe "#caesar_cipher" do
  it "returns a string with characters shifted n positions" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "handles wrapping around the alphabet" do
    expect(caesar_cipher('xyz', 2)).to eql('zab')
  end

  it "maintains capitalization" do
    expect(caesar_cipher('AbC', 1)).to eql('BcD')
  end

  it "handles non-alphabetic characters" do
    expect(caesar_cipher('Hello, World!', 5)).to eql('Mjqqt, Btwqi!')
  end

  it "handles large shift numbers" do
    expect(caesar_cipher('abc', 26)).to eql('abc')
  end

  it "handles negative shift numbers" do
    expect(caesar_cipher('abc', -1)).to eql('zab')
  end
end
