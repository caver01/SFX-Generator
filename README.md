
# SFX Generator

##  Goal

Based on a simple sound generator tutorial app, this Sound FX Generator is a quick way to trigger sound effects on iOS. It plays back some sounds collected from here and there as well as some of the "free to use" sounds that were part of Apple's iLife suite--namely, iMovie.


## How it works

The Sounds folder must contain the sound files. Currently, the player is looking for sounds with the .m4a extension. The sound filename must match the text used on each button. The trigger button title/label is passed to the player to find the sound file and play it.

There is currently only one instance of the player, so only a single sound can play at one time. If a new sound is triggered before the current one is finished, playback will switch to the new sound. Similarly, if the same sound is triggered, playback will restart, cutting off the existing playback to start anew.

## Future Enhancements

* It may be nice to incorporate a better way to load sounds. As it stands, they must be added programatically before the build.
* Adding polyphonic playback by spawning more instances of the player is a future possibility.
* With polyphonic playback, it may be possible to have the buttons start/stop rather than replace or spawn a new sound. There is the conflicting case for when you want the same sound to playback with itself. This would not be possible in the start/stop mode.
* User button color edits might be nice.
* Better button UI
