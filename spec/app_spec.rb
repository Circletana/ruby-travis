require File.expand_path '../spec_helper.rb', __FILE__

describe "Server Application" do
    it "should respond with Hello World with no name param" do
        get '/'
        expect(last_response).to be_ok
        expect(last_response.body).to eq("Hello World")
    end

    it "should respond with Hello Test with name param" do
        get '/', :name => "Test"
        expect(last_response).to be_ok
        expect(last_response.body).to eq("Hello Test")
    end

    it "should parse name from JSON on POST" do
        post '/name', '{"name": "Test", "age": "29"}'
        expect(last_response).to be_ok
        expect(last_response.body).to eq("Test")
    end

    it "should parse age from JSON on POST" do
        post '/age', '{"name": "Test", "age": "29"}'
        expect(last_response).to be_ok
        expect(last_response.body).to eq("29")
    end
  end
