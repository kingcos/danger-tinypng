# frozen_string_literal: false

require File.expand_path('spec_helper', __dir__)

module Danger
  describe Danger::DangerTinyPNG do
    it "should be a plugin" do
      expect(Danger::DangerTinyPNG.new(nil)).to be_a Danger::Plugin
    end

    describe "with Dangerfile" do
      before do
        @dangerfile = testing_dangerfile
        @tiny_png = @dangerfile.tiny_png

        # mock the PR data
        # you can then use this, eg. github.pr_author, later in the spec
        json = File.read(File.dirname(__FILE__) + '/support/fixtures/github_pr.json') # example json: `curl https://api.github.com/repos/danger/danger-plugin-template/pulls/18 > github_pr.json`
        allow(@tiny_png.github).to receive(:pr_json).and_return(json)
      end

      it "validate TinyPNG API key" do
        @tiny_png.api_key 'VyqfYht4H5xhZ8lTVwc4265GZy3GPRdF'

        expect(@dangerfile.status_report[:errors]).to eq([])
      end
    end
  end
end
