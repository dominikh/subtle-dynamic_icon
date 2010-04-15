require "subtle/subtlext"
module Dominikh
  # @abstract Subclass and override {#render} to implement a dynamic
  # icon, e.g. a graph.
  # @see http://rdoc.subforge.org/subtle/classes/Subtlext/Icon.html
  class DynamicIcon < Subtlext::Icon
    attr_reader :color

    def initialize(width, height)
      super(width, height)
      @color               = nil
    end

    def color=(val)
      case val
      when Subtlext::Color
        @color = val
      when NilClass
        @color = nil
      else
        @color = Subtlext::Color.new(val.to_s)
      end
    end

    # return [String]
    def to_str
      s = super
      if color
        return color + s + Subtlext::Color.new(::COLORS[:fg_sublets])
      else
        return s
      end
    end
    alias_method :to_s, :to_str

    def +(other)
      self.to_s + other
    end

    # Draws the icon. Redefine this in subclasses to define custom
    # drawing routines.
    #
    # @return [void]
    def render
      clear
    end
  end
end
