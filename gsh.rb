# This file was generated by GoReleaser. DO NOT EDIT.
class Gsh < Formula
  desc "A command line tool to use GSH"
  homepage "https://github.com/globocom/gsh"
  url "https://github.com/globocom/gsh.git"
      :tag      => "v0.1.2",
      :revision => "8b0545ec92113afdb8ad130aba913269acec9aab"
  
  depends_on "openssh"
  depends_on "go"
  depends_on "dep"

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/globocom/gsh").install buildpath.children
    cd "src/github.com/globocom/gsh" do
      system "dep", "ensure"
      system "go", "build", "-o", "gsh", "./cli/main.go"
      # prefix.install_metafiles
      bin.install "gsh"
    end
  end
end