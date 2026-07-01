# frozen_string_literal: true

name 'vcruntime'

run_list 'vcruntime::default'

cookbook 'vcruntime', path: '.'

named_run_list :default, 'vcruntime::default'
named_run_list :all,
               'vcruntime::vc6',
               'vcruntime::vc9',
               'vcruntime::vc10',
               'vcruntime::vc11',
               'vcruntime::vc12',
               'vcruntime::vc14'
named_run_list :vc6, 'vcruntime::vc6'
named_run_list :vc9, 'vcruntime::vc9'
named_run_list :vc10, 'vcruntime::vc10'
named_run_list :vc11, 'vcruntime::vc11'
named_run_list :vc12, 'vcruntime::vc12'
named_run_list :vc14, 'vcruntime::vc14'
