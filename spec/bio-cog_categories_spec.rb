require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BioCogCategories" do
  it "one letter to category" do
    Bio::COG::Category.one_letter_to_category('E').should eq('Amino acid transport and metabolism')
  end
end
