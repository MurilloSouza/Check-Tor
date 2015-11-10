use LWP::Simple;

########################################################################
#      [+] NAME:         Murilo Souza
#      [+] Nick:         Arc4nj0
#      [+] EMAIL:        murilosouza.pkk@hotmail.com
#      [+] GITHUB:       https://github.com/MurilloSouza
#      [+] FACEBOOK:     https://fb.com/Arc4nj0
#      [+] THANKS:       José Magatoche - Brian Lucas - Vinicius Gouvea - Alternative - Maniac
#      [+] Twitter:      @k3nshi_
########################################################################

my $limpar;

my $sistema = $^O; 

if ( $sistema eq "MSWin32" ) {
  $limpar = ("cls");
} else {
  $limpar = ("clear");
}
system "$limpar";


print "\n\033[1;36m
d888888b  .d88b.  d8888b.  .o88b. db   db d88888b  .o88b. db   dD 
`~~88~~' .8P  Y8. 88  `8D d8P  Y8 88   88 88'     d8P  Y8 88 ,8P' 
   88    88    88 88oobY' 8P      88ooo88 88ooooo 8P      88,8P   
   88    88    88 88`8b   8b      88~~~88 88~~~~~ 8b      88`8b   
   88    `8b  d8' 88 `88. Y8b  d8 88   88 88.     Y8b  d8 88 `88. 
   YP     `Y88P'  88   YD  `Y88P' YP   YP Y88888P  `Y88P' YP   YD  
                  \033[1;37m / Murilo Souza (Arc4nj0) - [ Inploit Security  ]\n";

my $content = get("https://check.torproject.org/?lang=pt");
while($content =~ /<strong>(.*)<\/strong>/ ) {

	our $ipp = $1;
	if ($content =~ /configurado/){

		
	print "Tor:True\n";
    print "Ip:$ipp\n";
	exit;

	} elsif ($content =~/Infelizmente/){

		print "Tor: False\n";
		print "Ip: $ipp\n";
		exit;

	} else {

		print "Error!\n";
		exit;
	}

}  


    
