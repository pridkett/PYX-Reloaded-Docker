PYX-Reloaded-Docker
===================

Patrick Wagstrom &lt;patrick@wagstrom.net&gt;

May 2020

Overview
--------

The time is May 2020 and all social contact is mediated through Zoom, Teams,
WebEx, and Meet. It is a strang time to be alive. In this strange time, how do
you relax and chill with others? Zoom Happy Hours are a thing now, but that
requires people being able to carry a conversation and sometimes that's hard.
Sometimes it's better to have a game to play together. Fortunately, Cards
Against Humanity and other similar games work very well on the web.
PYX-Reloaded is one such project that allows you play a distributed game of
Cards Against Humanity.

This project makes it easy to run PYX-Reloaded in a docker container so you
don't need to worry about things like installing the right version of Java on
your host system.

Usage
-----

```bash
docker build . -t cards:latest
```

FAQ
---

Q: Why don't you just use something like [Pictures Against
Humanity](https://picturesagainsthumanity.com/) or
[Allbad.cards](https://allbad.cards/)?

A: Yes, you could use those, but sometimes you want a more complete control
experience. For example, when playing with co-workers, you may want to create a
custom deck without having to make it public by uploading it to
[CardCast](https://www.cardcastgame.com/browse). Or, you might have a outbound
corporate proxy that blocks things that are fun. Or, you might just not trust
those other services. Whatever the reason, sometimes you just want to run your
own setup.

<br>

Q: Eww. Does this really use Java?

A: Yeah, that's what I said. On top of it, PYX-Reloaded has been largely
abandoned since 2018. I found [a repo with a few little
patches](https://github.com/JakeStanger/PYX-Reloaded) and have forked that to
clean stuff up by removing a few of the really low quality pre-loaded decks.

License
-------

This `Dockerfile` is licensed under the terms of the MIT License.

[PYX-Reloaded](https://github.com/devgianlu/PYX-Reloaded) is licensed under the terms of the Apache 2.0 License.

[Cards Against Humanity cards are licened under terms of CC-BY-NC-SA 2.0 License](https://medium.com/made-with-creative-commons/card-against-humanity-8c0cc2c6c299).

