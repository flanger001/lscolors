# frozen_string_literal: true

require "bundler/setup"
Bundler.require
require_relative "../lib/lscolors"

colors = LSColors::Generator.new
colors.directory.f = "cyan"
puts colors.export