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
  
  context "knowing whether it contains a valid time" do
    it "returns true when contains a valid time" do
      s = "2008-10-25"
      t = "2008-10-25 12:35"
      u = "2008-10-25 12:35:40"
      
      s.valid_time?.should be_true
      t.valid_time?.should be_true
      u.valid_time?.should be_true
    end
    
    it "returns false when contains an invalid time" do
      s = "0000-00-00"
      t = "2008-10-25 36:99"
      
      s.valid_time?.should be_false
      t.valid_time?.should be_false
    end
    
    it "returns nil when is empty" do
      s = ""
      
      s.valid_time?.should be_nil
    end
  end
end