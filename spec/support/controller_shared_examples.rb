shared_examples_for 'a page which requires login' do
  it { should_not be_success }
  its(:status) { should == 401 }
end
