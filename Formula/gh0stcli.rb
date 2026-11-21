class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.16.1"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.1/gh0stcli_0.16.1_darwin_arm64.tar.gz"
      sha256 "c6f3d667a7fad91f0873c86b536bca24c4312c4e3280413021f8362e16fc51aa"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.1/gh0stcli_0.16.1_darwin_amd64.tar.gz"
      sha256 "e777b4a923d9af96ee2d372edfab883f93b1add8b2e47b424fa79a85bc0dcfa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.1/gh0stcli_0.16.1_linux_arm64.tar.gz"
      sha256 "7c9504af800cffdca0071d3fa46cca017a1d1314a04ff126e01acd72ed2a46ed"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.1/gh0stcli_0.16.1_linux_amd64.tar.gz"
      sha256 "c26631ef88d0ce84039c725ff49fdd36a511cd79b8eb1dc2b6d0d068d3c2e117"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
