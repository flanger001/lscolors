# frozen_string_literal: true

module LSColors
  class Generator
    def directory
      @directory ||= Color.new(f: "blue") 
    end

    def symbolic_link
      @symbolic_link ||= Color.new(f: "magenta") 
    end

    def socket
      @socket ||= Color.new(f: "green") 
    end

    def pipe
      @pipe ||= Color.new(f: "brown") 
    end

    def executable
      @executable ||= Color.new(f: "red") 
    end

    def block_special
      @block_special ||= Color.new(f: "blue", b: "cyan") 
    end

    def character_special
      @character_special ||= Color.new(f: "blue", b: "brown") 
    end

    def executable_setuid_on
      @executable_setuid_on ||= Color.new(f: "black", b: "red") 
    end

    def executable_setgid_on
      @executable_setgid_on ||= Color.new(f: "black", b: "cyan") 
    end

    def directory_writable_others_sticky_on
      @directory_writable_others_sticky_on ||= Color.new(f: "black", b: "green") 
    end

    def directory_writable_others_sticky_off
      @directory_writable_others_sticky_off ||= Color.new(f: "black", b: "brown") 
    end

    def to_s
      "#{directory}" \
      "#{symbolic_link}" \
      "#{socket}" \
      "#{pipe}" \
      "#{executable}" \
      "#{block_special}" \
      "#{character_special}" \
      "#{executable_setuid_on}" \
      "#{executable_setgid_on}" \
      "#{directory_writable_others_sticky_on}" \
      "#{directory_writable_others_sticky_off}" \
    end
    
    def export
      %Q{LSCOLORS="#{to_s}"}
    end
  end
end
