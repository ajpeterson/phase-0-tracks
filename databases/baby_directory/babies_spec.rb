require_relative 'babies'

describe Babies do
  let(:babies) { Babies.new() }

  it "has a writeable diaper change" do
    babies.last_diaper = "10:15am"
    expect(babies.last_diaper).to eq "10:15am"
  end

  it "has a writeable last feeding" do
    babies.last_bottle = "9:00am"
    expect(babies.last_bottle).to eq "9:00am"
  end

  it "adds a baby to the directory" do
    babies.add_baby(baby_tracker.db, "Andrew", "Peterson", 12, "None")
    expect(babies.add_baby).to eq ["Andrew", "Peterson", 12, "None"]
  end

end
