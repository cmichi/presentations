<!--

struktur:

* intro: hier in der uni haengen ja immer jede menge anzeigen wo web
  entwickler gesucht werden. ganz haeufig dann auf 400 euro basis und so.
  wenn ihr euch schonmal mit technisch nicht versierten leuten darueber
  unterhalten habt, dass sie etwas von euch entwickelt haben 

 * simples beispiel eines (naiven html forms)
   social network wo man pinnwand eintraege posten kann
 * first-day-on-the-internet pic, so prima! jetzt haben wir auch
   direkt ein funktionierendes soziales netzwerk. sicher ist das
   ganze auch. schliesslich muss der benutzer eingeloggt sein um requests
   machen zu koennen!
 * problematik: laesst sich ausnutzen. falls user eingeloggt
   und ich es schaffe ihm einen link unterzuschieben (bsp. katzen forum
   oder html mail)
* im ranking der owasp auf platz x in 2010, 2013 auf y.
* defintion csrf (satz einblenden, woerter highlighten)
* Sensitive Action Examples
* ideen wie mans besser machen koennte (uebersichtsfolie, nach und nach
  mehr icons, die "falschen verlockungen" durchstreichen)
 * nur post?
  * beispiel wie man post faken kann (html form)
 * referrer checking (erklaeren, das aus privacy gruenden
   problematisch wenn sich die anwendung drauf verlaesst.
   laesst sich ausserdem faken: luecken in flash oder xss)
 * hinfuehrung auf tokens: was kann man mit csrf? schreiben! aber nicht
   lesen. schaubild wo website a.com einen iframe auf b.com und einen 
   auf a.com/foo.
   schaubild, das aufgrund von cross-origin-policy der angreifer keine
    chance hat (er kann nur senden, nicht lesen) mit codebeispiel!
 * One-Time-Token?
  * das social network example erweitern. schaubild wie serverseitig ein
    token generiert wird und an die session angehaengt wird.
  * chuck norris bild das jetzt alles top ist
  * nicht ganz: fehler in der implementierung von token pattern zeigen
   * wenn token vorhersagbar (kryptografisch nicht sicher) ist alles kaputt
     (possible hard nut aufgabe?
   * wenn token auf dem weg mitgeschnitten werden kann (wlan, router, log)
    * https
   * wenn token replay attacken ermoeglicht (nicht immer wieder neu
     generiert wird)
     * im input hidden token feld auch noch den namen variieren!
   * wenn XSS moeglich.
 * Challenge-Response (Captcha)
 * XSS - der best friend. 
  * kurzer recap um was es geht.
    zeigen, dass ich z.b. mit einem xss auf der hauptseite des social
    networks dann content unter dieser domain einschleussen (und damit die
    cross-domain policy umgehen) koennte
  * jetzt auf einmal auch lese zugriff moeglich. token laesst sich
    auslesen!
 * Advanced CSRF
  * Blind -> Semi-Blind
    Blind: Ich sehe nicht was passiert, keine antwort, nix.
    Semi-Blind: Ich sehe wann eine Antwort da
  * Multi-Step, Semi-Blind
 * In the Wild?
  * Gmail
  * Browser Port Scanning
  * Sammy
  * Intranet Hacking/Router
  * Drucker
  * Force google searches (get something odd to show up in the history of
    someone, WikiLeaks? Beispiel mit dem Zugriff auf Pornsites, die
    verboten wurden)
 * Take-Away
  * forcing a user to perform a sensitive action
  * unique tokens are a defense
  * xss can aushebeln the unique token defense and thus enable csrf attacks
 * Struktur der Uebung



  multi-step, semi-blind csr
  ideas to prevent it
  * only accept post?
   * stops simple get based attacks
   * referrer checking
    * some users prevent referrer sending due to privacy
    * techniques to create http reqs without referrers exist
  * multi-step transactions
   * csrf can perform each step in order
   CSRF attacks using image tags are often made from Internet forums, where
   users are allowed to post images but not JavaScript.

   common mistakes when following owasp testing guide recommendation:
   * 
   According to the OWASP testing guide a CSRF token should not be
   contained within a GET request as the token itself might be logged in
   various places such as logs or because of the risk of shoulder surfing.
   *
   If you're generating the tokens in a secure random fashion, then an
   attacker cannot infer the next token from the previous ones. So there
   shouldn't be any realistic risk.


   -->


   missing:
   log-in detection
   http://blog.whitehatsec.com/i-know-what-websites-you-are-logged-in-to-login-detection-via-csrf/

   origin header

