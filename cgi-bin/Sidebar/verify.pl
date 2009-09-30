my %parameter = (
                 path   => $m_hrSettings->{cgi}{bin} . '/templates',
                 style  => $m_sStyle,
                 title  => "&#160;Valid&#160;HTML&#160;",
                 server => $m_hrSettings->{cgi}{serverName},
                 id     => 'validwin',
                 class  => 'sidebar',
);
my $window = new HTML::Window(\%parameter);
$window->set_closeable(1);
$window->set_moveable(1);
$window->set_resizeable(0);
$window->set_collapse(1);
$m_sContent .= '<tr id="trwvalidwin"><td valign="top" class="sidebar">';
$m_sContent .= $window->windowHeader();
$m_sContent .=
qq|'<div align="center"><a target="_blank" href="http://validator.w3.org/check?uri=$m_hrSettings->{cgi}{serverName}"><img src="http://www.w3.org/Icons/valid-xhtml10-blue" alt="Valid HTML " height="31" width="88" border="0"/></a><br/><a target="_blank" href="http://jigsaw.w3.org/css-validator/validator?uri=$m_hrSettings->{cgi}{serverName}"><img src="http://www.w3.org/Icons/valid-css-blue.png" alt="Valid HTML Css2" height="31" width="88" border="0"/></a><br/>
<a href="http://sourceforge.net/donate/index.php?group_id=155379"><img src="http://images.sourceforge.net/images/project-support.jpg" width="88" height="32" border="0" alt="Support This Project" /> </a>
|;
$m_sContent .= $ENV{MOD_PERL} if $m_bMod_perl;
$m_sContent .= '</div>';
$m_sContent .= $window->windowFooter();
$m_sContent .= '<br/></td></tr>';
