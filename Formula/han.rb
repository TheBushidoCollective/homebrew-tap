# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.56.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.0/han-darwin-arm64"
      sha256 "8ccaaa469337fa3bd4368b40e97ead7ff67ec52afd7aa98f95b821df226fd528"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.0/han-darwin-x64"
      sha256 "ba89de858d6541fc394a0edda338f06b30d01364c508b2e0eb7fcadfa09a4433"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.0/han-linux-arm64"
      sha256 "7e8be57f37c88f3ddad75ca0cee0640a726ca10653c613ae96d2052db561d4e0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.0/han-linux-x64"
      sha256 "ff385a85ec4b14ecbf167e343886b36fbede38d1833a3a8dfe38520f82d74824"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
