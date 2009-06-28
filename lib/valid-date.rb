# todo should this require be in the gemspec, since we assume active support is already loaded when using the gem, per the gemspec?
require 'activesupport'

class String
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