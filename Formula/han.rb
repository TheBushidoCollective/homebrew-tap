# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.2/han-darwin-arm64"
      sha256 "a784e831b5579aeaaedcbc8110fa52588248b60cd23c17e5d9a0a7a10ce7305a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.2/han-darwin-x64"
      sha256 "b5d6f4d4ca20f4fe24586d34645415127bc13bccc2373a654b0b62714fbe7c7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.2/han-linux-arm64"
      sha256 "004dc15a033545e7ddaabc81d14a985251b7b5664a911470a78ec7fa132ddc50"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.2/han-linux-x64"
      sha256 "88f4225006387243316df0224b6f957473fbc782b8843dffd31d75552f084285"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
