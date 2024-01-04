# frozen_string_literal: true

require_relative "test_helper"

class LSColorsTest < Minitest::Test
  def test_generates_default_ls_colors
    colors = LSColors::Generator.new
    assert_equal("exfxcxdxbxegedabagacad", colors.to_s)
  end

  def test_changes_directory_ls_colors
    colors = LSColors::Generator.new
    colors.directory.f = "red"
    assert_equal("bxfxcxdxbxegedabagacad", colors.to_s)
  end
  
  def test_lscolors_export
    colors = LSColors::Generator.new
    assert_equal(%Q{LSCOLORS="exfxcxdxbxegedabagacad"}, colors.export)
  end
end