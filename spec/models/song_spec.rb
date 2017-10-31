require 'rails_helper'

describe Song do
  let(:song) { Song.new(title: "Freebird", artist: "Lynyrd Skynyrd") }

  describe "attributes" do
    it "has a title" do
      expect(song.title).to eq "Freebird"
    end

    it "has an artist" do
      expect(song.artist).to eq "Lynyrd Skynyrd"
    end
  end
end
