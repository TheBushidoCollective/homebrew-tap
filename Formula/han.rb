# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.53.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.1/han-darwin-arm64"
      sha256 "d6799aee1b70edd8c0915ab2c1086dbfbbeab6fd7c8f06ca45df280b452e9fca"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.1/han-darwin-x64"
      sha256 "9abeb56216a03ed2519baf473c4c919785eb8aa10e158946b06c87aff2f714e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.1/han-linux-arm64"
      sha256 "b68455878308fd7f58d3fcf656651c6c2225527ea9317d09f9c589716b21478c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.1/han-linux-x64"
      sha256 "b39dc9cc5bc294bcc4f38b60eb58cb0e55233fde6415ea0c0efc50492b9a74df"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
