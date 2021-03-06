# This file was generated by GoReleaser. DO NOT EDIT.
class Gsh < Formula
  desc "A command line tool to use GSH"
  homepage "https://github.com/globocom/gsh"
  url "https://github.com/globocom/gsh/releases/download/v0.1.5/gsh-darwin-amd64.tar.gz"
  sha256 "41d61e1ab37f9454c5c9855ce05e9a84e6f1748e15d60c436be0074f13f03da6"
  version "0.1.5"
  depends_on "openssh"

  def install
    bin.install "gsh"
  end
end