# todo should this require be in the gemspec, since we assume active support is already loaded when using the gem, per the gemspec?
require 'activesupport'

class String
  # 
  # Determines whether the string contains a valid date for use with the Rails String#to_date method.
  # 
  #   "2008-01-01".valid_date? #=> true
  #   "20080101".valid_date?   #=> true
  #   "0000-00-00".valid_date? #=> false
  #   "".valid_date?           #=> nil
  # 
  def valid_date?
    unless self == ''
      begin
        date = self.to_date
        result = true
      rescue Exception => e
        result = false
      end
    end
    
    result
  end
end