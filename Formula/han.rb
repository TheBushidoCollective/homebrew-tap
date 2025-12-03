# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.37.0/han-darwin-arm64"
      sha256 "a627f8765fe87a657c12d33c9bf08f6ca60991515cde56d16e113e0d5e808b47"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.37.0/han-darwin-x64"
      sha256 "4c0687f7f24d6cb816fba030644aa44dda75f520ec9c85b63aa0abdc450d151d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.37.0/han-linux-arm64"
      sha256 "3f33d7af48c5df5e9ea96e9b67d920286736a9b63b71cd2d1403f2d6082a3152"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.37.0/han-linux-x64"
      sha256 "256d15e1487db1a24a1b1679cdc163be54931b3511907062c29eac3597962b66"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
