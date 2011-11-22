# To change this template, choose Tools | Templates
# and open the template in the editor.

class UserCall
  attr_accessor :from, :to, :body
  def initialize(options =  nil)
    self.form = options[:from] if options
    self.to = options[:to] if options
    self.body = options[:body] if options
  end
end
