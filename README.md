# README

Hello friends, strangers, and (possibly) enemies!

This is a Rails app to connect citizens and their elected officials. By fax. Who doesn't love a fax?

Alternative Fax contains a database of current legislators pulled from [unitedstates.io](https://github.com/unitedstates/congress-legislators).

The faxing component will likely run over Phaxio, which is kind of expensive, so maybe I can hack Twilio to do it that way, I don't know. That's a problem for future me.

#Contributing
Sure, thanks! Please fork the repo and start a branch for the feature you'd like to build.
Here's what's next:

 1) Geolocation

    ~a) By IP address~

    b) By address or zip code via form


 ~2) Hit [the Sunlight Labs API](https://sunlightlabs.github.io/congress/legislators.html#legislatorslocate) to find the representatives and congress people for that location~

 3) Retrieve and display information

    ~a) Find most recent fax number~

    ~b) Display information for three representatives~

    c) Actually make it look like, you know, not shit

 4) Create a fax

 5) Send a fax

#Extensions
 1) WYSYWIG fax editor

 2) Query ProPublica API for more detailed information

 3) Display voting history and other things that might get people all riled up


I imagine this will be done before the end of the week and then we will be able to save the planet, and more importantly, become viral superstars.
