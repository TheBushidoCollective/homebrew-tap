# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.0/han-darwin-arm64"
      sha256 "18fa10f5cf57d759229a74bb275dd6fb8519e76e002fdb659d40745b1219e2aa"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.0/han-darwin-x64"
      sha256 "3251af642bafcf730a0353c32ba9a14b26636e7ebd8fc67f2dec87fc798df338"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.0/han-linux-arm64"
      sha256 "643150ee184cffb0f5954ef97d7f6e6b41ac58d9bf59093a14c59611524b1920"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.0/han-linux-x64"
      sha256 "e55fb54481a62510d128b506f336df1765aaca540c13e68038652ba4d1d1b220"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
