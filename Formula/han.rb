# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.2/han-darwin-arm64"
      sha256 "a0ef849c31072aa720bab2c2c4d488b9e4c5c05e5d5aae7012aaa5ade3409825"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.2/han-darwin-x64"
      sha256 "c2c03afd9cb9801d71915c6aaed82cfd4c982986e3142246b6ba73410ac7370c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.2/han-linux-arm64"
      sha256 "d8159c8e6fae8e83ab5b28439a6db00f179972552564165cca38690082919fe8"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.2/han-linux-x64"
      sha256 "72c5a6a444c335ed288dd3ae893a9a14e78f2f4554ca365c085221dff00e8b81"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
