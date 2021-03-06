require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Mutual Information" do
  
  before do
    @a = FeatureSelection::MutualInformation.new(data)
  end
  
  it "should return an hash" do
    @a.rank_features.should be_a(Hash)
  end
  
  it "should give this a score of 0.4904..." do
    @a.rank_features[:spam]['this'].to_s.should match(/0.4904/)
  end
    
end
