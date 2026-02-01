# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.4.1/han-darwin-arm64"
      sha256 "0f30b3bcf9f5959f07e690633e7f7942ae05cc1d19443bfd3aad9bbc91f32cf2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.4.1/han-darwin-x64"
      sha256 "2fcdb42c545b481b20bfc695f9fea86c77bf1cab0b83c3cb791710cf50e3bced"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.4.1/han-linux-arm64"
      sha256 "95575414f20026407c91ff4675e858f5e8ece75cb253488076e954ac4351f238"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.4.1/han-linux-x64"
      sha256 "2e41c3bb3297bca147f47b851b3f1d129c727d9fe2da36aaea7d140b52c2f9d8"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
