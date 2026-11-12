# frozen_string_literal: true

name 'vcruntime'
default_source :supermarket
run_list 'test::default'
cookbook 'vcruntime', path: '.'
cookbook 'test', path: 'test/cookbooks/test'
named_run_list :default, 'test::default'
named_run_list :remove, 'test::remove'
named_run_list :all, 'test::all'
named_run_list :vc6, 'test::vc6'
named_run_list :vc9, 'test::vc9'
named_run_list :vc10, 'test::vc10'
named_run_list :vc11, 'test::vc11'
named_run_list :vc12, 'test::vc12'
named_run_list :vc14, 'test::vc14'
