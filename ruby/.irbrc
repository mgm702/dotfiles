require 'irb/completion'
require 'rubygems'
require 'looksee'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

class Object
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  # Print docs, ex: String.ri :downcase
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    puts `ri '#{method}'`
  end
end

module Kernel
  alias_method :orig_methods, :methods

  def methods(*args)
    if caller.first =~ /(irb)/
      self.ls(*args)
    else

def r
  reload!
end