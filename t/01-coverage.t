use Test::More;
eval 'use Test::Pod::Coverage 0.55';
plan skip_all => 'Test::Pod::Coverage 0.55 is required to run this test'
    if $@;
plan tests => 8;
pod_coverage_ok( "MySQL::Admin::GUI", "MySQL::Admin::GUI is covered" );
pod_coverage_ok( "MySQL::Admin",      "MySQL::Admin is covered" );
pod_coverage_ok( "DBI::Library",      "DBI::Library is covered" );
pod_coverage_ok( "HTML::Editor",      "HTML::Editor is covered" );
pod_coverage_ok( "Template::Quick",   "Template::Quick is covered" );
pod_coverage_ok( "HTML::TabWidget",   "HTML::TabWidget is covered" );
pod_coverage_ok( "HTML::Menu::Pages", "HTML::Menu::Pages is covered" );
pod_coverage_ok( "HTML::Window",      "HTML::Window is covered" );
