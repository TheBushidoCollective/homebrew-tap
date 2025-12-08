# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.55.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.0/han-darwin-arm64"
      sha256 "ccad30a19eb141a254ab27c4405fc22fc5c44ecb0fd4149619d93b4388ddc5b4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.0/han-darwin-x64"
      sha256 "c82c56d2c995073c2298aa01b104e44b84fab478e84cfbb0a5d34bfcddb4037c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.0/han-linux-arm64"
      sha256 "1b74164047805ea8666f0b7897600321b21f02342540efdf6bdfb0f8e0567306"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.0/han-linux-x64"
      sha256 "053a66cf24db449166359a95b4688f5fb5f2cb7c27ad3cf4afb0fce073119af5"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
