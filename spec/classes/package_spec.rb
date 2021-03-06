require 'spec_helper'

describe 'postfix' do
  context 'when including postfix::package' do
    describe 'with default values for all parameters' do
      it { is_expected.to contain_package('postfix') }
      it { is_expected.to contain_package('mailx') }
    end

    context 'without mailx management' do
      let(:params) { { mailx_manage: false } }

      it { is_expected.not_to contain_package('mailx') }
    end
  end
end
