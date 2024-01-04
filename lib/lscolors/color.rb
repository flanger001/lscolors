# frozen_string_literal: true

module LSColors
  class Color
    CODES = {
      "black" => "a",
      "red" => "b",
      "green" => "c",
      "brown" => "d",
      "blue" => "e",
      "magenta" => "f",
      "cyan" => "g",
      "light grey" => "h",
      "bold black" => "A", # , usually shows up as dark grey
      "bold red" => "B",
      "bold green" => "C",
      "bold brown" => "D", # , usually shows up as yellow
      "bold blue" => "E",
      "bold magenta" => "F",
      "bold cyan" => "G",
      "bold light grey" => "H", # looks like bright white
      "default" => "x"
    }
    
    def initialize(f: "default", b: "default")
      @f = CODES[f]
      @b = CODES[b]
    end
    
    def f=(value)
      @f = CODES.key?(value) ? CODES[value] : value
    end
    
    def b=(value)
      @b = CODES.key?(value) ? CODES[value] : value
    end
    
    def to_s
      "#{@f}#{@b}"
    end
  end
end