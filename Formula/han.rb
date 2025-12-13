# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.61.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.6/han-darwin-arm64"
      sha256 "d9be881c1e522c6a061466c2e953bbae6d6f08ce8769bb6b72c34b101e0957f4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.6/han-darwin-x64"
      sha256 "7db8fc038aba08ccd2bf8fad2388765e6a4d078369af5e9ee781056c991b0da6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.6/han-linux-arm64"
      sha256 "67eaf0b9beafedc3514abf10641dc8750100c2810f0f4a7bd579eaa75fcfe991"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.6/han-linux-x64"
      sha256 "3cd94b1283b633e225880f2cf48ff5a4ec20f3dc76e1b9e54b9f0e4a5352d7a2"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
