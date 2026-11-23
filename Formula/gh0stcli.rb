class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.16.4"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.4/gh0stcli_0.16.4_darwin_arm64.tar.gz"
      sha256 "cc1acf436ac970c7c7dca3e2f552dd4669aa8a4364a24fcc6c36d677fc35e5af"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.4/gh0stcli_0.16.4_darwin_amd64.tar.gz"
      sha256 "6e7855036577e371d598268ece31e1e92ba913aa6f213b42b9176d2a7fbf5cb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.4/gh0stcli_0.16.4_linux_arm64.tar.gz"
      sha256 "4d26184b01a44ecd9a2b340eee26d37373242342fa7931aad4184526a4c07de4"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.4/gh0stcli_0.16.4_linux_amd64.tar.gz"
      sha256 "26589ef216ebeeb337480fa498ff38c91bbe71e1c571f1ed21ceed03cc627fac"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
