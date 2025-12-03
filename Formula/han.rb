# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.39.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.0/han-darwin-arm64"
      sha256 "a8258feee41e074c6cdecf4eed131831a344f9660e5d25ac27705f784a315c88"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.0/han-darwin-x64"
      sha256 "5b38c9a82a6864ee68059cd387cc057e933342b531267b2acbb1c9c3bff8f7cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.0/han-linux-arm64"
      sha256 "8b6dba41c43b2a9a014a9c85d1df05e4a1118488fc2dd629a5708391ffa05252"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.0/han-linux-x64"
      sha256 "71dc63e61c79b93d767dc515065657128154f55fb92a6139ba602909774ddec6"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
