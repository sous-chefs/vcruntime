# frozen_string_literal: true

vcruntime_install 'install current runtime'
vcruntime_install 'remove current runtime' do
  action :remove
end
