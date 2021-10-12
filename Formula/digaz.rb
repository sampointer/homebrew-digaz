# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Digaz < Formula
  desc "Look up region and other information for any Azure IP address"
  homepage "https://github.com/sampointer/digaz"
  version "0.3.5"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sampointer/digaz/releases/download/v0.3.5/digaz_0.3.5_Darwin_arm64.tar.gz"
      sha256 "d0b1e43ececc119e9c14d5699202af83611888dac3546fa770cdfc192edd7054"
    end
    if Hardware::CPU.intel?
      url "https://github.com/sampointer/digaz/releases/download/v0.3.5/digaz_0.3.5_Darwin_x86_64.tar.gz"
      sha256 "0197be868b12226f847ffd41774cdc6a5005955fba8dd473e98c55dfe1fed4f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sampointer/digaz/releases/download/v0.3.5/digaz_0.3.5_Linux_x86_64.tar.gz"
      sha256 "6daf818d08c3d29993e2f97bb035371a5a412f7eeaa2fc824ed6ce0e772a58b5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sampointer/digaz/releases/download/v0.3.5/digaz_0.3.5_Linux_arm64.tar.gz"
      sha256 "c694b5bfb63bbdbb9d26e0d870ec556fd03e71e103463d90f1ab9699bebaa083"
    end
  end

  def install
    bin.install "digaz"
  end
end
