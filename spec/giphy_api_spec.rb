require 'spec_helper'

describe GiphyApi do
  it 'has a version number' do
    expect(GiphyApi::VERSION).not_to be nil
  end

  it 'client connection has the right stuff' do
    Faraday.should_receive(:new)
    GiphyApi::Client.new
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
