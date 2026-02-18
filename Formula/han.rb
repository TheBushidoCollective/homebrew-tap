# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.0/han-darwin-arm64"
      sha256 "83f42fd311c1c64da5d990964d93201290b6e84bee058212346a040a04e8a177"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.0/han-darwin-x64"
      sha256 "c46221ae1e480526b21b7e418c90123a8522dd69dc131d426f230bb126fce0b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.0/han-linux-arm64"
      sha256 "d6dd526eeece0f4cbd665f79f55ef891d694bf8fb96dc98b0a684e59530a148e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.0/han-linux-x64"
      sha256 "5aa35522cf889e6f3b6c03cee44b69a33ee48d7725a499cadbbd29d2632434f5"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
