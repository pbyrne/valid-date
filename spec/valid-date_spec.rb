require File.join(File.dirname(__FILE__), "/spec_helper")

describe String do
  context "knowing whether it contains a valid date" do
    it "returns true when contains a valid date" do
      s = "2008-10-25"
      
      s.valid_date?.should be_true
    end
    
    it "returns false when contains an invalid date" do
      s = "0000-00-00"
      
      s.valid_date?.should_not be_true
    end
    
    it "returns nil when is empty" do
      s = ""
      
      s.valid_date?.should be_nil
    end
  end
end