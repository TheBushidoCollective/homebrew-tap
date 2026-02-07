# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.2/han-darwin-arm64"
      sha256 "36babed04a56ae383ad91655d4ef395977700d63918df742f0565350a9ad734e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.2/han-darwin-x64"
      sha256 "d99b6fd25478b7b9f710a34fdec328303924faf01fc2539c56d6e9fcfe39f11e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.2/han-linux-arm64"
      sha256 "a3edc92ae0636a391aea0ed1f9c753db9f5d18bb895a5b4214897236d51e136a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.2/han-linux-x64"
      sha256 "fb979350da97d75e6b178e023f8d9bf79347b3c9e4a14c31eedd8ea879259756"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
